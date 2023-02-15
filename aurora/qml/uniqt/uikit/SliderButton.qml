import QtQuick 2.6
import QtQuick.Window 2.0
import Sailfish.Silica 1.0 as Q
import QtGraphicalEffects 1.0

MouseArea {
    id: root

    property alias layout: layoutControl
    property alias description: descriptionLabel.text
    property alias text: text.text
    property alias transition: transition
    property bool checked: false

    onClicked: {
        if (transition.running) { return }
        root.checked = !root.checked
    }

    states: [
        State {
            name: "unchecked"
            AnchorChanges { target: indicator; anchors.left: container.left }
            PropertyChanges { target: indicator; color: Q.Theme.lightPrimaryColor }
        },
        State {
            name: "checked"
            AnchorChanges { target: indicator; anchors.right: container.right }
            PropertyChanges { target: indicator; color: Q.Theme.highlightColor }
        }
    ]
    state: root.checked ? "checked" : "unchecked"

    transitions: Transition {
        id: transition
        AnchorAnimation { duration: 100 }
        ColorAnimation { duration: 100 }
    }

    implicitWidth: grid.width
    implicitHeight: grid.height

    Grid {
        id: grid
        columnSpacing: Q.Theme.paddingMedium
        padding: Q.Theme.paddingMedium

        columns: 2
        rows: descriptionLabel.visible ? 2 : 1
        verticalItemAlignment: Grid.AlignVCenter

        Rectangle {
            id: container
            width: Q.Theme.buttonWidthTiny
            height: width / 4
            radius: height / 2
            color: Q.Theme.lightSecondaryColor

            Rectangle {
                id: indicator
                anchors {
                    verticalCenter: parent.verticalCenter
                    leftMargin: 0
                    rightMargin: anchors.leftMargin
                }
                height: container.height * 2
                width: height
                radius: height / 2
                color: Q.Theme.lightPrimaryColor
            }

            DropShadow {
                anchors.fill: indicator
                radius: 8
                samples: 16
                color: "#80000000"
                source: indicator
            }
        }

        Text {
            id: text
            color: Q.Theme.primaryColor
            font.pixelSize: Q.Theme.fontSizeMedium
        }

        Item {
            width: container.width
            height: container.height
        }

        Text {
            id: descriptionLabel
            color: Q.Theme.secondaryColor
            font.pixelSize: Q.Theme.fontSizeTiny
            font.italic: true
            visible: descriptionLabel.text.length
        }
    }

    LayoutControl { id: layoutControl }
}

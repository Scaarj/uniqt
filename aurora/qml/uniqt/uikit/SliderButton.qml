import QtQuick 2.6
import QtQuick.Window 2.0
import Sailfish.Silica 1.0 as Q
import QtGraphicalEffects 1.0
import uniqt.styles 1.0

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
            PropertyChanges { target: container; color: Styles.colors.secondary }
            PropertyChanges { target: indicator; color: Qt.lighter(Styles.colors.primaryHighlight, 5) }
        },
        State {
            name: "checked"
            AnchorChanges { target: indicator; anchors.right: container.right }
            PropertyChanges { target: container; color: Styles.colors.secondaryHighlight }
            PropertyChanges { target: indicator; color: Styles.colors.primaryHighlight }
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
        columnSpacing: Styles.margins.middle
        padding: Styles.margins.middle

        columns: 2
        rows: descriptionLabel.visible ? 2 : 1
        verticalItemAlignment: Grid.AlignVCenter

        Rectangle {
            id: container
            width: Styles.iconSize.ldpi
            height: width / 4
            radius: height / 2
            color: Styles.colors.secondary

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
                color: Qt.lighter(Styles.colors.primaryHighlight, 5)
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
            color: Styles.colors.primary
            font: Styles.font.type.common
        }

        Item {
            width: container.width
            height: container.height
        }

        Text {
            id: descriptionLabel
            color: Styles.colors.primary
            font: Styles.font.type.description
            visible: descriptionLabel.text.length
        }
    }

    LayoutControl { id: layoutControl }
}

import QtQuick 2.6
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
            PropertyChanges { target: container; color: Styles.colors.background }
            PropertyChanges { target: indicator; color: Styles.colors.divider }
        },
        State {
            name: "checked"
            AnchorChanges { target: indicator; anchors.right: container.right }
            PropertyChanges { target: container; color: Styles.color(Styles.material.secondary, Styles.material.shade200) }
            PropertyChanges { target: indicator; color: Styles.colors.secondary }
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
        columnSpacing: Styles.px(12)
        rowSpacing: Styles.px(8)
        padding: Styles.px(8)

        columns: 2
        rows: descriptionLabel.visible ? 2 : 1
        verticalItemAlignment: Grid.AlignVCenter

        Rectangle {
            id: container
            width: Styles.px(40)
            height: Styles.px(14)
            radius: height / 2
            color: Styles.colors.secondary

            Rectangle {
                id: indicator
                anchors {
                    verticalCenter: parent.verticalCenter
                    leftMargin: 0
                    rightMargin: anchors.leftMargin
                }
                height: Styles.px(20)
                width: height
                radius: height / 2
                color: Styles.colors.secondary
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
            font: Styles.fonts.middle
            color: Styles.colors.primaryText
        }

        Item {
            width: container.width
            height: container.height
        }

        Text {
            id: descriptionLabel
            font: Qt.font({pixelSize: Styles.fonts.px12, italic: true})
            color: Styles.colors.secondaryText
            visible: descriptionLabel.text.length
        }
    }

    LayoutControl { id: layoutControl }
}

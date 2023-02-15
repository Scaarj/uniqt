import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1

import "." as Base

MouseArea {
    id: root

    property alias layout: layoutControl
    property alias text: textLabel.text
    property bool fillWidth: false
    property bool checked: false
    property real ratio: 1.0

    onClicked: {
        if (pressTimer.running) { return }

        root.checked = !root.checked
        ratio = 0.8
        pressTimer.restart()
    }

    Layout.fillWidth: fillWidth

    implicitHeight: row.height
    implicitWidth: row.width

    states: [
        State {
            name: "unchecked"
            PropertyChanges { target: checkBox; color: "transparent"; border.width: 4 }
            PropertyChanges { target: leftMark; visible: false }
            PropertyChanges { target: rightMark; visible: false }
        },
        State {
            name: "checked"
            PropertyChanges { target: checkBox; color: Q.Theme.highlightColor; border.width: 0 }
            PropertyChanges { target: leftMark; visible: true }
            PropertyChanges { target: rightMark; visible: true }
        }
    ]
    state: root.checked ? "checked" : "unchecked"

    Row {
        id: row
        anchors.centerIn: root
        topPadding: Q.Theme.paddingMedium
        bottomPadding: topPadding
        leftPadding: topPadding
        spacing: Q.Theme.paddingMedium

        Item {
            width: 40
            height: 40

            Rectangle {
                id: checkBox
                anchors.centerIn: parent
                width: parent.width * ratio
                height: parent.height * ratio

                color: "transparent"
                radius: width / 10
                border {
                    width: checkBox.width / 10
                    color: Q.Theme.secondaryColor
                }

                Behavior on width { PropertyAnimation { easing.type: Easing.Linear } }
                Behavior on height { PropertyAnimation { easing.type: Easing.Linear } }

                Rectangle {
                    id: leftMark
                    width: checkBox.width / 8
                    height: checkBox.width / 2.7
                    x: checkBox.width * 0.5
                    y: checkBox.height * 0.7
                    color: palette.overlayBackgroundColor
                    transform: Rotation { origin.x: 0; origin.y: 0; angle: 135 }
                }

                Rectangle {
                    id: rightMark
                    width: checkBox.width / 8
                    height: checkBox.width / 1.8
                    x: checkBox.width * 0.5
                    y: checkBox.height * 0.7
                    color: palette.overlayBackgroundColor
                    transform: Rotation { origin.x: 0; origin.y: 0; angle: -135 }
                }
            }
        }

        Base.Text {
            id: textLabel
        }
    }

    Timer {
        id: pressTimer
        interval: 50
        onTriggered: ratio = 1.0
    }

    LayoutControl { id: layoutControl }
}

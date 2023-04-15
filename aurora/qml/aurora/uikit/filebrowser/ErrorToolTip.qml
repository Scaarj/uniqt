import QtQuick 2.6
import Sailfish.Silica 1.0

Rectangle {
    id: root

    property alias text: label.text
    property int maxWidth: Screen.width - Theme.paddingLarge * 2

    function show(error)
    {
        text = error
        timer.restart()
    }

    opacity: timer.running ? 1.0 : 0
    color: Theme.secondaryHighlightColor
    height: label.height + Theme.paddingSmall
    width: label.width + Theme.paddingMedium
    radius: Theme.paddingSmall

    Label {
        id: label

        anchors.centerIn: parent
        horizontalAlignment: Qt.AlignHCenter
        color: Theme.primaryColor
        width: Math.min(labelFontMetrics.advanceWidth(text), maxWidth)
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere

        onTextChanged: {
            if (text.length) {
                timer.restart()
            }
        }
    }

    FontMetrics {
        id: labelFontMetrics
        font: label.font
    }

    Timer {
        id: timer
        interval: 3000
    }

    Behavior on opacity { NumberAnimation { duration: 300 } }
}

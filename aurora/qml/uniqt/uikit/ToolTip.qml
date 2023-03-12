import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import uniqt.styles 1.0

Pane {
    id: root

    property alias radius: backgroundRect.radius
    property alias contentLabel: contentLabel
    property alias contentWidth: contentLabel.width
    property alias contentHeight: contentLabel.height
    property int margins: Styles.margins.small
    property int maxWidth: contentLabel.implicitWidth
    property string text

    padding: margins

    contentItem: Q.Label {
        id: contentLabel
        horizontalAlignment: Qt.AlignHCenter
        verticalAlignment: Qt.AlignVCenter
        padding: 0
        leftPadding: backgroundRect.radius
        rightPadding: leftPadding

        width: Math.min(fontMetrics.advanceWidth(text) + leftPadding + rightPadding, maxWidth)
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        font: Styles.font.type.toolTip
        text: root.text
    }

    background: Rectangle {
        id: backgroundRect
        anchors.fill: parent
        radius: Styles.margins.small
        color: Styles.colors.background
        border.color: Qt.darker(Styles.colors.background, 2)
    }

    FontMetrics {
        id: fontMetrics
        font: contentLabel.font
    }
}

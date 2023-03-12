import QtQuick.Controls 2.15 as Q
import uniqt.styles 1.0

Q.Label {
    id: label

    property alias layout: layoutControl
    property color backgroundColor: Styles.colors.secondaryHighlight

    padding: font.pixelSize / 2
    color: Styles.colors.background

    background: Rectangle {
        color: backgroundColor
        radius: label.padding / 2
    }

    LayoutControl { id: layoutControl }
}

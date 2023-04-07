import QtQuick 2.15
import uniqt.styles 1.0

Rectangle {
    property alias layout: layoutControl

    layout.fillWidth: true
    height: 1
    color: Styles.colors.divider

    LayoutControl { id: layoutControl }
}

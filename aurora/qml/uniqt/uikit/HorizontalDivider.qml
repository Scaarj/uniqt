import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1
import uniqt.styles 1.0

Rectangle {
    property alias layout: layoutControl

    Component.onCompleted: Layout.fillWidth = true
    height: Styles.px(2)
    color: Styles.colors.divider

    LayoutControl { id: layoutControl }
}


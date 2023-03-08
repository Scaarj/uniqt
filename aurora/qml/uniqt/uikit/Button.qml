import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1

Q.Button {
    property alias layout: layoutControl

    property color bgColor: palette.primaryColor
    color: Qt.darker(bgColor, 10)
    highlightBackgroundColor: Qt.darker(bgColor, 20)
    highlightColor: Qt.darker(bgColor, 10)

    LayoutControl { id: layoutControl }
}

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import uniqt.styles 1.0

Window {
    property alias layout: layoutControl
    property alias initialPage: stackView.initialItem
    property var coverPage
    property int allowedOrientations
    property int defaultAllowedOrientations: 0
    property var theme: []

    height: Styles.android ? Screen.height : Styles.px(640)
    width: Styles.android ? Screen.width : Styles.px(360)
    visible: true

    function push(item)
    {
        stackView.push(item)
    }

    function pop()
    {
        stackView.pop()
    }

    StackView {
        id: stackView

        anchors.fill: parent
    }

    LayoutControl { id: layoutControl }
}

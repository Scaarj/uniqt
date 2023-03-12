import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import uniqt.styles 1.0

Q.ApplicationWindow {
    id: root

    property alias layout: layoutControl
    property alias coverPage: root.cover
    property bool noAnimation: true

    height: Styles.screenHeight
    width: Styles.screenWidth

    function push(item)
    {
        pageStack.push(item)
        if (noAnimation) {
            pageStack.completeAnimation()
        }
    }

    function pop()
    {
        pageStack.pop()
        if (noAnimation) {
            pageStack.completeAnimation()
        }
    }

    LayoutControl { id: layoutControl }
}

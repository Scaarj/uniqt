import QtQuick 2.6
import Sailfish.Silica 1.0 as Q

Q.ApplicationWindow {
    id: root
    property alias layout: layoutControl

    property alias coverPage: root.cover

    function push(item)
    {
        pageStack.push(item)
    }

    function pop()
    {
        pageStack.pop()
    }

    LayoutControl { id: layoutControl }
}

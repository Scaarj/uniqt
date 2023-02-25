import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    id: root

    property bool componentCompleted: false
    property int startIndex: 0
    property var background
    property var borderWidth
    property var borderColor
    property var color
    property var childHeight
    property var childWidth
    property var radius

    function apply() {
        if (background) {
            setChildsBackground()
        }

        if (borderWidth) {
            setChildsBorderWidth()
        }

        if (borderColor) {
            setChildsBorderColor()
        }

        if (color) {
            setChildsColor()
        }

        if (childHeight) {
            setChildsHeight()
        }

        if (childWidth) {
            setChildsWidth()
        }

        if (radius) {
            setChildsRadius()
        }

        componentCompleted = true
    }

    function setChildsBackground() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].background !== undefined) {
                childs[i].background = root.background
            }
        }
    }

    function setChildsBorderWidth() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].border !== undefined) {
                childs[i].border.width = root.borderWidth
            }
        }
    }

    function setChildsBorderColor() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].border !== undefined) {
                childs[i].border.color = root.borderColor
            }
        }
    }

    function setChildsColor() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].color !== undefined) {
                childs[i].color = root.color
            }
        }
    }

    function setChildsHeight() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].height !== undefined) {
                childs[i].height = root.childHeight
            }
        }
    }

    function setChildsWidth() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].width !== undefined) {
                childs[i].width = root.childWidth
            }
        }
    }

    function setChildsRadius() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].radius !== undefined) {
                childs[i].radius = root.radius
            }
        }
    }

    onBackgroundChanged: {
        if (componentCompleted) {
            setChildsBackground()
        }
    }

    onBorderColorChanged: {
        if (componentCompleted) {
            setChildsBorderColor()
        }
    }

    onBorderWidthChanged: {
        if (componentCompleted) {
            setChildsBorderWidth()
        }
    }

    onColorChanged: {
        if (componentCompleted) {
            setChildsColor()
        }
    }

    onChildHeightChanged: {
        if (componentCompleted) {
            setChildsHeight()
        }
    }

    onChildWidthChanged : {
        if (componentCompleted) {
            setChildsWidth()
        }
    }

    onRadiusChanged: {
        if (componentCompleted) {
            setChildsRadius()
        }
    }
}

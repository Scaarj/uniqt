import QtQuick 2.6
import QtQuick.Layouts 1.1

Item {
    id: root

    property int startIndex: 0
    property bool componentCompleted: false
    property var background
    property var borderWidth
    property var borderColor
    property var color
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

    onRadiusChanged: {
        if (componentCompleted) {
            setChildsRadius()
        }
    }
}

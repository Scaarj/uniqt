import QtQuick 2.6
import QtQuick.Layouts 1.1

Item {
    id: root

    property bool componentCompleted: false
    property bool fillWidth: false
    property bool fillHeight: false

    function apply() {
        if (fillWidth) {
            childFillWidth()
        }
        if (fillHeight) {
            childFillHeight()
        }

        componentCompleted = true
    }

    function childFillWidth() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            childs[i].layout.fillWidth = fillWidth
        }
    }

    function childFillHeight() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            childs[i].layout.fillHeight = fillHeight
        }
    }

    onFillWidthChanged: {
        if (componentCompleted) {
            childFillWidth()
        }
    }

    onFillHeightChanged: {
        if (componentCompleted) {
            childFillHeight()
        }
    }
}

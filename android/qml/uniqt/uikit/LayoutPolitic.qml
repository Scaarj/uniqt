import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    id: root

    property int alignment: Qt.AlignCenter
    property bool componentCompleted: false
    property bool fillWidth: false
    property bool fillHeight: false

    function apply() {
        setChildsAlighment()

        if (fillWidth) {
            setChildsFillWidth()
        }
        if (fillHeight) {
            setChildsFillHeight()
        }

        componentCompleted = true
    }

    function setChildsAlighment() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            if(childs[i].layout === undefined) { continue }
            childs[i].layout.alignment = alignment
        }
    }

    function setChildsFillWidth() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            if(childs[i].layout === undefined) { continue }
            childs[i].layout.fillWidth = fillWidth
        }
    }

    function setChildsFillHeight() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            if(childs[i].layout === undefined) { continue }
            childs[i].layout.fillHeight = fillHeight
        }
    }

    onAlignmentChanged: {
        if (componentCompleted) {
            setChildsAlighment()
        }
    }

    onFillWidthChanged: {
        if (componentCompleted) {
            setChildsFillWidth()
        }
    }

    onFillHeightChanged: {
        if (componentCompleted) {
            setChildsFillHeight()
        }
    }
}

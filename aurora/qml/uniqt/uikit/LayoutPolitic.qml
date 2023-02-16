import QtQuick 2.6
import QtQuick.Layouts 1.1

Item {
    id: root

    property int alignment: Qt.AlignCenter
    property bool componentCompleted: false
    property bool fillWidth: false
    property bool fillHeight: false
    property int preferredHeight: -1
    property int preferredWidth: -1

    function apply() {
        if (fillWidth) {
            childFillWidth()
        }
        if (fillHeight) {
            childFillHeight()
        }
        if (preferredHeight !== -1) {
            childPreferedHeight()
        }
        if (preferredWidth !== -1) {
            childPreferedWidth()
        }

        componentCompleted = true
    }

    function setChildsAlighment() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            childs[i].layout.alignment = alignment
        }
    }

    function childFillHeight() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            childs[i].layout.fillHeight = fillHeight
        }
    }

    function childFillWidth() {
        var childs = root.parent.children

        if (childs.length <= 2) { return }

        for(var i = 2; i < childs.length; ++i) {
            childs[i].layout.fillWidth = fillWidth
        }
    }

    function childPreferedHeight() {
        var childs = root.parent.children

        if (childs.length <= 2 || preferredHeight === -1) { return }

        for(var i = 2; i < childs.length; ++i) {
            childs[i].layout.preferredHeight = preferredHeight
        }
    }

    function childPreferedWidth() {
        var childs = root.parent.children

        if (childs.length <= 2 || preferredWidth === -1) { return }

        for(var i = 2; i < childs.length; ++i) {
            childs[i].layout.preferredWidth = preferredWidth
        }
    }

    onAlignmentChanged: {
        if (componentCompleted) {
            setChildsAlighment()
        }
    }

    onFillHeightChanged: {
        if (componentCompleted) {
            childFillHeight()
        }
    }

    onFillWidthChanged: {
        if (componentCompleted) {
            childFillWidth()
        }
    }

    onPreferredHeightChanged: {
        if (componentCompleted) {
            childPreferedHeight()
        }
    }

    onPreferredWidthChanged: {
        if (componentCompleted) {
            childPreferedWidth()
        }
    }
}

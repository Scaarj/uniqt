import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    id: root

    property bool componentCompleted: false
    property bool fillWidth: false
    property bool fillHeight: false
    property int startIndex: 0
    property int alignment: Qt.AlignCenter
    property int preferredHeight: -1
    property int preferredWidth: -1

    function apply() {
        if (fillWidth) {
            setChildsFillWidth()
        }
        if (fillHeight) {
            setChildsFillHeight()
        }
        if (preferredHeight !== -1) {
            setChildsPreferedHeight()
        }
        if (preferredWidth !== -1) {
            setChildsPreferedWidth()
        }

        componentCompleted = true
    }

    function setChildsAlighment() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].layout !== undefined) {
                childs[i].layout.alignment = alignment
            }
        }
    }

    function setChildsFillHeight() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].layout !== undefined) {
                childs[i].layout.fillHeight = fillHeight
            }
        }
    }

    function setChildsFillWidth() {
        var childs = root.parent.children

        if (childs.length <= startIndex) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].layout !== undefined) {
                childs[i].layout.fillWidth = fillWidth

            }
        }
    }

    function setChildsPreferedHeight() {
        var childs = root.parent.children

        if (childs.length <= startIndex || preferredHeight === -1) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].layout !== undefined) {
                childs[i].layout.preferredHeight = preferredHeight
            }
        }
    }

    function setChildsPreferedWidth() {
        var childs = root.parent.children

        if (childs.length <= startIndex || preferredWidth === -1) { return }

        for(var i = startIndex; i < childs.length; ++i) {
            if (childs[i].layout !== undefined) {
                childs[i].layout.preferredWidth = preferredWidth
            }
        }
    }

    onAlignmentChanged: {
        if (componentCompleted) {
            setChildsAlighment()
        }
    }

    onFillHeightChanged: {
        if (componentCompleted) {
            setChildsFillHeight()
        }
    }

    onFillWidthChanged: {
        if (componentCompleted) {
            setChildsFillWidth()
        }
    }

    onPreferredHeightChanged: {
        if (componentCompleted) {
            setChildsPreferedHeight()
        }
    }

    onPreferredWidthChanged: {
        if (componentCompleted) {
            setChildsPreferedWidth()
        }
    }
}

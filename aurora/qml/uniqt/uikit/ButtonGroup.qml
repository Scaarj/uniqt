import QtQuick 2.6

Item {
    property var buttons: []
    property bool exclusive: true
    property int checkState: Qt.Unchecked

    function getUnexclusiveCheckState()
    {
        var count = 0
        for (var i = 0; i < buttons.length; ++i) {
            if(buttons[i].checked === true) { count++ }
            if (count > 1) { return Qt.PartiallyChecked }
        }

        return count === 0 ? Qt.Unchecked : (count > 1 ? Qt.PartiallyChecked : Qt.Checked)
    }

    function append(item)
    {
        var index = buttons.length
        buttons.push(item)
        return index
    }

    function itemIndex(item)
    {
        for (var i = 0; i < buttons.length; ++i) {
            if (buttons[i] === item) { return i }
        }

        return -1
    }

    function checked(item, flag)
    {
        if (exclusive) {
            checkState = Qt.Checked

            if (flag === false) { return }

            for (var i = 0; i < buttons.length; ++i) {
                var curItem = buttons[i]
                curItem.checked = curItem === item
            }
        } else {
            item.checked = flag
            checkState = getUnexclusiveCheckState()
        }
    }

    onExclusiveChanged:
    {
        if (exclusive) {
            checkState = Qt.Checked

            for (var i = 0; i < buttons.length; ++i) {
                buttons[i].checked = i === 0
            }
        } else {
            checkState = getUnexclusiveCheckState()
        }
    }

    Component.onCompleted: {
        if (!exclusive) { return }

        var lastCheked = -1
        for (var i = 0; i < buttons.length; ++i) {
            if (buttons[i].checked) {
                if(lastCheked !== -1) {
                    buttons[lastCheked].checked = false
                }
                lastCheked = i
            }
        }
    }
}

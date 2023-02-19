import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1

Q.ComboBox {
    id: root

    property alias layout: layoutControl
    property alias model: repeater.model

    signal accepted()
    signal activated(var index)

    onCurrentIndexChanged: activated(currentIndex)

    LayoutControl { id: layoutControl }

    menu: Q.ContextMenu {
        id: contextMenu

        Repeater {
            id: repeater
            Q.MenuItem {
                text: model.modelData
            }
        }
    }
}

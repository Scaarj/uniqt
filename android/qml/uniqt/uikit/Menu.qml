import QtQuick 2.15
import QtQuick.Controls 2.15 as Q

Q.Menu {
    id: root

    property alias layout: layoutControl

    function toggle()
    {
        if (root.opened) {
            root.close()
        } else {
            root.open()
        }
    }

    LayoutControl { id: layoutControl }
}

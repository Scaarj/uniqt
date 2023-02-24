import QtQuick 2.15
import QtQuick.Layouts 1.15 as Q

Q.RowLayout {
    property alias layout: layoutControl
    property alias modifier: modifierControl
    property alias politic: layoutPolitic

    LayoutControl { id: layoutControl }

    ModifierControl { id: modifierControl }

    LayoutPolitic { id: layoutPolitic }

    Component.onCompleted: {
        modifier.apply()
        politic.apply()
    }
}

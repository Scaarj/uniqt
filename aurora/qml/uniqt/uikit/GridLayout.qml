import QtQuick 2.6
import QtQuick.Layouts 1.1 as Q

Q.GridLayout {
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

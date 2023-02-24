import QtQuick 2.15
import QtQuick.Layouts 1.5 as Q

Q.ColumnLayout {
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

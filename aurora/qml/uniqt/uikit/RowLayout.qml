import QtQuick 2.6
import QtQuick.Layouts 1.1 as Q
import uniqt.styles 1.0

Q.RowLayout {
    property alias layout: layoutControl
    property alias modifier: modifierControl
    property alias politic: layoutPolitic

    spacing: Styles.margins.small

    Component.onCompleted: {
        modifier.apply()
        politic.apply()
    }

    LayoutControl { id: layoutControl }

    ModifierControl { id: modifierControl }

    LayoutPolitic { id: layoutPolitic }
}

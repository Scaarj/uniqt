import QtQuick 2.15
import QtQuick.Layouts 1.5 as Q
import uniqt.styles 1.0

Q.GridLayout {
    property alias layout: layoutControl
    property alias modifier: modifierControl
    property alias politic: layoutPolitic

    rowSpacing: Styles.px(4)
    columnSpacing: Styles.px(4)

    Component.onCompleted: {
        modifier.apply()
        politic.apply()
    }

    LayoutControl { id: layoutControl }

    ModifierControl {
        id: modifierControl
        startIndex: 3
    }

    LayoutPolitic { id: layoutPolitic }
}

import QtQuick 2.6
import QtQuick.Layouts 1.1 as Q
import uniqt.styles 1.0

Q.RowLayout {
    readonly property int baseChildCount: 3
    property alias layout: layoutControl
    property alias modifier: modifierControl
    property alias politic: layoutPolitic

    spacing: Styles.px(4)

    Component.onCompleted: {
        modifier.apply()
        politic.apply()
    }

    LayoutControl { id: layoutControl }

    ModifierControl {
        id: modifierControl
        startIndex: baseChildCount
    }

    LayoutPolitic {
        id: layoutPolitic
        startIndex: baseChildCount
    }
}

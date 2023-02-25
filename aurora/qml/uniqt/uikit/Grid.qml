import QtQuick 2.6 as Q
import uniqt.styles 1.0

Q.Grid {
    readonly property int baseChildCount: 2
    property alias layout: layoutControl
    property alias modifier: modifierControl

    spacing: 0

    Q.Component.onCompleted: modifier.apply()

    LayoutControl { id: layoutControl }

    ModifierControl {
        id: modifierControl
        startIndex: baseChildCount
    }
}

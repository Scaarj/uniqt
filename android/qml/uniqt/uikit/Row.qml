import QtQuick 2.15 as Q

Q.Row {
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

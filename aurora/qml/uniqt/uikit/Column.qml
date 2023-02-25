import QtQuick 2.6 as Q
import uniqt.styles 1.0

Q.Column {
    readonly property int baseChildCount: 2
    property alias layout: layoutControl
    property alias modifier: modifierControl

    spacing: 0

    LayoutControl { id: layoutControl }

    ModifierControl {
        id: modifierControl
        startIndex: baseChildCount
    }
}

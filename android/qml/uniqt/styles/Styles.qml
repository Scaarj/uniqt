pragma Singleton

import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Controls.Material 2.15

QtObject {
    id: root

    property var colorModel: [
        ["accentColor", Material.accentColor],
        ["backgroundColor", Material.backgroundColor],
        ["backgroundDimColor", Material.backgroundDimColor],
        ["buttonColor", Material.buttonColor],
        ["buttonDisabledColor", Material.buttonDisabledColor],
        ["dialogColor", Material.dialogColor],
        ["dividerColor", Material.dividerColor],
        ["dropShadowColor", Material.dropShadowColor],
        ["frameColor", Material.frameColor],
        ["highlightedButtonColor", Material.highlightedButtonColor],
        ["highlightedRippleColor", Material.highlightedRippleColor],
        ["hintTextColor", Material.hintTextColor],
        ["iconColor", Material.iconColor],
        ["iconDisabledColor", Material.iconDisabledColor],
        ["listHighlightColor", Material.listHighlightColor],
        ["primaryColor", Material.primaryColor],
        ["primaryHighlightedTextColor", Material.primaryHighlightedTextColor],
        ["primaryTextColor", Material.primaryTextColor],
        ["rippleColor", Material.rippleColor],
        ["scrollBarColor", Material.scrollBarColor],
        ["scrollBarHoveredColor", Material.scrollBarHoveredColor],
        ["scrollBarPressedColor", Material.scrollBarPressedColor],
        ["secondaryTextColor", Material.secondaryTextColor],
        ["spinBoxDisabledIconColor", Material.spinBoxDisabledIconColor]
    ]

    readonly property QtObject orientation: QtObject
    {
        property int portraitMask: 1
        property int landscapeMask: 2
        property int all: 3
    }

    readonly property QtObject margins: QtObject
    {
        property int xsmall: 8
        property int small: 16
        property int middle: 24
        property int large: 32
        property int xlarge: 64
        property int border: large
    }

    readonly property QtObject iconSize: QtObject
    {
        property int xsmall: 8
        property int small: 16
        property int smiddle: 24
        property int middle: 32
        property int large: 64
        property int xlarge: 128
        property int launcher: large
    }

    readonly property QtObject textSize: QtObject
    {
        property int xsmall: 8
        property int small: 16
        property int smiddle: 20
        property int middle: 24
        property int large: 32
        property int xlarge: 64
    }

    readonly property QtObject pageSize: QtObject
    {
        property int header: 48
        property int footer: 48
    }
}

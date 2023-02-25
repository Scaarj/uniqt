pragma Singleton

import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Controls.Material 2.15
import QtQuick.Window 2.15

QtObject {
    id: root

    readonly property bool android: Qt.platform.os === "android"
    readonly property real ratio: 1.0
    readonly property int screenHeight: Screen.height
    readonly property int screenWidth: Screen.width

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
        property int xsmall: small / 2 * ratio
        property int small: 4 * ratio
        property int middle: small * 2 * ratio
        property int large: small * 4 * ratio
        property int xlarge: small * 8 * ratio
        property int border: large
    }

    readonly property QtObject iconSize: QtObject
    {
        property int ldpi: 36 * ratio
        property int mdpi: 48 * ratio
        property int tvdpi: 64 * ratio
        property int hdpi: 72 * ratio
        property int xhdpi: 96 * ratio
        property int xxhdpi: 144 * ratio
        property int xxxhdpi: 192 * ratio
    }

    readonly property QtObject pageSize: QtObject
    {
        property int content: 64 * ratio
        property int header: content
        property int footer: content
    }

    readonly property QtObject control: QtObject
    {
        property int button: 54 * ratio
    }

    readonly property QtObject button: QtObject
    {
        readonly property QtObject width: QtObject
        {
            readonly property int tiny: android ? screenWidth / 8 : 48
            readonly property int xsmall: android ? screenWidth / 3 - 4 * margins.small : 96
            readonly property int small: android ? screenWidth / 2 - 3 * margins.small : 144
            readonly property int middle: android ? screenWidth - margins.middle : 192
            readonly property int large: android ? screenWidth - margins.small : 256
        }
    }

    readonly property QtObject font: QtObject
    {
        readonly property QtObject size: QtObject
        {
            property int xsmall: 12 * ratio
            property int small: 14 * ratio
            property int middle: 18 * ratio
            property int large: 22 * ratio
            property int xlarge: 24 * ratio
        }
    }
}

pragma Singleton

import QtQuick 2.6
import Sailfish.Silica 1.0

QtObject {
    id: root

    readonly property int screenHeight: Screen.height
    readonly property int screenWidth: Screen.width
    readonly property real iconRatio: 2.25

    property var colorModel: [
        ["Theme.primaryColor", Theme.primaryColor],
        ["Theme.secondaryColor", Theme.secondaryColor],
        ["Theme.highlightColor", Theme.highlightColor],
        ["Theme.secondaryHighlightColor", Theme.secondaryHighlightColor],
        ["Theme.highlightDimmerColor", Theme.highlightDimmerColor],
        ["Theme.lightPrimaryColor", Theme.lightPrimaryColor],
        ["Theme.lightSecondaryColor", Theme.lightSecondaryColor],
        ["Theme.darkPrimaryColor", Theme.darkPrimaryColor],
        ["Theme.darkSecondaryColor", Theme.darkSecondaryColor],
        ["Theme.highlightBackgroundColor", Theme.highlightBackgroundColor],
        ["Theme.overlayBackgroundColor", Theme.overlayBackgroundColor],
        ["Theme.errorColor", Theme.errorColor]
// TODO: try to use later
//        ["palete.primaryColor", palette.primaryColor],
//        ["palete.secondaryColor", palette.secondaryColor],
//        ["palete.secondaryHighlightColor", palette.secondaryHighlightColor],
//        ["palete.highlightColor", palette.highlightColor],
//        ["palete.highlightBackgroundColor", palette.highlightBackgroundColor],
//        ["palete.highlightDimmerColor", palette.highlightDimmerColor],
//        ["palete.overlayBackgroundColor", palette.overlayBackgroundColor],
//        ["palete.errorColor", palette.errorColor]
    ]

    readonly property QtObject orientation: QtObject
    {
        property int portraitMask: Orientation.Portrait
        property int landscapeMask: Orientation.Landscape
        property int all: Orientation.All
    }

    readonly property QtObject margins: QtObject
    {
        property int xsmall: small / 2
        property int small: Theme.paddingSmall
        property int middle: Theme.paddingMedium
        property int large: Theme.paddingLarge
        property int xlarge: large * 2
        property int border: Theme.horizontalPageMargin
    }

    readonly property QtObject iconSize: QtObject
    {
        property int ldpi: 36 * iconRatio
        property int mdpi: 48 * iconRatio
        property int tvdpi: 64 * iconRatio
        property int hdpi: 72 * iconRatio
        property int xhdpi: 96 * iconRatio
        property int xxhdpi: 144 * iconRatio
        property int xxxhdpi: 192 * iconRatio
    }

    readonly property QtObject pageSize: QtObject
    {
        property int header: Theme.fontSizeLarge + Theme.paddingLarge * 2
        property int footer: Theme.fontSizeLarge + Theme.paddingLarge * 2
    }

    readonly property QtObject fonts: QtObject
    {
        property font bold: Qt.font({ weight: Font.Bold })
        property font italic: Qt.font({ italic: true })
    }

    readonly property QtObject font: QtObject
    {
        readonly property QtObject type: QtObject
        {
            property font common: Qt.font({ pixelSize: font.size.middle })
            property font description: Qt.font({ pixelSize: font.size.small, italic: true })
            property font header: Qt.font({ pixelSize: font.size.large, weight: Font.Bold })
        }

        readonly property QtObject size: QtObject
        {
            property int xsmall: Theme.fontSizeExtraSmall
            property int small: Theme.fontSizeSmall
            property int middle: Theme.fontSizeMedium
            property int large: Theme.fontSizeLarge
            property int xlarge: Theme.fontSizeExtraLarge
        }
    }

    readonly property QtObject shadow: QtObject
    {
        readonly property QtObject size: QtObject
        {
            property int xsmall: small / 2
            property int small: 10
            property int middle: small * 2
            property int large: small * 4
            property int xlarge: small * 8
        }
    }
}

pragma Singleton

import QtQuick 2.6
import Sailfish.Silica 1.0

QtObject {
    id: root

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
        property int xsmall: Theme.iconSizeExtraSmall
        property int small: Theme.iconSizeSmall
        property int smiddle: Theme.iconSizeSmallPlus
        property int middle: Theme.iconSizeMedium
        property int large: Theme.iconSizeLarge
        property int xlarge: Theme.iconSizeExtraLarge
        property int launcher: Theme.horizontalPageMargin
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
        property int header: Theme.fontSizeLarge + Theme.paddingLarge * 2
        property int footer: Theme.fontSizeLarge + Theme.paddingLarge * 2
    }
}

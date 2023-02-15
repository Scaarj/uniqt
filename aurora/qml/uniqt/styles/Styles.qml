pragma Singleton

import QtQuick 2.6
import Sailfish.Silica 1.0

QtObject {
    id: root

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

    readonly property QtObject pageSize: QtObject
    {
        property int header: Theme.fontSizeLarge + Theme.paddingLarge * 2
        property int footer: Theme.fontSizeLarge + Theme.paddingLarge * 2
    }
}

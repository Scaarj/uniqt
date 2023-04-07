pragma Singleton

import QtQuick 2.6
import Sailfish.Silica 1.0

QtObject {
    id: root

    readonly property int screenHeight: Screen.height
    readonly property int screenWidth: Screen.width
    // TODO: calculate from Screen Width and pixel density
    property real pixelRatio: 2

    readonly property QtObject material: QtObject
    {
        readonly property int theme: Theme.colorScheme
        readonly property int lightTheme: Theme.DarkOnLight
        readonly property int darkTheme: Theme.LightOnDark

        readonly property int primary: 0
        readonly property int secondary: 1

        readonly property int shade50: 0
        readonly property int shade100: 1
        readonly property int shade200: 2
        readonly property int shade300: 3
        readonly property int shade400: 4
        readonly property int shade500: 5
        readonly property int shade600: 6
        readonly property int shade700: 7
        readonly property int shade800: 8
        readonly property int shade900: 9
        readonly property int shadeA100: 10
        readonly property int shadeA200: 11
        readonly property int shadeA400: 12
        readonly property int shadeA700: 13
    }

    property int ldpi: px(36)
    property int mdpi: px(48)
    property int tvdpi: px(64)
    property int hdpi: px(72)
    property int xhdpi: px(96)
    property int xxhdpi: px(144)
    property int xxxhdpi: px(192)

    readonly property var primaryScheme: [
        Qt.lighter(Theme.highlightColor, 1.8), // shade50
        Qt.lighter(Theme.highlightColor, 1.6), // shade100
        Qt.lighter(Theme.highlightColor, 1.4), // shade200
        Qt.lighter(Theme.highlightColor, 1.2), // shade300
        Theme.highlightColor, // shade400
        Qt.darker(Theme.highlightColor, 1.2), // shade500
        Qt.darker(Theme.highlightColor, 1.4), // shade600
        Qt.darker(Theme.highlightColor, 1.6), // shade700
        Qt.darker(Theme.highlightColor, 1.8), // shade800
        Qt.darker(Theme.highlightColor, 2), // shade900
        Qt.lighter(Theme.highlightColor, 1.3), // shadeA100
        Qt.lighter(Theme.highlightColor, 1.1), // shadeA200
        Qt.darker(Theme.highlightColor, 1.1), // shadeA400
        Qt.darker(Theme.highlightColor, 1.3)  // shadeA750
    ]

    readonly property var secondaryScheme: [
        Qt.lighter(Theme.secondaryHighlightColor, 1.8), // shade50
        Qt.lighter(Theme.secondaryHighlightColor, 1.6), // shade100
        Qt.lighter(Theme.secondaryHighlightColor, 1.4), // shade200
        Qt.lighter(Theme.secondaryHighlightColor, 1.2), // shade300
        Theme.secondaryHighlightColor, // shade400
        Qt.darker(Theme.secondaryHighlightColor, 1.2), // shade500
        Qt.darker(Theme.secondaryHighlightColor, 1.4), // shade600
        Qt.darker(Theme.secondaryHighlightColor, 1.6), // shade700
        Qt.darker(Theme.secondaryHighlightColor, 1.8), // shade800
        Qt.darker(Theme.secondaryHighlightColor, 2), // shade900
        Qt.lighter(Theme.secondaryHighlightColor, 1.3), // shadeA100
        Qt.lighter(Theme.secondaryHighlightColor, 1.1), // shadeA200
        Qt.darker(Theme.secondaryHighlightColor, 1.1), // shadeA400
        Qt.darker(Theme.secondaryHighlightColor, 1.3)  // shadeA750
    ]

    readonly property var colorScheme: [primaryScheme, secondaryScheme]

    property var colorModel: [
        ["darkPrimary", colors.darkPrimary],
        ["lightPrimary", colors.lightPrimary],
        ["primary", colors.primary],
        ["textIcons", colors.textIcons],
        ["secondary", colors.secondary],
        ["primaryText", colors.primaryText],
        ["secondaryText", colors.secondaryText],
        ["divider", colors.divider],
        ["background", colors.background],
        ["surface", colors.surface],
        ["error", colors.error],
        ["topPrimary", colors.topPrimary],
        ["topSecondary", colors.topSecondary],
        ["topBackground", colors.topBackground],
        ["topSurface", colors.topSurface],
        ["topError", colors.topError],
        ["primary shade50", color(material.primary, material.shade50)],
        ["primary Shade100", color(material.primary, material.shade100)],
        ["primary Shade200", color(material.primary, material.shade200)],
        ["primary Shade300", color(material.primary, material.shade300)],
        ["primary Shade400", color(material.primary, material.shade400)],
        ["primary Shade500", color(material.primary, material.shade500)],
        ["primary Shade600", color(material.primary, material.shade600)],
        ["primary Shade700", color(material.primary, material.shade700)],
        ["primary Shade800", color(material.primary, material.shade800)],
        ["primary Shade900", color(material.primary, material.shade900)],
        ["primary ShadeA100", color(material.primary, material.shadeA100)],
        ["primary ShadeA200", color(material.primary, material.shadeA200)],
        ["primary ShadeA400", color(material.primary, material.shadeA400)],
        ["primary ShadeA700", color(material.primary, material.shadeA700)],
        ["secondary shade50", color(material.secondary, material.shade50)],
        ["secondary Shade100", color(material.secondary, material.shade100)],
        ["secondary Shade200", color(material.secondary, material.shade200)],
        ["secondary Shade300", color(material.secondary, material.shade300)],
        ["secondary Shade400", color(material.secondary, material.shade400)],
        ["secondary Shade500", color(material.secondary, material.shade500)],
        ["secondary Shade600", color(material.secondary, material.shade600)],
        ["secondary Shade700", color(material.secondary, material.shade700)],
        ["secondary Shade800", color(material.secondary, material.shade800)],
        ["secondary Shade900", color(material.secondary, material.shade900)],
        ["secondary ShadeA100", color(material.secondary, material.shadeA100)],
        ["secondary ShadeA200", color(material.secondary, material.shadeA200)],
        ["secondary ShadeA400", color(material.secondary, material.shadeA400)],
        ["secondary ShadeA700", color(material.secondary, material.shadeA700)],
    ]

    readonly property QtObject colors: QtObject
    {
        property color darkPrimary: color(material.primary, material.shade900)
        property color lightPrimary: color(material.primary, material.shade100)
        property color primary: color(material.primary, material.shade400)
        property color textIcons: isDark() ? "#000000" : "#FFFFFF"
        property color secondary: color(material.secondary, material.shade400)
        property color primaryText: isDark() ? "#DEDEDE" : "#212121"
        property color secondaryText: isDark() ? "#8A8A8A" : "#757575"
        property color divider: isDark() ? "#424242" : "#BDBDBD"
        property color background: isDark() ? color(material.primary, material.shade900) : color(material.primary, material.shade50)
        property color surface: isDark() ? color(material.secondary, material.shade900) : color(material.secondary, material.shade50)
        property color error: Theme.errorColor
        property color topPrimary: isDark() ? "#000000" : "#FFFFFF"
        property color topSecondary: isDark() ? "#000000" : "#FFFFFF"
        property color topBackground: isDark() ? "#FFFFFF" : "#000000"
        property color topSurface: isDark() ? "#FFFFFF" : "#000000"
        property color topError: "#FFFFFF"
        property color shadow: "#80000000"
    }

    readonly property QtObject orientation: QtObject
    {
        property int portraitMask: Orientation.Portrait
        property int landscapeMask: Orientation.Landscape
        property int all: Orientation.All
    }

    readonly property QtObject fonts: QtObject
    {
        property string family: "Open Sans"

        property int px96: root.px(96)
        property int px64: root.px(64)
        property int px32: root.px(32)
        property int px28: root.px(28)
        property int px24: root.px(24)
        property int px20: root.px(20)
        property int px18: root.px(18)
        property int px16: root.px(16)
        property int px14: root.px(14)
        property int px12: root.px(12)
        property int px10: root.px(10)

        property font displayLarge:   Qt.font({ family: family, pixelSize: px96, weight: Font.Normal   }) // Display
        property font displayMiddle:  Qt.font({ family: family, pixelSize: px64, weight: Font.Normal   }) // Display
        property font displaySmall:   Qt.font({ family: family, pixelSize: px32, weight: Font.Normal   }) // Display
        property font headlineLarge:  Qt.font({ family: family, pixelSize: px28, weight: Font.DemiBold }) // Headline 1
        property font headlineMiddle: Qt.font({ family: family, pixelSize: px24, weight: Font.DemiBold }) // Headline 2
        property font headlineSmall:  Qt.font({ family: family, pixelSize: px20, weight: Font.DemiBold }) // Headline 3
        property font xlargeDemiBold: Qt.font({ family: family, pixelSize: px18, weight: Font.DemiBold }) // Body 1 / 1
        property font xlarge:         Qt.font({ family: family, pixelSize: px18, weight: Font.Normal   }) // Body 1 / 2
        property font xlargeHeighted: Qt.font({ family: family, pixelSize: px18, weight: Font.Normal   }) // Body 1 / 3
        property font largeDemiBold:  Qt.font({ family: family, pixelSize: px16, weight: Font.DemiBold }) // Body 2 / 1
        property font large:          Qt.font({ family: family, pixelSize: px16, weight: Font.Normal   }) // Body 2 / 2
        property font largeHeighted:  Qt.font({ family: family, pixelSize: px16, weight: Font.Normal   }) // Body 2 / 3
        property font middleDemiBold: Qt.font({ family: family, pixelSize: px14, weight: Font.DemiBold }) // Body 3 / 1
        property font middle:         Qt.font({ family: family, pixelSize: px14, weight: Font.Normal   }) // Body 3 / 2
        property font smallDemiBold:  Qt.font({ family: family, pixelSize: px12, weight: Font.DemiBold }) // Body 4 / 1
        property font small:          Qt.font({ family: family, pixelSize: px12, weight: Font.Normal   }) // Body 4 / 2
        property font caption:        Qt.font({ family: family, pixelSize: px10, weight: Font.DemiBold }) // Caption
    } // fonts

    function px(pixel) {
        return pixelRatio * pixel
    }

    function color(color, shade)
    {
        return colorScheme[color][shade]
    }

    function isDark()
    {
        return Theme.colorScheme === Theme.LightOnDark
    }
}

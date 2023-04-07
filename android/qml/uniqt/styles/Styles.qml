pragma Singleton

import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Controls.Material 2.15
import QtQuick.Window 2.15

QtObject {
    id: root

    readonly property bool android: Qt.platform.os === "android"
    readonly property real pixelRatio: 1.0
    readonly property int screenHeight: Screen.height
    readonly property int screenWidth: Screen.width

    property int ldpi: px(36)
    property int mdpi: px(48)
    property int tvdpi: px(64)
    property int hdpi: px(72)
    property int xhdpi: px(96)
    property int xxhdpi: px(144)
    property int xxxhdpi: px(192)

    readonly property QtObject material: QtObject
    {
        readonly property int theme: Material.Dark
        readonly property int themeLight: Material.Light
        readonly property int themeDark: Material.Dark

        readonly property int primary: Material.DeepPurple
        readonly property int secondary: Material.LightBlue

        readonly property int shade50: Material.Shade50
        readonly property int shade100: Material.Shade100
        readonly property int shade200: Material.Shade200
        readonly property int shade300: Material.Shade300
        readonly property int shade400: Material.Shade400
        readonly property int shade500: Material.Shade500
        readonly property int shade600: Material.Shade600
        readonly property int shade700: Material.Shade700
        readonly property int shade800: Material.Shade800
        readonly property int shade900: Material.Shade900
        readonly property int shadeA100: Material.ShadeA100
        readonly property int shadeA200: Material.ShadeA200
        readonly property int shadeA400: Material.ShadeA400
        readonly property int shadeA700: Material.ShadeA700
    }

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
        property color darkPrimary: "#512DA8"
        property color lightPrimary: "#D1C4E9"
        property color primary: color(material.primary, material.shade400)
        property color textIcons: "#FFFFFF"
        property color secondary: color(material.secondary, material.shade400)
        property color primaryText: "#212121"
        property color secondaryText: "#757575"
        property color divider: "#BDBDBD"
        property color background: color(material.primary, material.shade50)
        property color surface: color(material.secondary, material.shade50)
        property color error: "#B00020"
        property color topPrimary: "#FFFFFF"
        property color topSecondary: "#FFFFFF"
        property color topBackground: "#000000"
        property color topSurface: "#000000"
        property color topError: "#FFFFFF"
        property color shadow: "#80000000"
    }

    readonly property QtObject orientation: QtObject
    {
        property int portraitMask: 1
        property int landscapeMask: 2
        property int all: 3
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
        return Material.color(color, shade)
    }
}

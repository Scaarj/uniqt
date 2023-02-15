pragma Singleton

import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Controls.Material 2.15

QtObject {
    id: root

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
        property int xsmall: 16
        property int small: 32
        property int smiddle: 48
        property int middle: 64
        property int large: 128
        property int xlarge: 256
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

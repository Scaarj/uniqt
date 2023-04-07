import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.ComboBox {
    id: root

    property alias layout: layoutControl
    property color materialAccent: Styles.colors.primaryText
    property color materialBackground: Styles.colors.background
    property color materialForeground: Styles.colors.primaryText
    property color materialPrimary: Styles.colors.secondaryText
    property int materialTheme: Styles.material.theme

    signal completed()

    Material.accent: materialAccent
    Material.background: materialBackground
    Material.foreground: materialForeground
    Material.primary: materialPrimary
    Material.theme: materialTheme

    Component.onCompleted: root.completed()

    contentItem: Text {
        leftPadding: Styles.px(16)
        rightPadding: leftPadding

        text: root.displayText
        font: root.font
        color: materialForeground
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    delegate: Q.ItemDelegate {
        width: root.width
        contentItem: Text {
            text: modelData
            color: root.currentIndex === index ? root.materialAccent : root.materialPrimary
            font: root.font
            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
            topPadding: Styles.px(6)
            bottomPadding: topPadding
        }
        highlighted: root.highlightedIndex === index

        background: Rectangle {
            anchors.fill: parent
            color: highlighted ? Styles.colors.lightPrimary : Styles.colors.background
        }
    }

    LayoutControl { id: layoutControl }
}

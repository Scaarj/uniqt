import QtQuick 2.15 as Q
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.Text {
    property alias layout: layoutControl
    property int materialTheme: Styles.material.theme

    Material.theme: materialTheme

    color: Styles.colors.primaryText
    font: Styles.fonts.middle

    LayoutControl { id: layoutControl }
}

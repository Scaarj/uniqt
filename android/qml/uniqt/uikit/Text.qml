import QtQuick 2.15 as Q
import QtQuick.Controls.Material 2.15
import uniqt.styles 1.0

Q.Text {
    property alias layout: layoutControl

    color: Material.primaryTextColor
    font.pixelSize: Styles.textSize.middle

    LayoutControl { id: layoutControl }
}

import QtQuick 2.6 as Q
import uniqt.styles 1.0

Q.Text {
    property alias layout: layoutControl

    color: Styles.colors.primaryText

    LayoutControl { id: layoutControl }
}

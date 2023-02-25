import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15

import uniqt.styles 1.0

Q.Button {
    property alias layout: layoutControl

    implicitHeight: Styles.control.button
    layout.preferredWidth: text.length === 0 ? Styles.button.width.tiny : Styles.button.width.small
    font: Qt.font({pixelSize: Styles.font.size.middle, capitalization: Font.MixedCase})
    bottomInset: 0
    topInset: 0
    leftInset: 0
    rightInset: 0

    LayoutControl { id: layoutControl }
}

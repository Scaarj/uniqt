import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.5
import QtQuick.Controls.Material 2.15

Q.TextField {
    id: root

    property alias layout: layoutControl
    property bool fillWidth: false

    Layout.fillWidth: fillWidth
    leftPadding: root.height / 4
    rightPadding: leftPadding

    LayoutControl { id: layoutControl }
}

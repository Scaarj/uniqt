import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtGraphicalEffects 1.15

TextField {
    id: root

    property alias layout: layoutControl
    property bool hidden: !iconArea.pressed

    layout.fillWidth: true
    echoMode: hidden ? TextInput.Password : TextInput.Normal
    passwordCharacter: "*"
    passwordMaskDelay: 300
    leftPadding: iconVisible.anchors.rightMargin
    rightPadding: root.height

    Image {
        id: iconVisible

        property int size: root.height / 2
        anchors {
            right: parent.right
            rightMargin: iconVisible.size / 2
            verticalCenter: parent.verticalCenter
        }

        source: root.hidden ? "qrc:/icons/visibility_off.svg" : "qrc:/icons/visibility_on.svg"
        sourceSize: Qt.size(size, size)

        ColorOverlay {
            anchors.fill: parent
            source: parent
            color: root.color
        }

        MouseArea {
            id: iconArea
            anchors.fill: parent
        }
    }

    LayoutControl { id: layoutControl }
}

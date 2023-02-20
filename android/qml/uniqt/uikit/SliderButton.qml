import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.5

Q.Switch {
    id: root

    property alias layout: layoutControl
    property alias description: descriptionLabel.text

    bottomPadding: description.length !== 0 ? description.height : 0

    Text {
        id: descriptionLabel
        anchors {
            top: indicator.bottom
            left: indicator.right
            leftMargin: root.spacing
        }

        font.pixelSize: root.font.pixelSize * 0.8
        font.italic: true
        color: "darkgrey"
    }

    LayoutControl { id: layoutControl }
}

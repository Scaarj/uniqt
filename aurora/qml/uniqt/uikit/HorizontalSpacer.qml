import QtQuick 2.6
import QtQuick.Layouts 1.1

Item {    
    property alias layout: layoutControl

    layout.fillWidth: true

    LayoutControl { id: layoutControl }
}

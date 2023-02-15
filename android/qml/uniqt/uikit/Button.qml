import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15

Q.Button {
    property alias layout: layoutControl

    LayoutControl { id: layoutControl }
}

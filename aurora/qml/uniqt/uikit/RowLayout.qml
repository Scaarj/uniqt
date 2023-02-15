import QtQuick 2.6
import QtQuick.Layouts 1.1 as Q

Q.RowLayout {
    property alias layout: layoutControl
    property alias politic: layoutPolitic

    LayoutControl { id: layoutControl }

    LayoutPolitic { id: layoutPolitic }

    Component.onCompleted: politic.apply()
}

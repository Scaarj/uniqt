import QtQuick 2.15
import QtQuick.Layouts 1.15 as Q

Q.RowLayout {
    property alias layout: layoutControl
    property alias politic: layoutPolitic

    LayoutControl { id: layoutControl }

    LayoutPolitic { id: layoutPolitic }

    Component.onCompleted: politic.apply()
}

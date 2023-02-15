import QtQuick 2.15
import QtQuick.Layouts 1.5 as Q

Q.GridLayout {
    property alias layout: layoutControl
    property alias politic: layoutPolitic

    LayoutControl { id: layoutControl }

    LayoutPolitic { id: layoutPolitic }

    Component.onCompleted: politic.apply()
}

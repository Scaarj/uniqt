import QtQuick 2.6 as Q
import QtQuick.Layouts 1.1

Q.ListView {
    property alias layout: layoutControl

    boundsBehavior: Flickable.StopAtBounds

    LayoutControl { id: layoutControl }
}

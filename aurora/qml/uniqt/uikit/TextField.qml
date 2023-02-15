import QtQuick 2.6
import Sailfish.Silica 1.0 as Q
import QtQuick.Layouts 1.1

Q.TextField {
    property alias layout: layoutControl

    LayoutControl { id: layoutControl }
}

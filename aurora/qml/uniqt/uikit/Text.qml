import QtQuick 2.6 as Q
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1

Q.Text {
    property alias layout: layoutControl

    color: Theme.primaryColor

    LayoutControl { id: layoutControl }
}

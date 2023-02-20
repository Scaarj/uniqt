import QtQuick 2.15
import QtQuick.Controls 2.15 as Q
import QtQuick.Layouts 1.15

import uniqt.styles 1.0

Q.Button {
    property alias layout: layoutControl

    implicitHeight: Styles.control.button

    LayoutControl { id: layoutControl }
}

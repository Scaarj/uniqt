import QtQuick 2.6
import Sailfish.Silica 1.0
import QtGraphicalEffects 1.0
import uniqt.styles 1.0

import "./../styles"

CoverBackground {
    objectName: "defaultCover"

    property alias layout: layoutControl
    property alias icon: coverPlaceholder.icon
    property alias title: coverPlaceholder.text

    CoverPlaceholder {
        id: coverPlaceholder
        objectName: "placeholder"
        forceFit: true

        ColorOverlay {
            id: colorOverlay
            anchors.fill: coverPlaceholder
            source: coverPlaceholder
            color: Styles.colors.primaryHighlight
        }
    }

    LayoutControl { id: layoutControl }
}

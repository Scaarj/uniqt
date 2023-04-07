import uniqt.uikit 1.0
import uniqt.styles 1.0

import "./pages"

ApplicationWindow {
    id: application
    objectName: "applicationWindow"

    initialPage: MainPage {}
    coverPage: CoverPage {
        icon {
            source: Qt.resolvedUrl("qrc:/icons/cover.svg")
            width: Styles.mdpi
            height: Styles.mdpi
        }
        title: "Example application"
    }
    allowedOrientations: defaultAllowedOrientations

    AnimationPage { id: animationPage }

    ColorPage { id: colorPage }

    ControlPage { id: controlPage }

    FontPage { id: fontPage }

    FlickablePage { id: flickablePage }

    GraphicPage { id: graphicPage }

    IconPage { id: iconPage }

    LayoutPage { id: layoutPage }

    ModifierPage { id: modifierPage }

    PositionPage { id: positionPage }
}


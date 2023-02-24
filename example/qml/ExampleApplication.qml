import uniqt.uikit 1.0
import uniqt.styles 1.0

ApplicationWindow {
    id: application
    objectName: "applicationWindow"

    initialPage: MainPage {}
    coverPage: CoverPage {
        icon {
            source: Qt.resolvedUrl("qrc:/icons/cover.svg")
            width: Styles.iconSize.middle
            height: Styles.iconSize.middle
        }
        title: "Example application"
    }
    allowedOrientations: defaultAllowedOrientations

    ColorPage { id: colorPage }

    FontPage { id: fontPage }

    IconPage { id: iconPage }

    LayoutPage { id: layoutPage }

    ModifierPage { id: modifierPage }

    ControlPage { id: controlPage }
}


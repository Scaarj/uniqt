import uniqt.uikit 1.0

ApplicationWindow {
    id: application
    objectName: "applicationWindow"

    initialPage: MainPage {}
    coverPage: DefaultCoverPage {}
    allowedOrientations: defaultAllowedOrientations

    ColorPage { id: colorPage }
}


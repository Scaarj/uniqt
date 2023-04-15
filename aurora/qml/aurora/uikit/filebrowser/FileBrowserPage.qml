import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1
import Nemo.FileManager 1.0

Page {
    id: root
    objectName: "fileBrowser"

    property alias title: pageHeader.title
    property bool onlyHomePath: true
    property bool enableCopy: true
    property bool enableRemove: true
    property bool enableOpen: true
    property bool enableRename: true
    property bool disabledVisible: true

    signal copy(string path)
    signal open(string path)
    signal paste(string path)
    signal remove(string path)
    signal rename(string path)

    function showError(error) {
        fileToolTip.show(error)
    }

    allowedOrientations: Orientation.All

    PageHeader {
        id: pageHeader
        title: qsTr("File browser")
    }

    SilicaListView {
        id: listView

        anchors { left: parent.left; right: parent.right; top: pageHeader.bottom; bottom: parent.bottom;
            margins: Theme.paddingMedium }

        model: fileModel
        clip: true
        spacing: Theme.paddingMedium

        delegate: FileDelegate {
            onCopy: root.copy(model.absolutePath)
            onOpen: {
                if (model.isDir) {
                    fileModel.path = model.absolutePath
                } else {
                    root.open(model.absolutePath)
                }
            }
            onPaste: root.paste(model.absolutePath)
            onRemove: root.remove(model.absolutePath)
            onRename: root.rename(model.absolutePath)
            onClicked: {
                if (model.isDir) {
                    if ((model.absolutePath !== "/" && root.onlyHomePath) || !root.onlyHomePath) {
                        fileModel.path = model.absolutePath
                    }
                } else {
                    if (enableOpen) {
                        root.open(model.absolutePath)
                    }
                }
            }

            width: listView.width
            enableCopyPath: root.enableCopy
            enableRename: root.enableRename
            enableOpen: root.enableOpen
            enableRemove: root.enableRemove
            disabledVisible: root.disabledVisible
        }

        Label {
            anchors.centerIn: parent
            wrapMode: Label.WrapAtWordBoundaryOrAnywhere
            visible: listView.count === 0
            text: qsTr("No files and folders")
            font.pixelSize: Theme.fontSizeLarge
        }

        FileMenu {
            id: logAdditionalMenu
            fileModel: fileModel
        }
    }

    FileModel {
        id: fileModel

        property string previousPath: path
        property string previousAbsolutePath: absolutePath

        onPathChanged: {
            // NOTE: On no permission to access directory absolutePath is not setted and model view breaks
            if (absolutePath.length === 0) {
                fileToolTip.text = qsTr("No permissions to access %1").arg(path)
                path = previousPath
                absolutePath = previousAbsolutePath
            } else {
                // NOTE: always keep previous, correct path
                previousPath = path
                previousAbsolutePath = absolutePath
            }
        }

        active: true
        includeDirectories: true
        includeParentDirectory: true
        directorySort: FileModel.SortDirectoriesBeforeFiles
        sortBy: FileModel.SortByName
        sortOrder: Qt.AscendingOrder
        path: "."
    }

    ErrorToolTip {
        id: fileToolTip
        x: (root.width - width) / 2
        y: (root.height - height) / 2
    }
}

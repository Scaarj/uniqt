import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1
import Nemo.FileManager 1.0

ListItem {
    id: root

    property alias enableCopyPath: copyPathBtn.enabled
    property alias enableOpen: openBtn.enabled
    property alias enablePaste: pasteBtn.enabled
    property alias enableRename: renameBtn.enabled
    property alias enableRemove: removeBtn.enabled
    property bool disabledVisible

    signal copy()
    signal open()
    signal paste()
    signal remove()
    signal rename()

    implicitHeight: contentHeight + contextMenu.height
    contentHeight: columnLayout.height

    menu: ContextMenu {
        id: contextMenu

        MenuItem {
            id: copyPathBtn
            text: qsTr("Copy")
            visible: (disabledVisible && !enabled) || enabled
            onClicked: root.copy()
        }
        MenuItem {
            id: openBtn
            text: qsTr("Open")
            visible: (disabledVisible && !enabled) || enabled
            onClicked: root.open()
        }
        MenuItem {
            id: pasteBtn
            text: qsTr("Paste")
            visible: (disabledVisible && !enabled) || enabled
            onClicked: root.paste()
        }
        MenuItem {
            id: renameBtn
            text: qsTr("Rename")
            visible: (disabledVisible && !enabled) || enabled
            onClicked: root.rename()
        }
        MenuItem {
            id: removeBtn
            text: qsTr("Remove")
            visible: (disabledVisible && !enabled) || enabled
            onClicked: root.remove()
        }
    }

    ColumnLayout {
        id: columnLayout
        anchors { left: parent.left; right: parent.right; top: parent.top; leftMargin: Theme.paddingLarge;
            rightMargin: anchors.leftMargin }

        RowLayout {
            Layout.fillWidth: true

            Icon {
                id: icon
                source: "image://theme/icon-m-" + (model.isDir ? "folder" : "file-other") +
                        (highlighted ? '?' + Theme.highlightColor : '')
                color: Theme.highlightColor
            }

            Label {
                id: fileNameLabel
                Layout.fillWidth: true
                leftPadding: Theme.paddingMedium
                text: model.fileName
                truncationMode: TruncationMode.Fade
            }
            Label {
                id: sizeLabel
                text: Format.formatFileSize(model.size)
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                Layout.fillWidth: true
                text: model.mimeType
                visible: !model.isDir
                color: Theme.secondaryColor
            }

            Label {
                text: Format.formatDate(model.modified, Format.Timepoint)
                color: Theme.secondaryColor
            }
        }
    }
}

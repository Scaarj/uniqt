import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Layouts 1.1
import aurora.uikit.filebrowser 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        id: pageHeader
        objectName: "pageHeader"
        title: qsTr("Filebrowser demo")
    }

    SilicaFlickable {
        anchors { left: parent.left; right: parent.right; top: pageHeader.bottom; margins: Theme.paddingMedium; }
        width: parent.width

        ColumnLayout {
            width: parent.width
            TextField {
                id: filePathCopy

                placeholderText: "Copy path"
                leftItem: Icon {
                    source: "image://theme/icon-m-file-folder"

                    MouseArea {
                        anchors.fill: parent
                        onClicked: pageStack.push(filebrowser)
                    }
                }
            }

            TextField {
                id: filePathRemove

                placeholderText: "Remove path"
                leftItem: Icon {
                    source: "image://theme/icon-m-delete"

                    MouseArea {
                        anchors.fill: parent
                        onClicked: pageStack.push(filebrowser)
                    }
                }
            }
        }
    }

    FileBrowserPage {
        id: filebrowser

        onCopy: {
            filePathCopy.text = path
            pageStack.pop()
        }

        onRemove: {
            filePathRemove.text = path
            pageStack.pop()
        }
    }
}

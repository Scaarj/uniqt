import QtQuick 2.6
import Sailfish.Silica 1.0
import Nemo.FileManager 1.0

PullDownMenu {
    id: root

    property var fileModel

    MenuLabel {
        text: qsTr("File and folder sorting")
    }

    MenuItem {
        visible: fileModel.includeDirectories
        text: qsTr("Sort Directories: %1").arg(fileModel.directorySort === FileModel.SortDirectoriesBeforeFiles ?
                                                   qsTr("first") : qsTr("last"))
        onClicked: fileModel.directorySort = (fileModel.directorySort === FileModel.SortDirectoriesBeforeFiles ?
                                                  FileModel.SortDirectoriesAfterFiles : FileModel.SortDirectoriesBeforeFiles)
    }

    MenuItem {
        text: qsTr("Show Directories: %1").arg(fileModel.includeDirectories ? qsTr("on") : qsTr("off"))
        onClicked: fileModel.includeDirectories = !fileModel.includeDirectories
    }

    MenuItem {
        text: qsTr("Sort by: %1").arg(fileModel.sortBy === FileModel.SortByModified ? qsTr("Time")
                                               : (fileModel.sortBy === FileModel.SortByName ? qsTr("Name")
                                                                    : (fileModel.sortBy === FileModel.SortByExtension ? qsTr("Type") : qsTr("Size"))))
        onClicked: fileModel.sortBy = (fileModel.sortBy === FileModel.SortByModified ? FileModel.SortByName
                                                  : (fileModel.sortBy === FileModel.SortByName ? FileModel.SortByExtension
                                                                       : (fileModel.sortBy === FileModel.SortByExtension ? FileModel.SortBySize :FileModel.SortByModified)))

    }

    MenuItem {
        text: qsTr("Order: %1").arg(fileModel.sortOrder === Qt.AscendingOrder ? qsTr("Ascending") : qsTr("Descending"))
        onClicked: fileModel.sortOrder = (fileModel.sortOrder === Qt.AscendingOrder ? Qt.DescendingOrder : Qt.AscendingOrder)
    }
}

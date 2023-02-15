import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    id: root

    property int alignment: Qt.AlignCenter
    property int column: 0
    property int columnSpan: 0
    property bool fillHeight: false
    property bool fillWidth: false
    property int maximumHeight: 0
    property int maximumWidth: 0
    property int minimumHeight: 0
    property int minimumWidth: 0
    property int preferredHeight: 0
    property int preferredWidth: 0
    property int row: 0
    property int rowSpan: 0

    onAlignmentChanged: parent.Layout.alignment = root.alignment
    onColumnChanged: parent.Layout.column = root.column
    onColumnSpanChanged: parent.Layout.columnSpan = root.columnSpan
    onFillHeightChanged: parent.Layout.fillHeight = root.fillHeight
    onFillWidthChanged: parent.Layout.fillWidth = root.fillWidth
    onMaximumHeightChanged: parent.Layout.maximumHeight = root.maximumHeight
    onMaximumWidthChanged: parent.Layout.maximumWidth = root.maximumWidth
    onMinimumHeightChanged: parent.Layout.minimumHeight = root.minimumHeight
    onMinimumWidthChanged: parent.Layout.minimumWidth = root.minimumWidth
    onPreferredHeightChanged: parent.Layout.preferredHeight = root.preferredHeight
    onPreferredWidthChanged: parent.Layout.preferredWidth = root.preferredWidth
    onRowChanged: parent.Layout.row = root.row
    onRowSpanChanged: parent.Layout.rowSpan = root.rowSpan
}

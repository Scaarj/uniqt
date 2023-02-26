import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Layout Page"

    padding: Styles.margins.small
    content: ColumnLayout {
        width: root.contentMaxWidth
        spacing: Styles.margins.small

        Button {
            text: "Button1"
        }

        Button {
            text: "Button2"
            icon.source: "qrc:/icons/back_arrow.svg"
            icon.width: height / 2
            icon.height: height / 2
        }

        Button {
            icon.source: "qrc:/icons/back_arrow.svg"
            width: height
            icon.width: height / 2
            icon.height: height / 2
        }

        CheckBox {
        }

        CheckBox {
            text: "Checkbox"
        }

        Column {
            Text {
                text: "Exclusive group button"
            }

            ButtonGroup {
                id: exclusiveButtonGroup
                exclusive: true
            }

            CheckBox {
                text: "Checkbox 1"
                buttonGroup: exclusiveButtonGroup
                checked: true
            }
            CheckBox {
                text: "Checkbox 2"
                buttonGroup: exclusiveButtonGroup
                checked: true
            }
            CheckBox {
                text: "Checkbox 3"
                buttonGroup: exclusiveButtonGroup
                checked: true
            }
        }

        Column {
            Text {
                text: "Unexclusive group button"
            }

            ButtonGroup {
                id: unexclusiveButtonGroup
                exclusive: false
            }

            CheckBox {
                text: "Checkbox 1"
                buttonGroup: unexclusiveButtonGroup
                checked: true
            }
            CheckBox {
                text: "Checkbox 2"
                buttonGroup: unexclusiveButtonGroup
                checked: true
            }
            CheckBox {
                text: "Checkbox 3"
                buttonGroup: unexclusiveButtonGroup
                checked: true
            }
        }

        TextField {
            placeholderText: "TextField1"
        }

        TextField {
            text: "TextField2"
            placeholderText: "TextField2"
        }

        PasswordField {}

        RowLayout {
            layout.fillWidth: true
            ComboBox {
                id: comboBox
                width: 200
                model: [ "Menu1", "Menu2", "Menu3"]
            }

            Label {
                text: "index:" + comboBox.currentIndex
            }
        }
    }
}

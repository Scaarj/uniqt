import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    headerTitle: "Control"

    padding: Styles.px(4)
    content: ColumnLayout {
        width: root.contentMaxWidth
        spacing: Styles.px(4)

        Button {
            text: "Button1"
        }

        Button {
            text: "Button2"
            icon.source: "qrc:/icons/back_arrow.svg"
        }

        Button {
            icon.source: "qrc:/icons/back_arrow.svg"
            width: height
        }

        RowLayout {
            layout.fillWidth: true
            ComboBox {
                id: comboBox
                width: 200
                model: [ "Menu1", "Menu2", "Menu3", "Menu4", "Menu5"]
            }

            Label {
                text: "index:" + comboBox.currentIndex
            }
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

        SliderButton {
            text: "Slidder button"
            description: "Description"
        }

        TextField {
            placeholderText: "TextField1"
        }

        TextField {
            text: "TextField2"
            placeholderText: "TextField2"
        }

        PasswordField {}
    }
}

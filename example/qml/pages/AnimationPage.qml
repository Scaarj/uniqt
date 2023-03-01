import uniqt.uikit 1.0
import uniqt.styles 1.0

Page {
    id: root

    property int blockHeight: application.height / 12
    property int blockWidth: application.width / 6
    property int fieldHeight: application.height / 6

    headerTitle: "Animation"

    padding: Styles.margins.small
    content: ColumnLayout {
        id: gridLayout
        width: root.contentMaxWidth

        Text {
            text: "Sequential number animation"
        }

        Rectangle {
            id: fieldForSequentialAnimation
            layout.fillWidth: true
            height: fieldHeight
            color: "lightgrey"

            Rectangle {
                id: rectForSequentialAnimation
                height: blockHeight
                width: blockWidth
                x: 0
                y: 0
                color: "red"

                SequentialAnimation {
                    running: true
                    NumberAnimation {
                        id: sequentialAnimation1
                        target: rectForSequentialAnimation
                        property: "x"
                        from: 0
                        to: fieldForSequentialAnimation.width - rectForSequentialAnimation.width
                        duration: 1000
                    }

                    NumberAnimation {
                        id: sequentialAnimation2
                        target: rectForSequentialAnimation
                        property: "y"
                        from: 0
                        to: fieldForSequentialAnimation.height - rectForSequentialAnimation.height
                        duration: 1000
                    }

                    onStopped: {
                        var temp = sequentialAnimation1.from
                        sequentialAnimation1.from = sequentialAnimation1.to
                        sequentialAnimation1.to = temp
                        temp = sequentialAnimation2.from
                        sequentialAnimation2.from = sequentialAnimation2.to
                        sequentialAnimation2.to = temp
                        running = true
                    }
                }
            }
        }

        Text {
            text: "Parallel number animation"
        }

        Rectangle {
            id: fieldForParallelAnimation
            layout.fillWidth: true
            height: fieldHeight
            color: "lightgrey"

            Rectangle {
                id: rectForParallelAnimation
                height: blockHeight
                width: blockWidth
                x: 0
                y: 0
                color: "Blue"

                ParallelAnimation {
                    running: true
                    NumberAnimation {
                        id: parallelAnimation1
                        target: rectForParallelAnimation
                        property: "x"
                        from: 0
                        to: fieldForParallelAnimation.width - rectForParallelAnimation.width
                        duration: 1000
                    }

                    NumberAnimation {
                        id: parallelAnimation2
                        target: rectForParallelAnimation
                        property: "y"
                        from: 0
                        to: fieldForParallelAnimation.height - rectForParallelAnimation.height
                        duration: 1000
                    }

                    onStopped: {
                        var temp = parallelAnimation1.from
                        parallelAnimation1.from = parallelAnimation1.to
                        parallelAnimation1.to = temp
                        temp = parallelAnimation2.from
                        parallelAnimation2.from = parallelAnimation2.to
                        parallelAnimation2.to = temp
                        running = true
                    }
                }
            }
        }

        Text {
            text: "Infinite rotation animation"
        }

        Text {
            text: "Click for animation"
            font: Styles.font.type.description
        }

        Rectangle {
            layout.alignment: Qt.AlignHCenter
            height: blockHeight
            width: height
            color: "green"
            RotationAnimation on rotation {
                id: rotationAnimation
                running: false
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 1000
            }

            MouseArea {
                anchors.fill: parent
                onClicked: rotationAnimation.running = !rotationAnimation.running
            }
        }

        Text {
            text: "Infinite anchor animation"
        }

        Text {
            text: "Click for animation"
            font: Styles.font.type.description
        }

        Rectangle {
            id: fieldForAnchorAnimation
            layout.fillWidth: true
            height: blockHeight
            color: "lightgrey"

            Rectangle {
                id: rectForAnchorAnimation
                height: parent.height
                width: height
                color: "purple"
            }

            states: [
                State {
                name: "leftAnchoring"
                AnchorChanges { target: rectForAnchorAnimation; anchors.left: fieldForAnchorAnimation.left }

            },
                State {
                name: "rightAnchoring"
                AnchorChanges { target: rectForAnchorAnimation; anchors.right: fieldForAnchorAnimation.right }
            }]
            state: "leftAnchoring"

            transitions: Transition {
                AnchorAnimation { duration: 1000 }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (fieldForAnchorAnimation.state === "leftAnchoring") {
                        fieldForAnchorAnimation.state = "rightAnchoring"
                    } else {
                        fieldForAnchorAnimation.state = "leftAnchoring"
                    }
                }
            }
        }

        Text {
            text: "Color animation"
        }

        Text {
            text: "Click for animation"
            font: Styles.font.type.description
        }

        Rectangle {
            id: rectForColorAnimation
            layout.alignment: Qt.AlignHCenter
            height: blockHeight
            width: height
            color: "red"

            ColorAnimation on color {
                id: colorAnimation
                from: "red"
                to: "blue"
                duration: 2000
                running: false
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (colorAnimation.runnning) { return }
                    colorAnimation.running = true
                }
            }
        }
    }
}

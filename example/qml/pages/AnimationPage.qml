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
            text: "SequentialAnimation"
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
            text: "ParallelAnimation"
        }

        Rectangle {
            id: fieldForParallelAnimation
            layout.fillWidth: true
            height: fieldHeight
            color: "lightgrey"

            Rectangle {
                id: rectForParallelAnimation
                height: blockWidth
                width: blockHeight
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
    }
}

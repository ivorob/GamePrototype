import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.4


ApplicationWindow {
    id: root
    width: 800
    height: 640
    title: "Game Prototype"

    Rectangle {
        id: screen 
        anchors.fill: parent

        SystemPalette { id: activePalette }

        Item {
            width: parent.width
            height: parent.height

            anchors { top: parent.top; bottom: toolBar.top }

            GameBoard {
                id: board
                anchors.fill: parent
            }
        }

        Rectangle {
            id: toolBar
            width: parent.width
            height: 50
            color: activePalette.window
            anchors.bottom: screen.bottom

            Button {
                anchors { left: parent.left; verticalCenter: parent.verticalCenter }
                text: "New Game"
                onClicked: console.log("This doesn't do anything yet..." + root.height)
            }

            Text {
                id: score
                anchors { right: parent.right; verticalCenter: parent.verticalCenter }
                text: "Score: Who knows?"
            }
        }
    }

    visible: true
}

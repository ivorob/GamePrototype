import QtQuick 2.0
import QtQuick.Shapes 1.15

Shape {
    width: 200
    height: 150
    anchors.centerIn: parent
    
    property alias startX : path.startX
    property alias startY : path.startY

    ShapePath {
        id: path

        strokeWidth: 4
        strokeColor: "red"
        strokeStyle: ShapePath.DashLine
        dashPattern: [ 1, 4 ]
        PathLine { relativeX: 180; relativeY: 130 }
        PathLine { relativeX: 20; relativeY: 130 }
        PathLine { relativeX: 20; relativeY: 20 }
        PathLine { relativeX: 40; relativeY: 130 }
    }
}

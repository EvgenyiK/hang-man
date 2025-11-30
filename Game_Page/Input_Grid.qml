import QtQuick 2.15

GridView{
    id: inputGrid
    width: parent.width
    height: parent.height/3
    anchors.bottom: parent.bottom
    cellHeight: 50
    cellWidth: 50

    model: ListModel{
        ListElement{
            letter: "A"
        }
        ListElement{
            letter: "B"
        }
    }

    delegate: MouseArea{
        width: 50
        height: width
        onClicked:{
            borderRec.border.width = 1
        }

        Rectangle{
            id: borderRec
            anchors.fill: parent
            color: "transparent"
            border.width: 0
            border.color: "white"

            Label{
                anchors.centerIn: parent
                text: letter
                font.pointSize: 10
                font.bold: true
                color: "white"
            }
        }
    }
}

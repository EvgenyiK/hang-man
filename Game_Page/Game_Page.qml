import QtQuick 2.9
import QtQuick.Controls 2.5

Item {
    id: gamePage
    width: 360
    height: 640

    Input_Grid{
        id: inputGrid
        property var currentWord: ""
        property var wordCount: 0

        ListView{
            id: listViewLetterCount
            width: parent.width
            height: 50
            orientation: ListView.Horizontal
            anchors.bottom: parent.bottom
            anchors.bottomMargin: inputGrid.height+20
            interactive: false
            model: listModelCount
            delegate: MouseArea{
                width: 50
                height: parent.width/10

                Rectangle{
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width-10
                    height: 4
                    color: "white"
                }
            }
        }
    }
}

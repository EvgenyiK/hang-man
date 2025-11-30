import QtQuick 2.15
import QtQuick.Controls 2.12
import "Game_Page"

SwipeView{
id: swipeView
anchors.fill: parent
interactive: false

Item{
    id: welcomePage
    width: 360
    height: 640


    Label{
        id: gameTitel
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50
        text: "Hang-Man"
        color: "white"
        font.pointSize: 50
    }

    RoundButton{
        id: startGameButton
        anchors.centerIn: parent
        width: 200
        height: 200
        text: "START"
        font.bold: true
        font.pointSize: 38
        background: Rectangle{
            anchors.fill: parent
            radius: 99
            color:  "#fe9000"
            border.width: 2
            border.color: "black"
        }
        onClicked: {

        }
    }

    Label{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        text: "Made be Evgen"
        color: "white"
        font.pointSize: 15
    }

    Label{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        text: "User Agreement other Legal Stuff"
        color: "white"
        font.pointSize: 8
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {}
    }

    property var currentWord: ""
    ListModel{
        id:wordModel
        ListElement{
            word:"TREE"
        }

        ListElement{
            word:"APPLE"
        }
    }
}






Game_Page{
    id: gamePage
}


Item{
    id: endPage
    width: 360
    height: 720
}

}

import QtQuick 2.15
import QtQuick.Controls 2.12



ApplicationWindow{
    width: 360
    height: 640
    visible: true
    title: "Hang-Man"

    StackView{
        id: contentFrame
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("Load_Page.qml")
    }

    Component.onCompleted: {
        contentFrame.replace("Main_Page.qml")
    }

}




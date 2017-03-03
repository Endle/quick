import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    TextField{
        id: shopNumber
        x: 335
        y: 56
        text: "3"
        font.weight: Font.ExtraLight
        font.capitalization: Font.AllUppercase
        inputMask: "99"

        style: TextFieldStyle {
            textColor: "black"
            background: Rectangle {
                //radius: 2
                border.color: "black"
                border.width: 1


            }
        }
    }

    TextField{
        id: cardNumber
        x: 335
        y: 97
        text: "3"
        font.weight: Font.ExtraLight
        font.capitalization: Font.AllUppercase
        inputMask: "99"

        style: TextFieldStyle {
            textColor: "black"
            background: Rectangle {
                //radius: 2
                border.color: "black"
                border.width: 1


            }
        }
    }

    Text {
        id: text1
        x: 52
        y: 56
        width: 262
        height: 25
        text: qsTr("How many shops?")
        fontSizeMode: Text.Fit
        font.pixelSize: 12
    }

    Text {
        id: text2
        x: 52
        y: 97
        width: 262
        height: 25
        text: qsTr("How many cards?")
        font.pixelSize: 12
        fontSizeMode: Text.Fit
    }

    Button {
        id: button
        x: 506
        y: 56
        width: 81
        height: 66
        text: qsTr("Button")
    }

    ListModel {
        id: shopModel
        ListElement {
            url: "A Masterpiece"
        }
    }

    TableView {
        x: 52
        y: 145
        width: 262
        height: 249
        TableViewColumn {
            role: "url"
            title: "Shop Link"
        }
        model: shopModel
    }

    ListModel {
        id: cardModel
        ListElement {
            name: "A Masterpiece"
        }
    }
    TableView {
        x: 335
        y: 145
        width: 252
        height: 249
        model: cardModel
        TableViewColumn {
            role: "name"
            title: "Card Name"
        }
    }


}

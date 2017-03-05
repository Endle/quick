import QtQuick 2.7
import QtQuick.Controls 2.1

Rectangle {
    width: 800
    height: 600

    Button {
        id: submitUserInputButton
        x: 505
        y: 422
        text: qsTr("Submit")
        onClicked: {
            submit.clicked()
        }

    }

    TextField {
        id: addShopLinkTextField
        x: 97
        y: 114
        text: qsTr("Text Field")
    }

    ListView {
        id: shop_listView
        x: 97
        y: 236
        width: 238
        height: 226
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                spacing: 10
                Text {
                    text: shopLink
                }
            }
        }
        model: ListModel {
            id: shopListModel
            ListElement {
                shopLink: "https://shop62237807.taobao.com/"
            }
        }
    }

    Button {
        id: addShopLinkButton
        x: 97
        y: 175
        width: 115
        height: 40
        text: qsTr("Add Shop Link")
        onClicked: {
            shopListModel.append({shopLink:addShopLinkTextField.text})
        }
    }
}

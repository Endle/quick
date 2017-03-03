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
        id: textField
        x: 143
        y: 145
        text: qsTr("Text Field")
    }
}

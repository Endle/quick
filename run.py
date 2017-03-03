#!/usr/bin/env python
# -'''- coding: utf-8 -'''-

import sys

from PyQt5.QtCore import *
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQuick import QQuickView

class submitUserInput(QObject):
    @pyqtSlot()
    def clicked(self):
        print("Clicked!")

app = QGuiApplication(sys.argv)
view = QQuickView()
url = QUrl('main.qml')
view.setSource(url)


submit = submitUserInput()

context = view.rootContext()
context.setContextProperty("submit", submit)
#context.onClicked.connect(submit.clicked)
view.show()


sys.exit(app.exec_())

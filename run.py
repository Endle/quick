#!/usr/bin/env python
# -'''- coding: utf-8 -'''-

import sys

from PyQt5.QtCore import *
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQuick import QQuickView

VIEW = None
APP = None

class submitUserInput(QObject):
    @pyqtSlot()
    def clicked(self):
        print("Clicked!")

def main():
    global VIEW
    global APP
    APP = QGuiApplication(sys.argv)
    VIEW = QQuickView()
    url = QUrl('main.qml')
    VIEW.setSource(url)


    submit = submitUserInput()

    context = VIEW.rootContext()
    context.setContextProperty("submit", submit)
    VIEW.show()


    sys.exit(APP.exec_())

main()

#!/usr/bin/env python
# -'''- coding: utf-8 -'''-

import sys

from PyQt5.QtCore import QUrl
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQuick import QQuickView

# Create Qt application and the QDeclarative view
app = QGuiApplication(sys.argv)
view = QQuickView()
# Create an URL to the QML file
url = QUrl('main.qml')
# Set the QML file and show
view.setSource(url)
view.show()
# Enter Qt main loop
sys.exit(app.exec_())

QT       += core websockets
QT       -= gui

TARGET = echoserver
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += \
    main.cpp \
    echoserver.cpp

HEADERS += \
    echoserver.h

OTHER_FILES += echoclient.html


win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../qt4-src/release/ -lQWebSocket
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../qt4-src/debug/ -lQWebSocket
else:unix: LIBS += -L$$OUT_PWD/../../qt4-src/ -lQWebSocket

INCLUDEPATH += $$PWD/../../qt4-src
INCLUDEPATH += $$PWD/../../src/websockets
DEPENDPATH += $$PWD/../../qt4-src

TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

LIBS += -lsystemd

DISTFILES += \
    watchdog.service

service.files=watchdog.service
service.path=/lib/systemd/system/
INSTALLS += service

target.path=/usr/bin
INSTALLS += target

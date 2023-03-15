#pragma once

#include <QString>
#include <memory>

#ifdef Q_OS_AURORA
#include <sailfishapp.h>
#else
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QObject>
#endif

namespace uniqt {
    class ApplicationCore {
    public:
        ApplicationCore(int& argc, char** argv);

        void setOrganizationDomain(const QString& orgDomain);
        QString organizationDomain() const;
        void setOrganizationName(const QString& orgName);
        QString organizationName() const;
        void setApplicationName(const QString& application);
        QString applicationName() const;
        void setApplicationVersion(const QString& version);
        static void setStyle(const QString& style);

        void setSource(const QString&);
        QString source() const;
        int exec();

    private:
#ifdef Q_OS_AURORA
        QGuiApplication* application;
        QQuickView* view;
#else
        class DefaultAttributes {
        public:
            DefaultAttributes() {
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
            }
        } defaultAttributes;

        QGuiApplication application;
        QQmlApplicationEngine engine;
        QMetaObject::Connection connection;
#endif
    };
}


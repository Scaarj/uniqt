#pragma once

#include <QString>
#include <memory>

#ifdef Q_OS_AURORA
    #include <sailfishapp.h>
#else
    #include <QGuiApplication>
    #include <QObject>
    #include <QQmlApplicationEngine>
    #include <QQuickStyle>
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
    void setSource(const QString&);

    void makeStandartPaths();
    static void setStyle(const QString& style);
    int exec();

    QObject* rootObject();

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
} // namespace uniqt

#ifndef ENUMS_H
#define ENUMS_H

#include <QQuickView>
#include <QFont>

#define VERSION_MAJOR 1
#define VERSION_MINOR 0

namespace uniqt {

    class Font : public QObject
    {
        Q_OBJECT

    public:
        Font() : QObject() {}
        enum Type
        {
            Thin = QFont::Thin,
            Light = QFont::Light,
            Normal = QFont::Normal,
            Medium = QFont::Medium,
            DemiBold = QFont::DemiBold,
            Bold = QFont::Bold,
            ExtraBold = QFont::ExtraBold,
            Black = QFont::Black
        };
        Q_ENUM(Type)

        static void declare() {
            qmlRegisterType<Font>("uniqt.uikit", VERSION_MAJOR, VERSION_MINOR, "Font");
        }
    };

    class Animation : public QObject
    {
        Q_OBJECT

    public:
        Animation() : QObject() {}
        enum Type
        {
            Infinite = -1,
        };
        Q_ENUM(Type)

        static void declare() {
            qmlRegisterType<Animation>("uniqt.uikit", VERSION_MAJOR, VERSION_MINOR, "Animation");
        }
    };

    class EnumRegister
    {
    public:
        static void init()
        {
            Font::declare();
            Animation::declare();
        }
    };
}

#endif // ENUMS_H

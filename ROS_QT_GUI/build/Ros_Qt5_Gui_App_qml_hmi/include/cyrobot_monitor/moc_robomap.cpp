/****************************************************************************
** Meta object code from reading C++ file 'robomap.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.9)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/Ros_Qt5_Gui_App_qml_hmi/include/cyrobot_monitor/robomap.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'robomap.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.9. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_roboMap_t {
    QByteArrayData data[17];
    char stringdata0[127];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_roboMap_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_roboMap_t qt_meta_stringdata_roboMap = {
    {
QT_MOC_LITERAL(0, 0, 7), // "roboMap"
QT_MOC_LITERAL(1, 8, 9), // "paintMaps"
QT_MOC_LITERAL(2, 18, 0), // ""
QT_MOC_LITERAL(3, 19, 3), // "map"
QT_MOC_LITERAL(4, 23, 4), // "size"
QT_MOC_LITERAL(5, 28, 12), // "paintRoboPos"
QT_MOC_LITERAL(6, 41, 3), // "pos"
QT_MOC_LITERAL(7, 45, 3), // "yaw"
QT_MOC_LITERAL(8, 49, 10), // "paintImage"
QT_MOC_LITERAL(9, 60, 16), // "paintPlannerPath"
QT_MOC_LITERAL(10, 77, 14), // "paintLaserScan"
QT_MOC_LITERAL(11, 92, 11), // "get_version"
QT_MOC_LITERAL(12, 104, 6), // "setMax"
QT_MOC_LITERAL(13, 111, 6), // "setMin"
QT_MOC_LITERAL(14, 118, 4), // "move"
QT_MOC_LITERAL(15, 123, 1), // "x"
QT_MOC_LITERAL(16, 125, 1) // "y"

    },
    "roboMap\0paintMaps\0\0map\0size\0paintRoboPos\0"
    "pos\0yaw\0paintImage\0paintPlannerPath\0"
    "paintLaserScan\0get_version\0setMax\0"
    "setMin\0move\0x\0y"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_roboMap[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    2,   59,    2, 0x0a /* Public */,
       5,    2,   64,    2, 0x0a /* Public */,
       8,    2,   69,    2, 0x0a /* Public */,
       9,    1,   74,    2, 0x0a /* Public */,
      10,    1,   77,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
      11,    0,   80,    2, 0x02 /* Public */,
      12,    0,   81,    2, 0x02 /* Public */,
      13,    0,   82,    2, 0x02 /* Public */,
      14,    2,   83,    2, 0x02 /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::QImage, QMetaType::QSizeF,    3,    4,
    QMetaType::Void, QMetaType::QPointF, QMetaType::Float,    6,    7,
    QMetaType::Void, QMetaType::Int, QMetaType::QImage,    2,    2,
    QMetaType::Void, QMetaType::QPolygonF,    2,
    QMetaType::Void, QMetaType::QPolygonF,    2,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double, QMetaType::Double,   15,   16,

       0        // eod
};

void roboMap::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        roboMap *_t = static_cast<roboMap *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->paintMaps((*reinterpret_cast< QImage(*)>(_a[1])),(*reinterpret_cast< QSizeF(*)>(_a[2]))); break;
        case 1: _t->paintRoboPos((*reinterpret_cast< QPointF(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2]))); break;
        case 2: _t->paintImage((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QImage(*)>(_a[2]))); break;
        case 3: _t->paintPlannerPath((*reinterpret_cast< QPolygonF(*)>(_a[1]))); break;
        case 4: _t->paintLaserScan((*reinterpret_cast< QPolygonF(*)>(_a[1]))); break;
        case 5: _t->get_version(); break;
        case 6: _t->setMax(); break;
        case 7: _t->setMin(); break;
        case 8: _t->move((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObject roboMap::staticMetaObject = {
    { &QQuickPaintedItem::staticMetaObject, qt_meta_stringdata_roboMap.data,
      qt_meta_data_roboMap,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *roboMap::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *roboMap::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_roboMap.stringdata0))
        return static_cast<void*>(this);
    return QQuickPaintedItem::qt_metacast(_clname);
}

int roboMap::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QQuickPaintedItem::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE

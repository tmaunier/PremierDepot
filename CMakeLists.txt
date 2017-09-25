cmake_minimum_required(VERSION 2.6.1)
project(Exo2)

find_package(Qt REQUIRED)
include(${QT_USE_FILE})

include_directories(/net/cremi/tmaunier/espaces/travail/M2/Projet_logiciel/cours2/TP1/qcustomplot/sharedlib/compilation)
link_directories(/net/cremi/tmaunier/espaces/travail/M2/Projet_logiciel/cours2/TP1/qcustomplot/sharedlib/compilation/libqcustomplot.so)


add_executable(CourbeCarre carre.cpp)
target_link_libraries(CourbeCarre ${QT_LIBRARIES} qcustomplot)

add_executable(GUISimple gui_simple.cpp)
target_link_libraries(GUISimple ${QT_LIBRARIES})

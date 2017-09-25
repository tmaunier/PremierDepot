all: GUISimple CourbeCarre

GUISimple: gui_simple.o
	g++ -lQtGui -lQtCore $^ -o $@ 

CourbeCarre: carre.o
	g++ -lQtGui -lQtCore -L/net/cremi/tmaunier/espaces/travail/M2/Projet_logiciel/cours2/TP1/qcustomplot/sharedlib/compilation -lqcustomplot $^ -o $@

gui_simple.o: gui_simple.cpp
	g++ -I/usr/include/qt4/ -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtCore -c $^ -o $@

carre.o: carre.cpp
	g++ -I/usr/include/qt4/ -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtCore -I/net/cremi/tmaunier/espaces/travail/M2/Projet_logiciel/cours2/TP1/qcustomplot -c $^ -o $@


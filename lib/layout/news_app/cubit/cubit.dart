import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first/layout/news_app/cubit/states.dart';
import 'package:my_first/modules/business/business_screen.dart';
import 'package:my_first/modules/science/science_screen.dart';
import 'package:my_first/modules/settings_screen/settings_screen.dart';
import 'package:my_first/modules/sports/sports_screen.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.business,

        ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.sports,
        ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.science,

        ),
      label: 'Science',
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
        ),
      label: 'Settings',
    ),
  ];
  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen(),
  ];
  void changeBottomNavBar(int index){
    currentIndex = index;
    emit(NewsBottomNavState());
  }
}
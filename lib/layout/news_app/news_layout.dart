import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first/layout/news_app/cubit/cubit.dart';
import 'package:my_first/layout/news_app/cubit/states.dart';
import 'package:my_first/shared/network/remote/dio_helper.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context,state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                  'News App'
              ) ,
              actions: [
                IconButton(onPressed: (){}, icon: Icon(
                  Icons.search,
                ))
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              items: cubit.bottomNavItems,
                onTap: (index)
                {
                    cubit.changeBottomNavBar(index);
                },
            ),
          );
        },
      ),
    );
  }
}

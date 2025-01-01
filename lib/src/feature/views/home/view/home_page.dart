import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/src/core/style_app/app_bar.dart';
import 'package:news_app/src/core/style_app/model/card_model.dart';
import 'package:news_app/src/core/style_app/widget/custom_card.dart';
import 'package:news_app/src/feature/cubit/home_test_cubit.dart';
import 'package:news_app/src/feature/cubit/home_test_state.dart';
import 'package:news_app/src/feature/views/details/view/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeTestCubit(),
        child: BlocBuilder<HomeTestCubit, HomeTestState>(
            builder: (context, state) {
          HomeTestCubit cubit1 = BlocProvider.of<HomeTestCubit>(context);

          return Scaffold(
            appBar: appBarMyApp(text: "Shoes App"),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit1.currentIndex,
                onTap: (value) {
                  cubit1.changeIndex(value);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.heart_fill),
                    label: "favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.heart_fill),
                    label: "favorite",
                  ),
                ]),
            body: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              padding: const EdgeInsets.all(10.0),
              children: List.generate(listModelShoes.length, (index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                      cardModel: listModelShoes[index],
                  ),
                ),
              );
                  },
                  child: CustomCard(
                    cardModel: listModelShoes[index],
                  ),
                );
              }),
            ),
          );
        }));
  }
}

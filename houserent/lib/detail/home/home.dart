import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:houserent/widget/best_offer.dart';
import 'package:houserent/widget/catagories.dart';
import 'package:houserent/widget/custom_appbar.dart';
import 'package:houserent/widget/custom_bottom_NavigationBar.dart';
import 'package:houserent/widget/recommanded.dart';
import 'package:houserent/widget/search_input.dart';
import 'package:houserent/widget/welcome_text.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: CustomAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(),
              SearchInput(),
              Catagories(),
              RecommandeHouse(),
              BestOffer()
            ],
          ),
        ),
      bottomNavigationBar: CustomButtomNavigationBar(),

      ),
    );
  }
}

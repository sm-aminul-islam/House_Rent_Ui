import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:houserent/model/house.dart';
import 'package:houserent/screen/circle_icon_button.dart';

class RecommandeHouse extends StatelessWidget {
  final recommandedhouse = House.genarateRecommanded();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                height: 300,
                width: 230,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(recommandedhouse[index].imgurl),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      right: 15,
                      top: 15,
                      child: circleIconButton(
                        iconUrl: 'assets/icons/mark.svg',
                        color: Theme.of(context).accentColor,
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.white54,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recommandedhouse[index].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  recommandedhouse[index].address,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                        fontSize: 12,
                                      ),
                                ),
                              ],
                            ),
                            circleIconButton(
                                iconUrl: 'assets/icons/mark.svg',
                                color: Theme.of(context).accentColor)
                          ],
                        ),
                      ))
                ]),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: recommandedhouse.length),
    );
  }
}

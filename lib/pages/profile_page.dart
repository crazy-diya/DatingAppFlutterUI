import 'package:dating_app/commons/cicle_image.dart';
import 'package:dating_app/commons/opaque_image.dart';
import 'package:dating_app/commons/profile_card.dart';
import 'package:dating_app/commons/profile_info_card.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

import 'super_likes_me_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              /** Expandad eken wenne cotas walata wen karaganna pluwan dispaly eka*/
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpequeImage(
                      imageUrl: "assets/images/user.jpg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                style: headingTextStyle,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  CicleImage(
                                    imgUrl: "assets/images/user.jpg",
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Dimuthu Lakshan",
                                        style: whiteNameTextStyle,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "24",
                                        style: whiteNameTextStyle,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_rounded,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "1A 1/1 Colombo",
                                        style: whiteSubHeadingTextStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 145,
                      top: 120,
                      child: SizedBox(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          strokeWidth: 3.0,
                          value: 40,
                          semanticsValue: "fd",
                          //valueColor: new AlwaysStoppedAnimation(Colors.white),
                        ),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(top: 40),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            icon: Icon(
                              Icons.star,
                              color: Colors.blue,
                              size: 20,
                            ),
                            firstText: "23",
                            secondText: "New matches",
                          ),
                          ProfileInfoBigCard(
                            icon: Icon(
                              Icons.android_outlined,
                              color: Colors.blue,
                              size: 20,
                            ),
                            firstText: "21",
                            secondText: "Unmatched me",
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            icon: Icon(
                              Icons.view_list,
                              color: Colors.blue,
                              size: 20,
                            ),
                            firstText: "265",
                            secondText: "All matches",
                          ),
                          ProfileInfoBigCard(
                            icon: Icon(
                              Icons.refresh,
                              color: Colors.blue,
                              size: 20,
                            ),
                            firstText: "42",
                            secondText: "Rematches",
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            icon: Icon(
                              Icons.theaters,
                              color: Colors.blue,
                              size: 20,
                            ),
                            firstText: "199",
                            secondText: "Closed",
                          ),

                          /** Using GestureDetecter we can add rout navigate to another page in using Widget*/
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SuperLikesMePage(),
                              ));
                            },
                            child: ProfileInfoBigCard(
                              icon: Icon(
                                Icons.local_play_rounded,
                                color: Colors.blue,
                                size: 20,
                              ),
                              firstText: "54",
                              secondText: "Play matches ",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 80/2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileInfoCard(
                    //image: false,
                    firstText: "54%",
                    secondText: "Progress",
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    icon: Icon(Icons.brightness_7_sharp),
                  ),
                  ProfileInfoCard(
                    //image: false,
                    firstText: "54%",
                    secondText: "Progress",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

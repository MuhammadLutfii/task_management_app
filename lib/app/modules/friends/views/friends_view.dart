import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myfriends.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerkey,
      drawer: SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
          !context.isPhone ? Expanded(flex: 2, child: SideBar()) : SizedBox(),
          Expanded(
            flex: 15,
            child: Column(
              children: [
                !context.isPhone
                    ? header()
                    : Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  _drawerkey.currentState!.openDrawer();
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: AppColors.primaryText,
                                )),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Taks Management',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText),
                                  ),
                                  Text('Manage Your Task Easy',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors.primaryText))
                                ]),
                            Spacer(),
                            Icon(
                              Ionicons.notifications,
                              color: AppColors.primaryText,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 25,
                                foregroundImage: NetworkImage(
                                    'https://akcdn.detik.net.id/community/media/visual/2019/09/26/1d7195bd-2927-4e55-8ecd-6c3f81c96b12_43.jpeg?w=400&q='),
                              ),
                            )
                          ],
                        ),
                      ),
                Expanded(
                    child: Container(
                  padding:
                      !context.isPhone ? EdgeInsets.all(50) : EdgeInsets.all(0),
                  margin:
                      !context.isPhone ? EdgeInsets.all(10) : EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'People You May Know',
                        style: TextStyle(
                            fontSize: 30, color: AppColors.primaryText),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          clipBehavior: Clip.antiAlias,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image(
                                      image: NetworkImage(
                                        'https://akcdn.detik.net.id/community/media/visual/2019/09/26/1d7195bd-2927-4e55-8ecd-6c3f81c96b12_43.jpeg?w=400&q=',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 50,
                                    child: Text(
                                      'Laurance Key',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: SizedBox(
                                        height: 36,
                                        width: 36,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50))),
                                            child: Icon(
                                                Ionicons.add_circle_outline)),
                                      ))
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      MyFriends()
                    ],
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myTask.dart';
import 'package:task_management_app/app/utils/widget/profileW.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  final authC = Get.find<AuthController>();

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
                            GestureDetector(
                              onTap: () {
                                Get.defaultDialog(
                                    title: 'Sing Out',
                                    content: Text('Are You Ready to Sign Out?'),
                                    cancel: ElevatedButton(
                                        onPressed: () => Get.back(),
                                        child: Text('Cancel')),
                                    confirm: ElevatedButton(
                                        onPressed: () => authC.logout(),
                                        child: Text('Sign Out')));
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Sign Out',
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Ionicons.log_out_outline,
                                    color: AppColors.primaryText,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(50),
                  margin:
                      !context.isPhone ? EdgeInsets.all(10) : EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: !context.isPhone
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: !context.isPhone
                            ? Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 120,
                                        foregroundImage: NetworkImage(
                                            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg'),
                                      ),
                                    ),
                                  ),
                                  Profilew(),
                                ],
                              )
                            : Center(
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 120,
                                        foregroundImage: NetworkImage(
                                            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Profilew(),
                                  ],
                                ),
                              ),
                      ),
                      Text(
                        'My Task',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 200,
                        child: myTask(),
                      ),
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

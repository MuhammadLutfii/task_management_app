import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myTask.dart';
import 'package:task_management_app/app/utils/widget/myfriends.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';
import 'package:task_management_app/app/utils/widget/upcomingtask.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? Expanded(
                    flex: 2,
                    child: const SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(children: [
                !context.isPhone
                    ? const header()
                    : Container(
                        //content //isipage //screen
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _drawerKey.currentState!.openDrawer();
                              },
                              icon: Icon(Icons.menu,
                                  color: AppColors.primaryText),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Task Management',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primaryText),
                                ),
                                Text(
                                  'Manage task made easy with friends',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.primaryText),
                                ),
                              ],
                            ),
                            Spacer(),
                            const Icon(
                              Icons.notifications,
                              color: Colors.grey,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 25,
                                foregroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                Expanded(
                  child: Container(
                    padding: !context.isPhone
                        ? EdgeInsets.all(50)
                        : EdgeInsets.all(0),
                    margin: !context.isPhone
                        ? EdgeInsets.all(10)
                        : EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(20)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'My Task',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                //mystask
                                myTask(),
                              ],
                            ),
                          ),
                          !context.isPhone
                              ? Expanded(
                                  child: Row(
                                    children: [
                                      UpcomingTask(),
                                      MyFriends(),
                                    ],
                                  ),
                                )
                              : UpcomingTask(),
                        ]),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

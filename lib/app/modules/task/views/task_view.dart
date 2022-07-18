import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
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
                            icon:
                                Icon(Icons.menu, color: AppColors.primaryText),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Task Management',
                                style: TextStyle(
                                    fontSize: 20, color: AppColors.primaryText),
                              ),
                              Text(
                                'Manage task made easy with friends',
                                style: TextStyle(
                                    fontSize: 15, color: AppColors.primaryText),
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
                                'https://akcdn.detik.net.id/community/media/visual/2019/09/26/1d7195bd-2927-4e55-8ecd-6c3f81c96b12_43.jpeg?w=400&q=',
                              ),
                            ),
                          ),
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
                        'My Task',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 8,
                          clipBehavior: Clip.antiAlias,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              //  width: 400,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.cardBg,
                              ),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                              'https://akcdn.detik.net.id/community/media/visual/2019/09/26/1d7195bd-2927-4e55-8ecd-6c3f81c96b12_43.jpeg?w=400&q=',
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                              'https://akcdn.detik.net.id/community/media/visual/2019/09/26/1d7195bd-2927-4e55-8ecd-6c3f81c96b12_43.jpeg?w=400&q=',
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 25,
                                          width: 80,
                                          color: AppColors.primaryBg,
                                          child: Center(
                                            child: Text(
                                              '100 %',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: Center(
                                        child: Text(
                                          '10 / 10 Task',
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pemograman Mobile',
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'Deadline 2 hari lagi',
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15),
                                    ),
                                  ]),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment(0.95, 0.95),
        child: FloatingActionButton.extended(
          onPressed: () {
            Get.bottomSheet(
              Container(
                margin: !context.isPhone
                    ? EdgeInsets.zero
                    : EdgeInsets.only(left: 150, right: 150),
                height: Get.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
              ),
            );
          },
          label: Text('Add Task'),
          icon: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

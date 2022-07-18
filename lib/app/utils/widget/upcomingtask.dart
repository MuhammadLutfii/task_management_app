import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Task',
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: ListView(
                clipBehavior: Clip.antiAlias,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
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
                                borderRadius: BorderRadius.circular(25),
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg',
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg',
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
                                color: AppColors.primaryText, fontSize: 20),
                          ),
                          Text(
                            'Deadline 2 hari lagi',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 15),
                          ),
                        ]),
                  ),
                  Container(
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
                                borderRadius: BorderRadius.circular(25),
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg',
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg',
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
                                color: AppColors.primaryText, fontSize: 20),
                          ),
                          Text(
                            'Deadline 2 hari lagi',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 15),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

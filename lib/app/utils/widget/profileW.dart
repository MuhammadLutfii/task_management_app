import 'package:flutter/cupertino.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class Profilew extends StatelessWidget {
  const Profilew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Laurence Key',
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 30,
            ),
          ),
          Text(
            'LaurenceK@gmail.com',
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

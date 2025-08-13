import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(onPressed: (){
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
    centerTitle: true,
    title: Text(title,style: TextStyles.bold19,),
  );
}
import 'package:demo/top/top_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    // int num = args['croppedImage'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COUNT',
        ),
      ),
      body: Consumer<TopViewModel>(
        builder: (context, model, _) {
          return Center(
            child: Text(
              model.count.toString(),
              style: TextStyle(
                fontSize: 30.sp,
                color: Color(0xFF5C4444),
              ),
            ),
          );
        },
      ),
      floatingActionButton: Consumer<TopViewModel>(
        builder: (context, model, _) {
          return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              model.count++;
              model.notify();
            },
          );
        },
      ),
    );
  }
}

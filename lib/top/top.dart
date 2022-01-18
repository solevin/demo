import 'package:demo/top/top_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int num = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TOP',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.h),
            child: SizedBox(
              height: 40.h,
              width: 300.w,
              child: DecoratedBox(
                child: Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Color(0xFF5C4444),
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.h),
                child: SizedBox(
                  height: 40.h,
                  width: 100.w,
                  child: DecoratedBox(
                    child: Center(
                      child: Text(
                        'Left',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Color(0xFF5C4444),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.h),
                child: SizedBox(
                  height: 40.h,
                  width: 100.w,
                  child: DecoratedBox(
                    child: Center(
                      child: Text(
                        'Center',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Color(0xFF5C4444),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(color: Colors.green),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.h),
                child: SizedBox(
                  height: 40.h,
                  width: 100.w,
                  child: DecoratedBox(
                    child: Center(
                      child: Text(
                        'Right',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Color(0xFF5C4444),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.h),
            child: Center(
              child: SizedBox(
                height: 30.h,
                width: 80.w,
                child: Consumer<TopViewModel>(
                  builder: (context, model, _) {
                    return Text(
                      '${model.count}',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Color(0xFF5C4444),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(8.h),
          //   child: SizedBox(
          //     height: 40.h,
          //     width: 100.w,
          //     child: GestureDetector(
          //       child: DecoratedBox(
          //         child: Center(
          //           child: Icon(Icons.add),
          //         ),
          //         decoration: BoxDecoration(color: Colors.purple),
          //       ),
          //       onTap: () {
          //         num++;
          //       },
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 40.h,
            width: 100.w,
            child: GestureDetector(
              child: DecoratedBox(
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Color(0xFF5C4444),
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.orange),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(
                  '/count',
                  // arguments: {
                  //   'num': num,
                  // },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

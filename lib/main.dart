import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:demo/top/top_view_model.dart';
import 'routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TopViewModel(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Color(0xFFFFFBE5),
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                color: Color(0xFF5C4444),
              ),
            ),
        textSelectionColor: Color(0xFF5C4444),
        appBarTheme: AppBarTheme(
          color: Color(0xFF3DEFE2),
          centerTitle: false,
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF5C4444),
                ),
              ),
        ),
      ),
      title: 'demo',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
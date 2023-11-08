import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdlibrary_c_1133/home_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType)
    {
      Device.orientation == Orientation.portrait
          ? Container( //widget for portrait
              width: 100.w,
              height: 20.5.h,
        )
          : Container( //widget for landscape
              width: 100.w,
              height: 12.5.h,
        );
        Device.screenType == ScreenType.tablet
          ? Container( //widget for tablet
              width: 100.w,
              height: 20.5.h,
        )
          : Container( //widget for mobile
              width: 100.w,
              height: 12.5.h,
        );
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber)
            .copyWith(
              secondary: Colors.amberAccent,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),
            useMaterial3: true,
          ),
          home: const MyHomePage(),
        );
    },);
  }
}

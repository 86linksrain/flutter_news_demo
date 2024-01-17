/*
 * @Author: rain zwen@86links.com
 * @Date: 2024-01-17 15:51:29
 * @LastEditors: rain zwen@86links.com
 * @LastEditTime: 2024-01-17 16:45:30
 * @FilePath: /demo/demo_common/lib/theme.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static final park = ThemeData.light().copyWith(
    brightness: Brightness.light,
    // fontFamily: '方正标雅宋简体',
    // Color类型，App主要部分的背景色（ToolBar,Tabbar等）
    primaryColor: const Color(0xffFC5517),
    // primaryColorLight
    // Color类型，前景色(按钮、文本、覆盖边缘效果等)
    // accentColor
    // Color类型，分隔符(Dividers)和弹窗分隔符(PopupMenuDividers)的颜色，也用于ListTiles和DataTables的行之间。要创建使用这种颜色的合适的边界，请考虑
    dividerColor: const Color(0xffDCDCDC),
    scaffoldBackgroundColor: const Color(0xffF8F8FC),
    platform: TargetPlatform.iOS,
    cardColor: const Color(0xffEBEBEB),
    appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xffFC5517),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0.5,
        toolbarTextStyle: const TextTheme(
                // ignore: deprecated_member_use
                headline6: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600))
            .bodyText2,
        titleTextStyle: const TextTheme(
                headline6: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600))
            .headline6,
        systemOverlayStyle: SystemUiOverlayStyle.dark),
    colorScheme: const ColorScheme.light(),
    dialogBackgroundColor: Colors.white,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    focusColor: Colors.transparent,
    inputDecorationTheme: const InputDecorationTheme(
      // errorBorder: ,
      filled: true,
      fillColor: Color(0xfff8f8fa),
      focusedBorder: OutlineInputBorder(
        // borderSide: BorderSide(
        //   color: EsColors.Primary.withOpacity(0.6),
        //   width: 0.5,
        // ),
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
      border: OutlineInputBorder(
        // borderSide: BorderSide(
        //   color: Color(0xffd6d6d6),
        //   width: 0.5,
        // ),
        gapPadding: 0,
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        gapPadding: 0,
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        gapPadding: 0,
        borderRadius: BorderRadius.all(
          Radius.circular(6.0),
        ),
      ),

      contentPadding: EdgeInsets.fromLTRB(16, 12, 12, 10),
      hintStyle: TextStyle(fontSize: 16, color: Color(0xffA8A8A8)),
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      splashFactory: NoSplash.splashFactory,
      overlayColor: MaterialStateProperty.resolveWith((states) {
        return Colors.transparent;
      }),
    )),
    dividerTheme: ThemeData.light().dividerTheme.copyWith(
          color: const Color(0xFFE9EBEE),
        ),
  );

  static final company = ThemeData.light().copyWith(
      // Color类型，App主要部分的背景色（ToolBar,Tabbar等）
      primaryColor: Color(0xff1768E4),
      // primaryColorBrightness: Brightness.light,
      // primaryColorLight
      // Color类型，前景色(按钮、文本、覆盖边缘效果等)
      // accentColor
      // Color类型，分隔符(Dividers)和弹窗分隔符(PopupMenuDividers)的颜色，也用于ListTiles和DataTables的行之间。要创建使用这种颜色的合适的边界，请考虑
      dividerColor: Color(0xffDCDCDC),
      scaffoldBackgroundColor: Color(0xffF8F8FC),
      platform: TargetPlatform.iOS,
      cardColor: Color(0xffEBEBEB),
      dialogBackgroundColor: Colors.white,
      brightness: Brightness.light,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // 适配material3
      // useMaterial3: true,

      // 关闭全部水波纹
      splashFactory: NoSplash.splashFactory,

      /// 新按钮的水波纹
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              splashFactory: NoSplash.splashFactory,
              overlayColor: MaterialStateProperty.all(Colors.transparent))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent))),
      inputDecorationTheme: const InputDecorationTheme(
        // errorBorder: ,
        filled: true,
        fillColor: Color(0xfff8f8fa),
        focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide(
          //   color: EsColors.Primary.withOpacity(0.6),
          //   width: 0.5,
          // ),
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        border: OutlineInputBorder(
          // borderSide: BorderSide(
          //   color: Color(0xffd6d6d6),
          //   width: 0.5,
          // ),
          gapPadding: 0,
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          gapPadding: 0,
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          gapPadding: 0,
          borderRadius: BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),

        contentPadding: EdgeInsets.fromLTRB(16, 12, 12, 10),
        hintStyle: TextStyle(
            fontSize: 16,
            color: Color(0xffa8a8a8),
            fontWeight: FontWeight.w600),
      ),
      cardTheme: const CardTheme(
        color: Colors.white,
      ),
      // textTheme: ThemeData.light().textTheme.copyWith(
      //       title: TextStyle(
      //         color: EsColors.TitleSecondary,
      //         fontSize: EsSizes.MD,
      //         fontWeight: EsFontWeights.Normal,
      //       ),
      //       subtitle:
      //           TextStyle(color: EsColors.ContentSecondary, fontSize: EsSizes.SM),
      //     ),
      dividerTheme: ThemeData.light().dividerTheme.copyWith(
            color: const Color(0xFFE9EBEE),
          ),
      appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xff1768E4),
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0.5,
          toolbarTextStyle: const TextTheme(
                  // ignore: deprecated_member_use
                  headline6: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600))
              .bodyText2,
          titleTextStyle: const TextTheme(
                  headline6: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600))
              .headline6,
          systemOverlayStyle: SystemUiOverlayStyle.dark),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(background: Colors.white)
          .copyWith(background: const Color(0xffEBEBEB)));
// ----------------------------------
  static final red = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.red,
    appBarTheme: const AppBarTheme(
        // foregroundColor: ,

        backgroundColor: Colors.red,
        systemOverlayStyle:
            // SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),   // 这种不起效果
            SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.brown),
      ),
    ),
  );

  static final black = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.brown),
      ),
    ),
  );

  static final white = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 30)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.brown),
      ),
    ),
  );
}

import 'dart:ui';

import 'package:firebase_analytics_web/firebase_analytics_web.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/cubit/navigation_cubit.dart';
import 'package:portfolio/cubit/settings_cubit.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/ui/web/main.dart';
import 'package:portfolio/util.dart';
import 'dart:html' as html;

void main() async {
  final baseHref = html.window.location.pathname;
  final baseElement = html.Element.tag('base');
  baseElement.attributes['href'] = baseHref!;
  html.document.head!.append(baseElement);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.web);


  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SettingsCubit()),
        BlocProvider(create: (context) => NavigationCubit()),
      ],
      child: MyPortfolioWeb(),
    ),
  );
}

class MyPortfolioWeb extends StatelessWidget {
  MyPortfolioWeb({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Noto Sans", "Noto Sans");
    MaterialTheme theme = MaterialTheme(textTheme);

    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (BuildContext context, SettingsState settingsState) {
        return MaterialApp(
          // color: Theme.of(context).colorScheme.surfaceContainer,
          scrollBehavior: CustomScrollBehavior(),
          title: langSet[LangComponent.title]![settingsState.lang]!,
          debugShowCheckedModeBanner: false,
          theme: brightness == Brightness.light ? theme.light() : theme.dark(),
          home: Builder(builder: (context) {
            switch (defaultTargetPlatform) {
              case TargetPlatform.android:
              case TargetPlatform.iOS:
                return _buildMobileLayout();
              default:
                return _buildWebLayout();
            }
          }),
        );
      },
    );
  }

  Widget _buildWebLayout() {
    return WebMain();
  }

  Widget _buildMobileLayout() {
    return Container(
      child: Text("Mobile"),
    );
  }
}

class CustomScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }

  // 스크롤 동작에 대해 터치 및 마우스 입력을 허용하는 설정
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch, // 터치 스크롤 허용
        PointerDeviceKind.mouse, // 마우스 휠 스크롤 허용
        PointerDeviceKind.trackpad, // 트랙패드 스크롤 허용
      };
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/component/alert_contents_component.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/util.dart';
import 'dart:html' as html;

import 'cubit/actions_cubit.dart';
import 'home.dart';

void main() {
  final baseHref = html.window.location.pathname;
  final baseElement = html.Element.tag('base');
  baseElement.attributes['href'] = baseHref!;
  html.document.head!.append(baseElement);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ActionsCubit(),
        ),
      ],
      child: MyPortfolioWeb(),
    ),
  );
}

class MyPortfolioWeb extends StatelessWidget {
  String _selectedOption = "None";

  MyPortfolioWeb({super.key});

  Icon _getAlertDialogIcon(String key) {
    switch (key) {
      case "mail":
        return Icon(Icons.mail_outline);
      case "phone":
        return Icon(Icons.phone);
      case "sns":
        return Icon(Icons.person_outline);
      default:
        return Icon(Icons.error);
    }
  }

  void _showAlertDialog(BuildContext context, String key) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: _getAlertDialogIcon(key),
          content: AlertContentsComponent(contentType: key),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context.read<ActionsCubit>().setAllActionsStateFalse();
              },
              child: Text("OK"),
            )
          ],
        );
      },
    ).then((value) {
      context.read<ActionsCubit>().setAllActionsStateFalse();
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Noto Sans", "Noto Sans");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: "Jeremy0530's awesome works",
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: BlocListener<ActionsCubit, ActionsState>(
        listener: (context, state) {
          state.actions.forEach((key, value) {
            if (value) {
              _showAlertDialog(context, key);
            }
          });
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            title: Text("Jeremy0530's Profile"),
            actions: [
              IconButton(
                icon: Icon(Icons.mail_outline),
                onPressed: () =>
                    context.read<ActionsCubit>().toggleActionsState("mail"),
              ),
              IconButton(
                icon: Icon(Icons.phone),
                onPressed: () =>
                    context.read<ActionsCubit>().toggleActionsState("phone"),
              ),
              IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () =>
                    context.read<ActionsCubit>().toggleActionsState("sns"),
              ),
              PopupMenuButton(
                icon: Icon(Icons.language),
                onSelected: (String result) {
                  _selectedOption = result;
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'eng',
                    child: Text("English"),
                  ),
                  const PopupMenuItem<String>(
                    value: 'kor',
                    child: Text('한글'),
                  ),
                ],
              ),
            ],
          ),
          body: Home(),
        ),
      ),
    );
  }
}

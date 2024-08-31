import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/component/alert_contents_component.dart';
import 'package:portfolio/theme.dart';
import 'package:portfolio/util.dart';

import 'cubit/actions_cubit.dart';
import 'home.dart';

void main() {
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
  const MyPortfolioWeb({super.key});

  Icon _getAlertDialogIcon(String key){
    switch(key){
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
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () =>
                    context.read<ActionsCubit>().toggleActionsState("more"),
              )
            ],
          ),
          body: Home(),
        ),
      ),
    );
  }
}

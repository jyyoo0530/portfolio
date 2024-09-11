import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/cubit/navigation_cubit.dart';
import 'package:portfolio/ui/web/component/carousel.dart';
import 'package:portfolio/ui/web/home.dart';

class WebMain extends StatelessWidget {
  const WebMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(builder: (context, selectedIndex) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
              selectedIndex: selectedIndex,
              onDestinationSelected: (int index) {
                context.read<NavigationCubit>().updateIndex(index);
              },
              labelType: NavigationRailLabelType.selected,
              destinations: <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.home_outlined),
                  label: Text('Home'),
                  selectedIcon: Icon(Icons.home),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings_outlined),
                  label: Text('Settings'),
                  selectedIcon: Icon(Icons.settings),
                ),
              ],
            ),
            Expanded(
              child:BlocBuilder<NavigationCubit, int>(
                builder: (context, selectedIndex) {
                  return _getPage(selectedIndex);
                },
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return WebHome();
      case 1:
        return Text('Settings Page');
      default:
        return Text('Unknown Page');
    }
  }
}

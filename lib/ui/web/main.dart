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
        body: Stack(
          children: [
            Row(
              children: [
                NavigationRail(
                  leading: Container(
                    width: 40,
                    height: 60,
                    padding: EdgeInsets.only(top: 10, bottom: 20, left: 5, right: 5),
                    child: ClipRRect(
                      child: Image.asset("assets/image/favicon.png", fit: BoxFit.fill),
                    ),
                  ),
                  minWidth: 90,
                  groupAlignment: -1,
                  backgroundColor:
                      Theme.of(context).colorScheme.surfaceContainer,
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (int index) {
                    context.read<NavigationCubit>().updateIndex(index);
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: <NavigationRailDestination>[
                    NavigationRailDestination(
                      icon: Icon(Icons.home_outlined),
                      label: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Home'),
                      ),
                      selectedIcon: Icon(Icons.home),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.account_tree_outlined),
                      label:  Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Projects'),
                      ),
                      selectedIcon: Icon(Icons.account_tree),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.build_outlined),
                      label:  Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Skills'),
                      ),
                      selectedIcon: Icon(Icons.build),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.work_outline),
                      label:  Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Career'),
                      ),
                      selectedIcon: Icon(Icons.work),
                    ),
                  ],
                ),
                Expanded(
                  child: BlocBuilder<NavigationCubit, int>(
                    builder: (context, selectedIndex) {
                      return _getPage(selectedIndex);
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: IconButton(
                icon: Icon(Icons.settings_outlined, size: 30,),
                onPressed: () {},
              ),
            )
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
        return Text('Projects Page');
      case 2:
        return Text('Skills');
      case 3:
        return Text('Careers');
      default:
        return Text('Unknown Page');
    }
  }
}

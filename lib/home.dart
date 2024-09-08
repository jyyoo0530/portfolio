import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/component/carousel.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/cubit/settings_cubit.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'package:word_cloud/word_cloud.dart';

class Home extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  Map<String, int> wordValueMap = {};

  @override
  Widget build(BuildContext context) {
    final skillWords = skills.values
        .expand((list) => list)
        .map((item) => {
              'word': item['word'],
              'value': item['value'],
            })
        .toList();
    for (var entry in skillWords) {
      String word = entry['word'];
      int value = entry['value'];

      if (wordValueMap.containsKey(word)) {
        wordValueMap[word] = wordValueMap[word]! + value;
      } else {
        wordValueMap[word] = value;
      }
    }

    List<Map<String, dynamic>> result = wordValueMap.entries
        .map((entry) => {'word': entry.key, 'value': entry.value})
        .toList();
    return WebSmoothScroll(
      scrollOffset: 350,
      controller: _scrollController,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _scrollController,
        child: Column(
          children: [
            /////////////////////// Project Summary //////////////////////
            Container(
              width: double.infinity,
              height: 810,
              child: MyCarousel(height: 810),
            ),
            ////////////////////// Who I Am /////////////////////
            Container(
              width: double.infinity,
              height: 810,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 1100,
                      child: Text(
                        langSet[LangComponent.section2Header]![
                            context.read<SettingsCubit>().state.lang]!,
                        style: Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 1100,
                      height: 560,
                      child: Card.filled(
                        elevation: 5,
                        color: Theme.of(context).colorScheme.primaryContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/avatar.png',
                                width: 320,
                                height: 320,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 75),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 68,
                                  width: 536,
                                  child: Text(
                                      langSet[LangComponent.section2PageHeader]![
                                          context
                                              .read<SettingsCubit>()
                                              .state
                                              .lang]!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  height: 335,
                                  width: 536,
                                  child: Text(
                                    langSet[LangComponent.section2PageContent]![context.read<SettingsCubit>().state.lang]!,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /////////////// Skills ////////////////////
            Container(
              width: double.infinity,
              height: 810,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 1100,
                    child: Text(
                      "Skills",
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 1100,
                    height: 466,
                    alignment: Alignment.center,
                    child: WordCloudView(
                        data: WordCloudData(data: result),
                        mintextsize: 10,
                        maxtextsize: 50,
                        mapwidth: 800,
                        mapheight: 466),
                  ),
                  Container(
                    height: 164,
                    width: 1100,
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 12.0,
                        runSpacing: 12.0,
                        children: result
                            .map((elem) => Chip(
                                  // avatar: Icon(Icons.abc),
                                  label: Text('${elem['word']}'),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////// Educations ////////////////
            Container(
              width: double.infinity,
              height: 810,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 1100,
                    child: Text(
                      "Educations",
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 1100,
                    height: 200,
                    child: Card.filled(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      elevation: 5,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 1100,
                    height: 200,
                    child: Card.filled(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      elevation: 5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

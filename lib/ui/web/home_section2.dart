import 'package:flutter/material.dart';

class WebHomeSection2 extends StatelessWidget {
  WebHomeSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text("News & Launches",
                style: Theme.of(context).textTheme.displayLarge),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 400,
                height: 370,
                child: Card.filled(
                  elevation: 0,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        width: double.infinity,
                        height: 200,
                        child: Expanded(child:Card.filled(
                          elevation: 0,
                          color: Colors.teal,
                        ),),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Material Design at Google I/O"),
                          Text(
                              "See the full list of Material talks and tutorials launching at I/O 2024"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioComponent extends StatelessWidget {
  const PortfolioComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                "assets/portfolio_1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              "First Project",
              style: TextStyle(fontSize: 10, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/ui/web/component/timeline.dart';

class WebCareerSection2 extends StatelessWidget {
  const WebCareerSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(width: 20),
          TimelineNode(
            height: 300,
            child: TimelineNodeContent(
              height: 300,
              workingPeriod: "2023.02 ~",
              companyName: "Vive Studios",
              mainRole: "Senior Technical Project Manager",
              mainJob: Text(
                  "-Led PM team and UX team.\nManaged AI based virtual human solution\n"),
            ),
            childPosition: "left",
          ),
          TimelineNode(
            height: 600,
            child: TimelineNodeContent(
              height: 600,
              workingPeriod: "2019.01 ~ 2023.02",
              companyName: "Cyberlogitec",
              mainRole: "Technical Project Manager",
              mainJob: Text(
                  "-Project Manager of Port Safety Monitoring Digital Twin\n"
                  "-Product Owner of AI based dog image detection & segmentation app service\n"
                  "-Product Owner of freight contract derivatives platform\n"
                  "-Solution Architect of Kubernetes based data platform\n"
                  ""),
            ),
            childPosition: "right",
          ),
          TimelineNode(
            height: 300,
            child: TimelineNodeContent(
              height: 300,
              workingPeriod: "2018.07 ~ 2018.09",
              companyName: "Stena Line",
              mainRole: "Researcher",
              mainJob: Text(
                  "-Published dissertation: “Global Logistics Trend Spillover through container and RoRo shipping in northern Europe short sea shipping”\n"
                  "-Analyzed European Intermodal Container trading data\n"
                  "-Suggested long-term shipping building strategy for Stena Line C-Level at the meeting\n"
                  ""),
            ),
            childPosition: "left",
          ),
          TimelineNode(
            height: 300,
            child: TimelineNodeContent(
              height: 300,
              workingPeriod: "2017.01 ~ 2017.05",
              companyName: "SM Line",
              mainRole: "Fleet Manager",
              mainJob: Text(
                  "- Set up container vessels network strategies considering market trade data\n"
                  "- Analyzed international container trade market data\n"
                  ""),
            ),
            childPosition: "right",
          ),
          TimelineNode(
            height: 300,
            child: TimelineNodeContent(
              height: 300,
              workingPeriod: "2007.04 ~ 2016.12",
              companyName: "Hanjin Shipping",
              mainRole: "Fleet Manager",
              mainJob: Text(
                  "- Analyzed Company profit & loss using commercial trade data\n"
                  "- Analyzed vessel's operation data and set up operation cost reduction strategies\n"
                  "- Navigator of merchant vessels"
                  ""),
            ),
            childPosition: "left",
          ),
        ],
      ),
    );
  }
}

class TimelineNodeContent extends StatelessWidget {
  final String workingPeriod;
  final String companyName;
  final String mainRole;
  final Text mainJob;
  final double height;

  const TimelineNodeContent({
    super.key,
    required this.height,
    required this.workingPeriod,
    required this.companyName,
    required this.mainRole,
    required this.mainJob,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          width: double.infinity,
          height: height - 20,
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                width: double.infinity,
                child: Text(
                  workingPeriod,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                width: double.infinity,
                child: Text(
                  companyName,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                width: double.infinity,
                child: Text(
                  mainRole,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25,
                  ),
                  width: double.infinity,
                  child: mainJob,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

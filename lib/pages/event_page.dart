import 'dart:async';
import 'dart:math';

import 'package:dopeshield/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../components/common/text.dart';
import '../utilities/theme.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "GAMES",
          size: 40,
          weight: FontWeight.w900,
          color: textColor.withOpacity(.8),
        ),
        SizedBox(height: height * 0.01),
        CustomText(
          text:
              "Games of DopeShield:  Championing fairness, integrity, and a clean competitive spirit.",
          maxLine: 2,
          size: 28,
          weight: FontWeight.w800,
          color: textColor.withOpacity(.6),
        ),
        SizedBox(height: height * 0.025),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          direction: Axis.horizontal,
          spacing: width * 0.04,
          runSpacing: width * 0.04,
          children: [
            ...gameData.map(
              (e) => Container(
                padding: EdgeInsets.symmetric(
                    vertical: aspectRatio * 14, horizontal: width * 0.015),
                width: width * .28,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: (e["color"] as Color).withOpacity(.1)),
                  borderRadius: BorderRadius.circular(8),
                  color: (e["color"] as Color).withOpacity(.08),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: height * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: secondaryColor.withOpacity(.8),
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          e["url"]!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(colors: [
                        (e["color"] as Color).withOpacity(.4),
                        (e["color"] as Color)
                      ]).createShader(bounds),
                      child: CustomText(
                        text: e["name"]!,
                        color: Colors.white,
                        size: 36,
                        weight: FontWeight.w900,
                        maxLine: 2,
                        align: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: height * 0.03),
        CustomText(
          text: "PODCAST",
          size: 40,
          weight: FontWeight.w900,
          color: textColor.withOpacity(.8),
        ),
        SizedBox(height: height * 0.02),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: podcastData.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                  left: width * 0.02,
                  top: aspectRatio * 10,
                  bottom: aspectRatio * 10,
                ),
                margin: EdgeInsets.only(bottom: height * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: secondaryColor.withOpacity(.2),
                  border: Border.all(
                    color: secondaryColor.withOpacity(.3),
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           CustomText(
                            text: podcastData[index]["lang"]!,
                            size: 28,
                            weight: FontWeight.w900,
                          ),
                          CustomText(
                            text: podcastData[index]["description"]!,
                            size: 26,
                            color: textColor.withOpacity(.5),
                            maxLine: 2,
                            align: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: width * 0.02),
                    PodcastButton(colors: colorSets[index % colorSets.length])
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class PodcastButton extends StatefulWidget {
  const PodcastButton({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  State<PodcastButton> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<PodcastButton> {
  double value = Random().nextDouble();
  late Timer periodic;

  @override
  void initState() {
    super.initState();
    periodic = Timer.periodic(const Duration(milliseconds: 10), (_) {
      setState(() {
        value < 1 ? value += 0.0001 : value = 0;
      });
    });
  }

  @override
  void dispose() {
    periodic.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Container(
      margin: EdgeInsets.only(right: width * .04),
      padding: const EdgeInsets.all(1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: SweepGradient(
          colors: [
            widget.colors[0].withOpacity(.6),
            widget.colors[1].withOpacity(.6),
            widget.colors[2].withOpacity(.6)
          ],
          transform: GradientRotation(360 * value),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: aspectRatio * 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          gradient: LinearGradient(
            colors: [widget.colors[0], widget.colors[1], widget.colors[2]],
          ),
        ),
        child: const CustomText(
          text: "LISTEN",
          size: 26,
          weight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}

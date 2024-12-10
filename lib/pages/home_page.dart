import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../components/common/network_image.dart';
import '../components/common/text.dart';
import '../utilities/constants.dart';
import '../utilities/theme.dart';
import 'article_page.dart';
import 'casestudy_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String name = "Bharathraj";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomText(
                    text: "Hello 👋,",
                    size: 34,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Expanded(
                      child: CustomText(
                    text: name,
                    size: 40,
                    color: textColor,
                  )),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(aspectRatio * 15),
                child: Icon(
                  Symbols.mystery_rounded,
                  fill: 1,
                  weight: 700,
                  grade: 200,
                  color: textColor.withOpacity(.4),
                  size: aspectRatio * 58,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(aspectRatio * 15),
                child: Icon(
                  Symbols.notifications_rounded,
                  fill: 1,
                  weight: 700,
                  grade: 200,
                  color: textColor.withOpacity(.4),
                  size: aspectRatio * 58,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: height * 0.03),

        ///
        /// latest articles session
        ///
        CustomText(
          text: "Latest Articles".toUpperCase(),
          size: 32,
          weight: FontWeight.w900,
          color: textColor.withOpacity(.8),
        ),
        Container(
          height: height * 0.195,
          margin: EdgeInsets.only(top: height * 0.01),
          child: ListView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02, vertical: height * 0.01),
              scrollDirection: Axis.horizontal,
              itemCount: articleData.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArticlePage(
                        data: articleData[index],
                      ),
                    ),
                  ),
                  child: Container(
                    width: width * .8,
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02,
                      vertical: height * 0.01,
                    ),
                    margin: EdgeInsets.only(right: width * 0.04),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: secondaryColor.withOpacity(.1),
                        border: Border.all(
                            color: secondaryColor.withOpacity(.4),
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside)),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: aspectRatio * 20),
                              padding: const EdgeInsets.all(2),
                              height: height * .125,
                              width: height * .125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: LinearGradient(colors: [
                                  gradientColor1.withOpacity(.5),
                                  gradientColor2.withOpacity(.5)
                                ]),
                              ),
                              child: CustomNetworkImage(
                                size: height * .125,
                                radius: 6,
                                url: articleData[index]["url"],
                              ),
                            ),
                            CustomText(
                              text: articleData[index]["date"]!,
                              size: 26,
                              weight: FontWeight.w800,
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(bottom: aspectRatio * 20),
                                padding: EdgeInsets.symmetric(
                                    horizontal: aspectRatio * 20,
                                    vertical: aspectRatio * 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                    colors: [
                                      gradientColor1.withOpacity(.1),
                                      gradientColor2.withOpacity(.1)
                                    ],
                                  ),
                                ),
                                child: CustomText(
                                  text: articleData[index]["sport"]!,
                                  size: 26,
                                  weight: FontWeight.w800,
                                ),
                              ),
                              Expanded(
                                child: CustomText(
                                  text: articleData[index]["title"]!,
                                  size: 28,
                                  color: textColor.withOpacity(.8),
                                  maxLine: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),

        ///
        ///

        SizedBox(height: height * 0.025),

        ///
        /// Categories
        ///

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Categories".toUpperCase(),
              size: 32,
              weight: FontWeight.w900,
              color: textColor.withOpacity(.8),
            ),
            GestureDetector(
              child: const CustomText(
                text: "See All",
                color: gradientColor2,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: height * 0.02),
          height: height * 0.09,
          child: MasonryGridView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              crossAxisSpacing: height * 0.01,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return CategoryChip(
                  catergory: categories[index],
                  colors: colorSets[index],
                );
              }),
        ),

        ///
        ///

        SizedBox(height: height * 0.04),

        ///
        /// REHABILITATION
        ///
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "Rehabilitation".toUpperCase(),
              size: 32,
              weight: FontWeight.w900,
              color: textColor.withOpacity(.8),
            ),
          ],
        ),
        SizedBox(height: height * 0.012),
        CustomText(
          text:
              "Our mission is to guide individuals back to a path of integrity and fair play. Through tailored programs, we emphasize education, recovery, and reintegration, ensuring a brighter future in the world of sports. ",
          maxLine: 10,
          size: 26,
          align: TextAlign.justify,
          weight: FontWeight.w800,
          color: textColor.withOpacity(.5),
        ),
        SizedBox(height: height * 0.02),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(right: width * 0.03),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04, vertical: aspectRatio * 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: gradientColor2),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      gradientColor1.withOpacity(.8),
                      gradientColor2.withOpacity(.8)
                    ],
                  ),
                ),
                child: const CustomText(
                  text: "REBUILD",
                  color: Colors.white,
                  weight: FontWeight.w900,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: height * 0.045,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: height * 0.005),
                    itemCount: rebuildTopics.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: width * 0.03),
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                          vertical: aspectRatio * 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: secondaryColor.withOpacity(.3),
                        ),
                        child: CustomText(
                          text: rebuildTopics[index],
                          size: 28,
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),

        ///
        /// CASE STUDY
        ///
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(top: height * 0.01),
            width: width * .3,
            height: height * .045,
            alignment: Alignment.center,
            color: Colors.transparent,
            child: ShaderMask(
              shaderCallback: (bounds) => linearGradient.createShader(bounds),
              child: const CustomText(
                text: "CASE STUDY",
                color: Colors.white,
                weight: FontWeight.w900,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.065,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.005, horizontal: width * 0.04),
              itemCount: caseStudy.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CasestudyPage(
                        data: caseStudy[index],
                      ),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: width * 0.04),
                    padding: EdgeInsets.only(
                      left: width * 0.01,
                      right: width * 0.02,
                      top: aspectRatio * 10,
                      bottom: aspectRatio * 10,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: secondaryColor.withOpacity(.2),
                        border: Border.all(
                            color: secondaryColor.withOpacity(.6),
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside)),
                    child: Row(
                      children: [
                        CustomNetworkImage(
                          size: aspectRatio * 100,
                          radius: 6,
                          url: caseStudy[index]["url"],
                          fit: BoxFit.cover,
                          padding: 0,
                        ),
                        SizedBox(width: aspectRatio * 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: caseStudy[index]["name"],
                              size: 28,
                              color: textColor.withOpacity(.8),
                              weight: FontWeight.w800,
                            ),
                            // SizedBox(height: aspectRatio*10),
                            ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                        colors: colorSets[index].sublist(1))
                                    .createShader(bounds),
                                child: CustomText(
                                  text: caseStudy[index]["sport"],
                                  size: 26,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class CategoryChip extends StatefulWidget {
  const CategoryChip({
    super.key,
    required this.catergory,
    required this.colors,
  });

  final String catergory;
  final List<Color> colors;

  @override
  State<CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip> {
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
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: SweepGradient(
          colors: widget.colors,
          transform: GradientRotation(360 * value),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: aspectRatio * 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/icons/${widget.catergory}.png",
              height: aspectRatio * 65,
              width: aspectRatio * 65,
            ),
            SizedBox(width: width * 0.02),
            CustomText(text: widget.catergory),
          ],
        ),
      ),
    );
  }
}

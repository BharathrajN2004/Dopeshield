import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../components/common/network_image.dart';
import '../components/common/text.dart';
import '../utilities/theme.dart';
import 'course_detail_page.dart';
import '../utilities/constants.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  String selectedItem = "All";

  List<String> searchData = ["All", "Beginner", "Intermediate", "Advanced"];
  TextEditingController searchCtr = TextEditingController();

  @override
  void dispose() {
    searchCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: CustomText(
            text: "Courses".toUpperCase(),
            size: 40,
            weight: FontWeight.w900,
            color: textColor.withOpacity(.8),
          ),
        ),
        SizedBox(height: height * 0.04),

        // Search Field
        Container(
          height: height * 0.045,
          padding: EdgeInsets.only(
            top: height * 0.005,
            bottom: height * 0.005,
            left: width * 0.015,
            right: width * 0.01,
          ),
          decoration: BoxDecoration(
              color: secondaryColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: secondaryColor.withOpacity(.3))),
          child: Row(
            children: [
              Container(
                height: height * 0.035,
                padding: EdgeInsets.only(left: width * 0.02),
                decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(.55),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: secondaryColor.withOpacity(.6))),
                child: DropdownButton(
                  underline: const SizedBox(),
                  dropdownColor: Colors.white,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  elevation: 0,
                  alignment: Alignment.center,
                  hint: CustomText(
                    text: selectedItem.toString()[0].toUpperCase() +
                        selectedItem.toString().substring(1),
                    weight: FontWeight.w600,
                    size: 68 * aspectRatio,
                  ),
                  items: searchData
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: CustomText(
                            text: e.toString()[0].toUpperCase() +
                                e.toString().substring(1),
                            size: aspectRatio * 68,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedItem = value.toString();
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: width * 0.03),
                  alignment: Alignment.center,
                  child: TextField(
                    controller: searchCtr,
                    onSubmitted: (value) {
                      // if (value.isNotEmpty) {
                      //   searchDataFun();
                      // } else {
                      //   setState(() {
                      //     searchCtr.clear();
                      //     searchResult.clear();
                      //   });
                      // }
                    },
                    scrollPadding: EdgeInsets.zero,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: aspectRatio * 33,
                      height: 1,
                      color: textColor.withOpacity(.8),
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter course name",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          height: 1,
                          fontSize: aspectRatio * 33,
                          color: textColor.withOpacity(.6)),
                      contentPadding: EdgeInsets.only(bottom: aspectRatio * 30),
                      border: InputBorder.none,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          // if (searchCtr.text.isNotEmpty) searchDataFun();
                        },
                        child: Icon(
                          Icons.search_rounded,
                          color: textColor.withOpacity(.6),
                          size: aspectRatio * 50,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: height * 0.03),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: courseData.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseDetailPage(
                            data: Map<String, dynamic>.from(courseData[index]),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: height * 0.135,
                      margin: EdgeInsets.symmetric(vertical: height * 0.01),
                      padding: EdgeInsets.symmetric(
                          vertical: aspectRatio * 10,
                          horizontal: aspectRatio * 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: secondaryColor.withOpacity(.2),
                          border: Border.all(
                              color: secondaryColor.withOpacity(.3))),
                      child: Row(
                        children: [
                          CourseImage(
                              colors: colorSets[index % colorSets.length],
                              url: courseData[index]["url"]),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(bottom: aspectRatio * 10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: aspectRatio * 20,
                                      vertical: aspectRatio * 6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    gradient: LinearGradient(
                                      colors: [
                                        gradientColor1.withOpacity(.1),
                                        gradientColor2.withOpacity(.1)
                                      ],
                                    ),
                                  ),
                                  child: CustomText(
                                    text: courseData[index]["level"]
                                        .toString()
                                        .toUpperCase(),
                                    size: 26,
                                    weight: FontWeight.w800,
                                  ),
                                ),
                                CustomText(
                                  text: courseData[index]["description"]
                                      .toString(),
                                  size: 30,
                                  color: textColor,
                                  maxLine: 5,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}

class CourseImage extends StatefulWidget {
  const CourseImage({
    super.key,
    required this.colors,
    required this.url,
  });

  final List<Color> colors;
  final String url;

  @override
  State<CourseImage> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<CourseImage> {
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
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * .5,
      padding: const EdgeInsets.all(2),
      margin: EdgeInsets.only(right: width * .02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: SweepGradient(
          colors: [
            widget.colors[0].withOpacity(.6),
            widget.colors[1].withOpacity(.6),
            widget.colors[2].withOpacity(.6)
          ],
          transform: GradientRotation(360 * value),
        ),
      ),
      child: CustomNetworkImage(
        size: width * .5,
        radius: 4,
        url: widget.url,
      ),
    );
  }
}

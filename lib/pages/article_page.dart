import 'package:flutter/material.dart';

import '../components/common/network_image.dart';
import '../components/common/page_header.dart';
import '../components/common/text.dart';
import '../utilities/theme.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key, required this.data});

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
            top: height * 0.025, left: width * 0.04, right: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageHeader(tittle: "Article"),
            SizedBox(height: height * 0.04),
            CustomText(
              text: data["title"]!,
              size: 36,
              maxLine: 3,
              align: TextAlign.center,
              color: textColor.withOpacity(.9),
              weight: FontWeight.w800,
            ),
            Container(
              height: height * .225,
              width: width,
              margin: EdgeInsets.symmetric(
                  horizontal: width * 0.02, vertical: height * 0.025),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: secondaryColor,
                  width: 4,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: CustomNetworkImage(
                size: height * .225,
                radius: 10,
                url: data["url"],
                padding: 0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * 0.01),
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: aspectRatio * 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: secondaryColor.withOpacity(.2),
                    border: Border.all(
                      color: secondaryColor.withOpacity(.4),
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                  child: CustomText(
                    text: data["sport"]!,
                    size: 28,
                    weight: FontWeight.w900,
                  ),
                ),
                Expanded(
                  child: CustomText(
                    text: data["date"]!,
                    size: 30,
                    weight: FontWeight.w900,
                    color: textColor.withOpacity(.8),
                    maxLine: 2,
                    align: TextAlign.right,
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .02),
                child: SingleChildScrollView(
                  child: CustomText(
                    text: data["data"]!,
                    maxLine: 1000,
                    size: 30,
                    align: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

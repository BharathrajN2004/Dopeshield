import 'package:flutter/material.dart';

import '../components/common/network_image.dart';
import '../components/common/page_header.dart';
import '../components/common/text.dart';
import '../utilities/theme.dart';

class CasestudyPage extends StatelessWidget {
  const CasestudyPage({super.key, required this.data});

  final Map<String, dynamic> data;

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
            const PageHeader(tittle: "Case study"),
            SizedBox(height: height * 0.04),

            Row(
              children: [
                Container(
                  height: height * .175,
                  width: width * .45,
                  margin: EdgeInsets.only(
                    right: width * 0.06,
                    left: width * 0.02,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: secondaryColor,
                      width: 4,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                  child: CustomNetworkImage(
                    size: height * .175,
                    radius: 10,
                    url: data["url"],
                    padding: 0,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShaderMask(
                        shaderCallback: (bound) =>
                            linearGradient.createShader(bound),
                        child: CustomText(
                          text: data["name"]!.toString().toUpperCase(),
                          size: 37,
                          maxLine: 3,
                          align: TextAlign.start,
                          color: Colors.white,
                          weight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: height * 0.02),
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
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height: height * 0.03),
            // DataTable for Levels
            Container(
              margin: EdgeInsets.only(bottom: height * 0.02),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondaryColor.withOpacity(.2),
                  border: Border.all(color: secondaryColor.withOpacity(.6))),
              padding: EdgeInsets.symmetric(
                vertical: aspectRatio * 10,
                horizontal: width * 0.01,
              ),
              height: height * 0.265,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: DataTable(
                      dataRowMaxHeight: height * 0.06,
                      dataRowMinHeight: height * 0.06,
                      columnSpacing: width * 0.05,
                      dividerThickness: .3,
                      headingRowHeight: height * 0.06,
                      headingRowColor: const WidgetStatePropertyAll(bgColor),
                      dataTextStyle: TextStyle(
                        fontSize: 28 * aspectRatio,
                        fontWeight: FontWeight.w800,
                        color: textColor.withOpacity(.6),
                      ),
                      headingTextStyle: TextStyle(
                        fontSize: 30 * aspectRatio,
                        fontWeight: FontWeight.w900,
                        color: textColor.withOpacity(.8),
                      ),
                      columns: [
                        const DataColumn(
                          label: Text(
                            "Condition",
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "${data["name"]}\n (ng/mL)",
                          ),
                        ),
                        const DataColumn(
                          label: Text(
                            "Typical Person\n (ng/mL)",
                          ),
                        ),
                      ],
                      rows: List<List<String>>.from(data["level"]!)
                          .map(
                            (level) => DataRow(
                              cells: level
                                  .map(
                                    (value) => DataCell(
                                      SizedBox(
                                        width: level.indexOf(value) == 0
                                            ? width * .4
                                            : width * .25,
                                        child: Text(
                                          value,
                                          maxLines: 3,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              color: WidgetStatePropertyAll(
                                secondaryColor.withOpacity(.1),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .02),
                child: SingleChildScrollView(
                  child: CustomText(
                    text: data["description"]!,
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

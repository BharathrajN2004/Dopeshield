import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../components/common/page_header.dart';
import '../components/common/text.dart';
import '../utilities/constants.dart';
import '../utilities/theme.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  String selectedLanguage = languages[0];
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    final videoId =
        YoutubePlayer.convertUrlToId(widget.data["video"][selectedLanguage])!;
    controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        showLiveFullscreenButton: false,
        // hideControls: true,
        isLive: false
      ),
    );
  }

  void setLang(String language) {
    setState(() {
      selectedLanguage = language;
      final videoId =
          YoutubePlayer.convertUrlToId(widget.data["video"][selectedLanguage])!;

      controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          showLiveFullscreenButton: false,isLive: false,
          // hideControls: true,
        ),
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          children: [
            const PageHeader(tittle: "Course detail"),
            SizedBox(height: height * 0.04),
            CustomText(
              text: widget.data["description"]!,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: YoutubePlayer(
                  controller: controller,
                  showVideoProgressIndicator: true,
                  key: ObjectKey(controller),
                ),
              ),
            ),
            Wrap(
              runSpacing: aspectRatio * 20,
              spacing: aspectRatio * 20,
              alignment: WrapAlignment.center,
              children: languages
                  .map((e) => GestureDetector(
                        onTap: () => setLang(e),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.03,
                            vertical: aspectRatio * 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: e == selectedLanguage
                                ? gradientColor2.withOpacity(.6)
                                : secondaryColor.withOpacity(.2),
                            border: Border.all(
                              color: e == selectedLanguage
                                  ? gradientColor2
                                  : secondaryColor.withOpacity(.4),
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                          ),
                          child: CustomText(
                            text: e.toUpperCase(),
                            size: 23,
                            weight: FontWeight.w900,
                            color: e == selectedLanguage ? Colors.white : null,
                          ),
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: height * 0.02),
            Expanded(
                child: SingleChildScrollView(
              child: CustomTextWidget(
                inputText: widget.data["data"]!,
              ),
            ))
          ],
        ),
      )),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  final String inputText;

  const CustomTextWidget({super.key, required this.inputText});

  @override
  Widget build(BuildContext context) {
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return RichText(
      text: TextSpan(
        children: _parseStyledText(inputText, aspectRatio),
      ),
    );
  }

  List<TextSpan> _parseStyledText(String text, double aspectRatio) {
    List<TextSpan> spans = [];
    final regex = RegExp(r'(\*\*.*?\*\*|\&\&.*?\&\&|[^\*\&]+)');
    final matches = regex.allMatches(text);

    for (final match in matches) {
      final matchText = match.group(0)!;

      if (matchText.startsWith('**') && matchText.endsWith('**')) {
        spans.add(
          TextSpan(
            text: matchText.replaceAll('**', ''),
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: gradientColor2,
                fontFamily: "Nunito",
                fontSize: aspectRatio * 37),
          ),
        );
      } else if (matchText.startsWith('&&') && matchText.endsWith('&&')) {
        spans.add(
          TextSpan(
            text: matchText.replaceAll('&&', ''),
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: "Nunito",
                fontSize: aspectRatio * 36,
                color: textColor),
          ),
        );
      } else {
        spans.add(
          TextSpan(
            text: matchText,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: textColor.withOpacity(.7),
              fontFamily: "Nunito",
              fontSize: aspectRatio * 34,
            ),
          ),
        );
      }
    }

    return spans;
  }
}

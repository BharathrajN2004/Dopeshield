import 'package:flutter/material.dart';

const Color bgColor = Color(0xFFFFFFFF);

const Color gradientColor2 = Color(0xFF2274FC);

const Color gradientColor1 = Color(0xFF3BB8F6);

const Color secondaryColor = Color(0xFFE9E9EF);

const Color textColor = Color(0XFF1C2136);

const Color lightTextColor = Color(0xFFBFBFBF);

const LinearGradient linearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [gradientColor1, gradientColor2]);

List<List<Color>> colorSets = [
  // Red shades
  [const Color(0xFFFFCDD2), const Color(0xFFE57373), const Color(0xFFD32F2F)],

  // Green shades
  [const Color(0xFFC8E6C9), const Color(0xFF81C784), const Color(0xFF388E3C)],

  // Blue shades
  [const Color(0xFFBBDEFB), const Color(0xFF64B5F6), const Color(0xFF1976D2)],

  // Purple shades
  [const Color(0xFFE1BEE7), const Color(0xFFBA68C8), const Color(0xFF7B1FA2)],

  // Orange shades
  [const Color(0xFFFFE0B2), const Color(0xFFFFB74D), const Color(0xFFF57C00)],

  // Teal shades
  [const Color(0xFFB2DFDB), const Color(0xFF4DB6AC), const Color(0xFF00796B)],

  // Pink shades
  [const Color(0xFFF8BBD0), const Color(0xFFF06292), const Color(0xFFC2185B)],

  // Yellow shades
  [const Color(0xFFFFF9C4), const Color(0xFFFFF176), const Color(0xFFFBC02D)],
];

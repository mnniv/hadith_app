import 'package:flutter/material.dart';
import 'dart:ui';

class ColorManger {
  static Color primaryColor = Color(0xFF1F4892);
  static Color linear1 = Color(0xFF1F4892);
  static Color linear2 = Color(0xFF357BF8);
  static Color secondary = Color(0xFFCADDFF);
  static Color backgroundcolor = Colors.white;
  static Color grey = Colors.grey.shade200;
  static Color Black = Colors.black;
  static Color BlacColor = Color(0xFF353535);
  static Color Shadow = Colors.black12;
  static Color hintcolor = Color.fromARGB(255, 150, 150, 150);
  static Color titleblue = Color(0xFF013967);
  static Color whiteColor = Color(0xFFFCFCFC);
  static Color greencolor = Color(0xFF3AE668);
  static Color orangecolor = Color(0xFFFEAE1A);
  static Color redcolor = Color(0xFFEB0A0A);
  static Color blueclear = Color(0xFF40739E);
  static Color bluesky = Color(0xFFF0FBFB);

  ///////////////////////////
  static Color greybackgroundcolor = Color(0xFFEAEAEA);
  static Color homehintColor = Color(0xFFDADADA);
  static Color hometravellighn = Color(0xFFADADAD);
  static Color whiteColorBotton = Color(0xFFFEFAFA);
}

abstract class AppColors {
  // Core Surface & Text Colors

  static const Color background = Color(0xFF232832);
  static const Color foreground = Color(0xFFF3F3F3);
  static const Color card = Color(0xFF343B48);
  static const Color cardForeground = Color(0xFFF3F3F3);
  static const Color popover = Color(0xFF343B48);
  static const Color popoverForeground = Color(0xFFF3F3F3);

  // Semantic Colors
  static const Color primary = Color(0xFFE4BC66);
  static const Color primaryForeground = Color(0xFF272C38);
  static const Color secondary = Color(0xFF3D4655);
  static const Color secondaryForeground = Color(0xFFECECEC);
  static const Color muted = Color(0xFF3D4655);
  static const Color mutedForeground = Color(0xFFAAAEB6);
  static const Color accent = Color(0xFF554F3F);
  static const Color accentForeground = Color(0xFFEBD2A0);
  static const Color destructive = Color(0xFFBF3A36);
  static const Color destructiveForeground = Color(0xFFF9F7F7);

  // UI Element Colors
  static const Color border = Color(0x1FF3F3F3); // ~12% Opacity White
  static const Color input = Color(0x29F3F3F3); // ~16% Opacity White
  static const Color ring = Color(0xFFE4BC66);

  // Status & Islamic Classification Colors
  static const Color gold = Color(0xFFE4BC66);
  static const Color goldForeground = Color(0xFF272C38);
  static const Color sahih = Color(0xFF2E5B3D);
  static const Color sahihForeground = Color(0xFFB3E9C4);
  static const Color hasan = Color(0xFF23556E);
  static const Color hasanForeground = Color(0xFFAFDCF2);
  static const Color daif = Color(0xFF584D2B);
  static const Color daifForeground = Color(0xFFEFDFAC);
  static const Color mawdu = Color(0xFF58312B);
  static const Color mawduForeground = Color(0xFFEEB3AC);

  // Chart Colors
  static const Color chart1 = Color(0xFFE4BC66);
  static const Color chart2 = Color(0xFF55A4C7);
  static const Color chart3 = Color(0xFF57B28B);
  static const Color chart4 = Color(0xFFCBB254);
  static const Color chart5 = Color(0xFFC86154);

  // Sidebar Colors
  static const Color sidebar = Color(0xFF2D3340);
  static const Color sidebarForeground = Color(0xFFF3F3F3);
  static const Color sidebarPrimary = Color(0xFFE4BC66);
  static const Color sidebarPrimaryForeground = Color(0xFF272C38);
  static const Color sidebarAccent = Color(0xFF3D4655);
  static const Color sidebarAccentForeground = Color(0xFFECECEC);
  static const Color sidebarBorder = Color(0x1FF3F3F3);
  static const Color sidebarRing = Color(0xFFE4BC66);
}

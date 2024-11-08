import 'package:zapchat_design/src/utils/named.dart';
import 'package:flutter/rendering.dart';
import 'package:equatable/equatable.dart';

class AppColorsData extends Equatable {
  // Colors
  final Color white;
  final Color white66;
  final Color white33;
  final Color white16;
  final Color white8;
  final Color black;
  final Color black66;
  final Color black33;
  final Color black16;
  final Color black8;
  final Color grey;
  final Color grey66;
  final Color grey33;

  // Radial Gradients
  final Gradient blurple;
  final Gradient blurple66;
  final Gradient blurple33;
  final Gradient blurpleLight;
  final Gradient rouge;
  final Gradient rouge66;
  final Gradient rouge33;
  final Gradient gold;
  final Gradient gold66;
  final Gradient gold33;
  final Gradient greydient;
  final Gradient greydient66;
  final Gradient greydient33;

  AppColorsData({
    required this.white,
    required this.white66,
    required this.white33,
    required this.white16,
    required this.white8,
    required this.black,
    required this.black66,
    required this.black33,
    required this.black16,
    required this.black8,
    required this.grey,
    required this.grey66,
    required this.grey33,
    required this.blurple,
    required this.blurple66,
    required this.blurple33,
    required this.blurpleLight,
    required this.rouge,
    required this.rouge66,
    required this.rouge33,
    required this.gold,
    required this.gold66,
    required this.gold33,
    required this.greydient,
    required this.greydient66,
    required this.greydient33,
  });

// Dark mode
  factory AppColorsData.dark() => AppColorsData(
        // Colors (full or 66% / 33% transparent)
        white: Color(0xFFFFFFFF),
        white66: Color(0xFFFFFFFF).withOpacity(0.66),
        white33: Color(0xFFFFFFFF).withOpacity(0.33),
        white16: Color(0xFFFFFFFF).withOpacity(0.16),
        white8: Color(0xFFFFFFFF).withOpacity(0.08),
        black: Color(0xFF000000),
        black66: Color(0xFF000000).withOpacity(0.66),
        black33: Color(0xFF000000).withOpacity(0.33),
        black16: Color(0xFF000000).withOpacity(0.16),
        black8: Color(0xFF000000).withOpacity(0.08),
        grey: Color(0xFF232323),
        grey66: Color(0xFF333333).withOpacity(0.66),
        grey33: Color(0xFF333333).withOpacity(0.33),

        // Radial Gradients (top-left to bottom-right alignment)
        blurple: RadialGradient(
          colors: [Color(0xFF636AFF), Color(0xFF5445FF)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurple66: RadialGradient(
          colors: [
            Color(0xFF636AFF).withOpacity(0.66),
            Color(0xFF5445FF).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurple33: RadialGradient(
          colors: [
            Color(0xFF636AFF).withOpacity(0.33),
            Color(0xFF5445FF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurpleLight: RadialGradient(
          colors: [
            Color(0xFF888DFE).withOpacity(0.33),
            Color(0xFF7E73FF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        rouge: RadialGradient(
          colors: [Color(0xFFFF416E), Color(0xFFFF005C)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        rouge66: RadialGradient(
          colors: [
            Color(0xFFFF416E).withOpacity(0.66),
            Color(0xFFFF005C).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        rouge33: RadialGradient(
          colors: [
            Color(0xFFFF416E).withOpacity(0.33),
            Color(0xFFFF005C).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        gold: RadialGradient(
          colors: [Color(0xFFFFC736), Color(0xFFFFAD31)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        gold66: RadialGradient(
          colors: [
            Color(0xFFFFC736).withOpacity(0.66),
            Color(0xFFFFAD31).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        gold33: RadialGradient(
          colors: [
            Color(0xFFFFC736).withOpacity(0.33),
            Color(0xFFFFAD31).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        greydient: RadialGradient(
          colors: [Color(0xFFFFFFFF), Color(0xFFDBDBFF)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        greydient66: RadialGradient(
          colors: [
            Color(0xFFFFFFFF).withOpacity(0.66),
            Color(0xFFDBDBFF).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        greydient33: RadialGradient(
          colors: [
            Color(0xFFFFFFFF).withOpacity(0.33),
            Color(0xFFDBDBFF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
      );

// Light mode
  factory AppColorsData.light() => AppColorsData(
        // Colors (full or 66% / 33% transparent)
        white: Color(0xFF000000),
        white66: Color(0xFF000000).withOpacity(0.66),
        white33: Color(0xFF000000).withOpacity(0.33),
        white16: Color(0xFF000000).withOpacity(0.16),
        white8: Color(0xFF000000).withOpacity(0.08),
        black: Color(0xFFFFFFFF),
        black66: Color(0xFFFFFFFF).withOpacity(0.66),
        black33: Color(0xFFFFFFFF).withOpacity(0.33),
        black16: Color(0xFFFFFFFF).withOpacity(0.16),
        black8: Color(0xFFFFFFFF).withOpacity(0.08),
        grey: Color(0xFFDCDCDC),
        grey66: Color(0xFFCCCCCC).withOpacity(0.66),
        grey33: Color(0xFFCCCCCC).withOpacity(0.33),

        // Radial Gradients (top-left to bottom-right alignment)
        blurple: RadialGradient(
          colors: [Color(0xFF636AFF), Color(0xFF5445FF)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurple66: RadialGradient(
          colors: [
            Color(0xFF636AFF).withOpacity(0.66),
            Color(0xFF5445FF).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurple33: RadialGradient(
          colors: [
            Color(0xFF636AFF).withOpacity(0.33),
            Color(0xFF5445FF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurpleLight: RadialGradient(
          colors: [Color(0xFF636AFF), Color(0xFF5445FF)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        rouge: RadialGradient(
          colors: [Color(0xFFFF416E), Color(0xFFFF005C)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        rouge66: RadialGradient(
          colors: [
            Color(0xFFFF416E).withOpacity(0.66),
            Color(0xFFFF005C).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        rouge33: RadialGradient(
          colors: [
            Color(0xFFFF416E).withOpacity(0.33),
            Color(0xFFFF005C).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        gold: RadialGradient(
          colors: [Color(0xFFFFC736), Color(0xFFFFAD31)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        gold66: RadialGradient(
          colors: [
            Color(0xFFFFC736).withOpacity(0.66),
            Color(0xFFFFAD31).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        gold33: RadialGradient(
          colors: [
            Color(0xFFFFC736).withOpacity(0.33),
            Color(0xFFFFAD31).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        greydient: RadialGradient(
          colors: [Color(0xFFFFFFFF), Color(0xFFDBDBFF)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        greydient66: RadialGradient(
          colors: [
            Color(0xFFFFFFFF).withOpacity(0.66),
            Color(0xFFDBDBFF).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        greydient33: RadialGradient(
          colors: [
            Color(0xFFFFFFFF).withOpacity(0.33),
            Color(0xFFDBDBFF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
      );

// Grey mode
  factory AppColorsData.grey() => AppColorsData(
        // Colors (full or 66% / 33% transparent)
        white: Color(0xFFFFFFFF),
        white66: Color(0xFFFFFFFF).withOpacity(0.66),
        white33: Color(0xFFFFFFFF).withOpacity(0.33),
        white16: Color(0xFFFFFFFF).withOpacity(0.16),
        white8: Color(0xFFFFFFFF).withOpacity(0.08),
        black: Color(0xFF181818),
        black66: Color(0xFF181818).withOpacity(0.66),
        black33: Color(0xFF000000).withOpacity(0.33),
        black16: Color(0xFF000000).withOpacity(0.16),
        black8: Color(0xFF000000).withOpacity(0.08),
        grey: Color(0xFF232323),
        grey66: Color(0xFF333333).withOpacity(0.66),
        grey33: Color(0xFF333333).withOpacity(0.33),

        // Radial Gradients (top-left to bottom-right alignment)
        blurple: RadialGradient(
          colors: [Color(0xFF636AFF), Color(0xFF5445FF)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurple66: RadialGradient(
          colors: [
            Color(0xFF636AFF).withOpacity(0.66),
            Color(0xFF5445FF).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurple33: RadialGradient(
          colors: [
            Color(0xFF636AFF).withOpacity(0.33),
            Color(0xFF5445FF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        blurpleLight: RadialGradient(
          colors: [
            Color(0xFF888DFE).withOpacity(0.33),
            Color(0xFF7E73FF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        rouge: RadialGradient(
          colors: [Color(0xFFFF416E), Color(0xFFFF005C)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        rouge66: RadialGradient(
          colors: [
            Color(0xFFFF416E).withOpacity(0.66),
            Color(0xFFFF005C).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        rouge33: RadialGradient(
          colors: [
            Color(0xFFFF416E).withOpacity(0.33),
            Color(0xFFFF005C).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        gold: RadialGradient(
          colors: [Color(0xFFFFC736), Color(0xFFFFAD31)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        gold66: RadialGradient(
          colors: [
            Color(0xFFFFC736).withOpacity(0.66),
            Color(0xFFFFAD31).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        gold33: RadialGradient(
          colors: [
            Color(0xFFFFC736).withOpacity(0.33),
            Color(0xFFFFAD31).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),

        greydient: RadialGradient(
          colors: [Color(0xFFFFFFFF), Color(0xFFDBDBFF)],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        greydient66: RadialGradient(
          colors: [
            Color(0xFFFFFFFF).withOpacity(0.66),
            Color(0xFFDBDBFF).withOpacity(0.66)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
        greydient33: RadialGradient(
          colors: [
            Color(0xFFFFFFFF).withOpacity(0.33),
            Color(0xFFDBDBFF).withOpacity(0.33)
          ],
          center: Alignment.topLeft,
          radius: 1.5,
        ),
      );

  @override
  List<Object?> get props => [
        white.named('White'),
        white66.named('White'),
        white33.named('White'),
        white16.named('White'),
        white8.named('White'),
        black.named('White'),
        black66.named('White'),
        black33.named('White'),
        black16.named('White'),
        black8.named('White'),
        grey.named('White'),
        grey66.named('White'),
        grey33.named('White'),
        blurple.named('White'),
        blurple66.named('White'),
        blurple33.named('White'),
        rouge.named('White'),
        rouge66.named('White'),
        rouge33.named('White'),
        gold.named('White'),
        gold66.named('White'),
        gold33.named('White'),
        greydient.named('White'),
        greydient66.named('White'),
        greydient33.named('White'),
      ];
}

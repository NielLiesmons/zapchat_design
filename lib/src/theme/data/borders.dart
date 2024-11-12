import 'package:zapchat_design/src/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'line_thickness.dart';

class AppBorderData extends Equatable {
  final double thin16;
  final double thin33;
  final double medium;
  final double thick;

  AppBorderData({
    required this.thin16,
    required this.thin33,
    required this.medium,
    required this.thick,
  });

  factory AppBorderData.fromThickness(LineThicknessData thicknessData) =>
      AppBorderData(
        thin16: thicknessData.thin16,
        thin33: thicknessData.thin33,
        medium: thicknessData.medium,
        thick: thicknessData.thick,
      );

  @override
  List<Object?> get props => [
        thin16.named('thin16'),
        thin33.named('thin33'),
        medium.named('medium'),
        thick.named('thick'),
      ];
}
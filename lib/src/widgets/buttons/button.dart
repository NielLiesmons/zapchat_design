import 'package:tap_builder/tap_builder.dart';
import 'package:zapchat_design/zapchat_design.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.content,
    this.onTap,
    this.onLongPress,
    this.mainAxisSize = MainAxisSize.max,
    this.inactiveGradient,
    this.hoveredGradient,
    this.pressedGradient,
    this.inactiveColor,
    this.hoveredColor,
    this.pressedColor,
  });

  final List<Widget> content;
  final MainAxisSize mainAxisSize;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  // Gradients
  final Gradient? inactiveGradient;
  final Gradient? hoveredGradient;
  final Gradient? pressedGradient;

  // Solid Colors
  final Color? inactiveColor;
  final Color? hoveredColor;
  final Color? pressedColor;

  @override
  Widget build(BuildContext context) {
    return TapBuilder(
      onTap: onTap,
      onLongPress: onLongPress,
      builder: (context, state, hasFocus) {
        // Determine the scaling factor based on the button state
        double scaleFactor = 1.0;
        if (state == TapState.pressed) {
          scaleFactor = 0.99; // Slightly smaller on press
        } else if (state == TapState.hover) {
          scaleFactor = 1.01; // Slightly larger on hover (optional)
        }

        return Transform.scale(
          scale: scaleFactor,
          child: Semantics(
            enabled: true,
            selected: true,
            child: AppButtonLayout(
              content: content,
              mainAxisSize: mainAxisSize,
              gradient: state == TapState.hover
                  ? hoveredGradient
                  : state == TapState.pressed
                      ? pressedGradient
                      : inactiveGradient,
              backgroundColor: state == TapState.hover
                  ? hoveredColor
                  : state == TapState.pressed
                      ? pressedColor
                      : inactiveColor,
            ),
          ),
        );
      },
    );
  }
}

class AppButtonLayout extends StatelessWidget {
  const AppButtonLayout({
    super.key,
    required this.content,
    this.mainAxisSize = MainAxisSize.max,
    this.gradient,
    this.backgroundColor,
  });

  final List<Widget> content;
  final MainAxisSize mainAxisSize;
  final Gradient? gradient;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return AnimatedContainer(
      duration: theme.durations.fast,
      decoration: BoxDecoration(
        borderRadius: theme.radius.asBorderRadius().rad16,
        gradient: gradient,
        color: gradient == null
            ? backgroundColor
            : null, // Use color if gradient is null
      ),
      height: theme.sizes.s38,
      padding: EdgeInsets.symmetric(
        horizontal: theme.sizes.s12,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: mainAxisSize,
          children: content,
        ),
      ),
    );
  }
}
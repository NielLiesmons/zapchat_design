import 'package:flutter/foundation.dart';
import 'package:zaplab_design/zaplab_design.dart';

class AppTextSelectionControls extends TextSelectionControls {
  static const double _handleSize = 16.0;
  static const double _lineThickness = 2.0;

  @override
  Widget buildHandle(
      BuildContext context, TextSelectionHandleType type, double textLineHeight,
      [VoidCallback? onTap]) {
    print('Text line height: $textLineHeight');
    final theme = AppTheme.of(context);

    return AppContainer(
      width: 16.0,
      height: textLineHeight + 32,
      child: Column(
        children: [
          // Top circle - only visible for left handle
          AppContainer(
            width: _handleSize,
            height: _handleSize,
            decoration: BoxDecoration(
              gradient: type == TextSelectionHandleType.left
                  ? theme.colors.blurpleLight
                  : null,
              shape: BoxShape.circle,
            ),
          ),
          // Vertical line
          AppContainer(
            width: _lineThickness,
            height: textLineHeight,
            decoration: BoxDecoration(
              gradient: theme.colors.blurpleLight,
              borderRadius: BorderRadius.circular(10000),
            ),
          ),
          // Bottom circle - only visible for right handle
          AppContainer(
            width: _handleSize,
            height: _handleSize,
            decoration: BoxDecoration(
              gradient: type == TextSelectionHandleType.right
                  ? theme.colors.blurpleLight
                  : null,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Offset getHandleAnchor(TextSelectionHandleType type, double textLineHeight) {
    return Offset(8, textLineHeight + _handleSize);
  }

  @override
  Size getHandleSize(double textLineHeight) {
    return Size(_handleSize, textLineHeight + _handleSize + _handleSize);
  }

  @override
  Widget buildToolbar(
    BuildContext context,
    Rect globalEditableRegion,
    double textLineHeight,
    Offset selectionMidpoint,
    List<TextSelectionPoint> endpoints,
    TextSelectionDelegate delegate,
    ValueListenable<ClipboardStatus>? clipboardStatus,
    Offset? lastSecondaryTapDownPosition,
  ) {
    final theme = AppTheme.of(context);
    return CompositedTransformFollower(
      link: (delegate as EditableTextState).renderEditable.startHandleLayerLink,
      offset: Offset(0, -textLineHeight - theme.sizes.s56),
      child: AppTextSelectionMenu(
        position: selectionMidpoint,
        editableTextState: delegate,
      ),
    );
  }
}

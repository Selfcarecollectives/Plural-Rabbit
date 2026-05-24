import 'package:flutter/material.dart';
import '../../core/encryption/password_hasher.dart';

/// A 3×3 unlock-pattern widget.
///
/// Grid numbering (Technical doc §17.3):
///   0 1 2
///   3 4 5
///   6 7 8
///
/// - Minimum 4 points, no repeats
/// - Lines disappear after entry (security)
/// - Calls [onPatternComplete] with the hashable string on success
/// - Calls [onError] with a message on validation failure
class PatternLockWidget extends StatefulWidget {
  const PatternLockWidget({
    super.key,
    required this.onPatternComplete,
    this.onError,
    this.size = 280,
  });

  final void Function(String patternString) onPatternComplete;
  final void Function(String message)? onError;
  final double size;

  @override
  State<PatternLockWidget> createState() => _PatternLockWidgetState();
}

class _PatternLockWidgetState extends State<PatternLockWidget> {
  final List<int> _selectedPoints = [];
  Offset? _currentDragPos;
  bool _showLines = false;

  static const int _gridSize = 3;

  List<Offset> get _dotPositions {
    final cellSize = widget.size / _gridSize;
    return List.generate(_gridSize * _gridSize, (i) {
      final row = i ~/ _gridSize;
      final col = i % _gridSize;
      return Offset(
        col * cellSize + cellSize / 2,
        row * cellSize + cellSize / 2,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: GestureDetector(
        onPanStart: _onDragStart,
        onPanUpdate: _onDragUpdate,
        onPanEnd: _onDragEnd,
        child: CustomPaint(
          painter: _PatternPainter(
            dotPositions: _dotPositions,
            selectedPoints: _selectedPoints,
            currentDragPos: _showLines ? _currentDragPos : null,
            showLines: _showLines,
          ),
        ),
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    setState(() {
      _selectedPoints.clear();
      _showLines = true;
      _currentDragPos = details.localPosition;
      _selectNearestDot(details.localPosition);
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    setState(() {
      _currentDragPos = details.localPosition;
      _selectNearestDot(details.localPosition);
    });
  }

  void _onDragEnd(DragEndDetails details) {
    setState(() {
      _showLines = false;
      _currentDragPos = null;
    });
    _finalizePattern();
  }

  void _selectNearestDot(Offset pos) {
    const snapRadius = 30.0;
    final positions = _dotPositions;
    for (int i = 0; i < positions.length; i++) {
      if (_selectedPoints.contains(i)) continue;
      final dist = (positions[i] - pos).distance;
      if (dist < snapRadius) {
        _selectedPoints.add(i);
        break;
      }
    }
  }

  void _finalizePattern() {
    if (_selectedPoints.length < PatternConverter.minLength) {
      widget.onError?.call(
          'Pattern must have at least ${PatternConverter.minLength} points');
      setState(() => _selectedPoints.clear());
      return;
    }
    try {
      final patternStr = PatternConverter.toHashableString(_selectedPoints);
      widget.onPatternComplete(patternStr);
    } catch (e) {
      widget.onError?.call(e.toString());
    }
    setState(() => _selectedPoints.clear());
  }
}

class _PatternPainter extends CustomPainter {
  _PatternPainter({
    required this.dotPositions,
    required this.selectedPoints,
    required this.currentDragPos,
    required this.showLines,
  });

  final List<Offset> dotPositions;
  final List<int> selectedPoints;
  final Offset? currentDragPos;
  final bool showLines;

  @override
  void paint(Canvas canvas, Size size) {
    final dotPaint = Paint()
      ..color = const Color(0xFF6B3FA0)
      ..style = PaintingStyle.fill;

    final selectedDotPaint = Paint()
      ..color = const Color(0xFF6B3FA0).withOpacity(0.9)
      ..style = PaintingStyle.fill;

    final linePaint = Paint()
      ..color = const Color(0xFF6B3FA0).withOpacity(0.5)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    // Draw connecting lines if showing
    if (showLines && selectedPoints.length > 1) {
      for (int i = 0; i < selectedPoints.length - 1; i++) {
        canvas.drawLine(
          dotPositions[selectedPoints[i]],
          dotPositions[selectedPoints[i + 1]],
          linePaint,
        );
      }
      // Line to current drag position
      if (currentDragPos != null && selectedPoints.isNotEmpty) {
        canvas.drawLine(
          dotPositions[selectedPoints.last],
          currentDragPos!,
          linePaint,
        );
      }
    }

    // Draw all dots
    for (int i = 0; i < dotPositions.length; i++) {
      final isSelected = selectedPoints.contains(i);
      canvas.drawCircle(
        dotPositions[i],
        isSelected ? 16 : 12,
        isSelected ? selectedDotPaint : dotPaint,
      );
      // Outer ring for selected
      if (isSelected) {
        canvas.drawCircle(
          dotPositions[i],
          20,
          Paint()
            ..color = const Color(0xFF6B3FA0).withOpacity(0.3)
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2,
        );
      }
    }
  }

  @override
  bool shouldRepaint(_PatternPainter old) =>
      old.selectedPoints != selectedPoints ||
      old.currentDragPos != currentDragPos ||
      old.showLines != showLines;
}

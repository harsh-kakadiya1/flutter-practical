import 'package:flutter/material.dart';

/// Custom loading widget with various animation styles
class LoadingWidget extends StatefulWidget {
  final String? message;
  final double size;
  final Color? color;
  final LoadingStyle style;

  const LoadingWidget({
    super.key,
    this.message,
    this.size = 50.0,
    this.color,
    this.style = LoadingStyle.circular,
  });

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

enum LoadingStyle { circular, dots, pulse, wave }

class _LoadingWidgetState extends State<LoadingWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: widget.size,
            height: widget.size,
            child: _buildLoadingIndicator(),
          ),
          if (widget.message != null) ...[
            const SizedBox(height: 16.0),
            Text(
              widget.message!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    final Color color = widget.color ?? Theme.of(context).colorScheme.primary;

    switch (widget.style) {
      case LoadingStyle.circular:
        return AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return CircularProgressIndicator(
              value: _animation.value,
              strokeWidth: 3.0,
              color: color,
            );
          },
        );

      case LoadingStyle.dots:
        return AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                final double delay = index * 0.2;
                final double animationValue = (_animation.value - delay).clamp(
                  0.0,
                  1.0,
                );
                final double scale =
                    0.5 + (0.5 * (1 - (animationValue - 0.5).abs() * 2));

                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: color.withOpacity(scale),
                    shape: BoxShape.circle,
                  ),
                );
              }),
            );
          },
        );

      case LoadingStyle.pulse:
        return AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: 0.8 + (0.2 * _animation.value),
              child: Container(
                decoration: BoxDecoration(
                  color: color.withOpacity(0.3 + (0.7 * _animation.value)),
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        );

      case LoadingStyle.wave:
        return AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                final double delay = index * 0.1;
                final double animationValue = (_animation.value - delay).clamp(
                  0.0,
                  1.0,
                );
                final double height =
                    4.0 + (12.0 * (1 - (animationValue - 0.5).abs() * 2));

                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  width: 4.0,
                  height: height,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                );
              }),
            );
          },
        );
    }
  }
}

/// Full screen loading overlay
class LoadingOverlay extends StatelessWidget {
  final String? message;
  final LoadingStyle style;

  const LoadingOverlay({
    super.key,
    this.message,
    this.style = LoadingStyle.circular,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.3),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: LoadingWidget(message: message, style: style, size: 40.0),
        ),
      ),
    );
  }
}

/// Shimmer loading effect for cards
class ShimmerLoading extends StatefulWidget {
  final Widget child;
  final bool isLoading;

  const ShimmerLoading({
    super.key,
    required this.child,
    required this.isLoading,
  });

  @override
  State<ShimmerLoading> createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: -1.0,
      end: 2.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isLoading) return widget.child;

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.grey.shade300,
                Colors.grey.shade100,
                Colors.grey.shade300,
              ],
              stops: [
                _animation.value - 0.3,
                _animation.value,
                _animation.value + 0.3,
              ].map((stop) => stop.clamp(0.0, 1.0)).toList(),
            ).createShader(bounds);
          },
          child: widget.child,
        );
      },
    );
  }
}

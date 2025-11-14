import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Widget? imageWidget;
  final bool showOverlay;

  const GridCard({
    super.key,
    this.title,
    this.subtitle,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.onTap,
    this.trailing,
    this.imageWidget,
    this.showOverlay = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Image or content background
            if (imageWidget != null)
              imageWidget!
            else
              Container(
                color: backgroundColor ?? const Color.fromARGB(255, 0, 0, 0),
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (icon != null)
                      Icon(
                        icon,
                        size: 48,
                        color: iconColor ?? Theme.of(context).primaryColor,
                      ),
                    if (icon != null) const SizedBox(height: 12),
                    if (title != null)
                      Text(
                        title!,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    if (subtitle != null) const SizedBox(height: 8),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            // Overlay for text on images
            if (showOverlay && (title != null || subtitle != null))
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (title != null)
                        Text(
                          title!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 10,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                    ],
                  ),
                ),
              ),
            // Trailing widget (e.g., badges, icons)
            if (trailing != null)
              Positioned(
                top: 4,
                right: 4,
                child: trailing!,
              ),
          ],
        ),
      ),
    );
  }
}

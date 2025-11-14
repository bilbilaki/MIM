import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // compute
import 'package:waterfall_flow/waterfall_flow.dart';
import '../../widgets/grids/grid_card.dart';
import '../models/imagegallery.dart';
import '../services/gridviw/image.dart';
class GalleryGrid extends StatefulWidget {
  final List<ImageItem> items;
  GalleryGrid(this.items);

  @override
  _GalleryGridState createState() => _GalleryGridState();
}

class _GalleryGridState extends State<GalleryGrid> {
  late ThumbCacheService cache;
  final int thumbSize = 300; // px width of thumb generation target
  bool ready = false;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    ThumbCacheService.create().then((c) => setState(() { cache = c; ready = true; }));
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    // simple prefetch: load thumbnails ahead of viewport center
    final idx = (_controller.offset / 200).round(); // rough estimate
    _prefetchRange(idx - 6, idx + 12);
  }

  void _prefetchRange(int start, int end) {
    if (!ready) return;
    final s = start.clamp(0, widget.items.length - 1);
    final e = end.clamp(0, widget.items.length - 1);
    for (int i = s; i <= e; i++) {
      final item = widget.items[i];
      cache.getThumbnail(item, thumbSize); // fire-and-forget
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!ready) return const Center(child: CircularProgressIndicator());
    return WaterfallFlow.builder(
      controller: _controller,
      padding: const EdgeInsets.all(5.0),
      gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        lastChildLayoutTypeBuilder: (index) => index == widget.items.length
            ? LastChildLayoutType.foot
            : LastChildLayoutType.none,
      ),
      itemCount: widget.items.length + 1,
      itemBuilder: (context, index) {
        // Footer item
        if (index == widget.items.length) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: const Text(
              'No more items',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          );
        }

        final item = widget.items[index];
        return GridCard(
          imageWidget: FutureBuilder<Uint8List?>(
            future: cache.getThumbnail(item, thumbSize),
            builder: (ctx, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                );
              }
              if (snap.hasError || snap.data == null) {
                return Container(
                  color: Colors.grey[200],
                  child: const Icon(Icons.broken_image, size: 32, color: Colors.grey),
                );
              }
              return Image.memory(
                snap.data!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            },
          ),
          title: item.id,
          showOverlay: false, // Set to true if you want to show image ID overlay
          onTap: () {
            // Handle image tap - could open full screen viewer
            debugPrint('Tapped image: ${item.id}');
          },
        );
      },
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'page_layout.freezed.dart';
part 'page_layout.g.dart';

/// Represents a UI layout configuration that references multiple filesystem entries
/// (e.g., for dashboard, preview layout, or multi-panel interface)
@freezed
class PageLayout with _$PageLayout {
      const factory PageLayout({
        /// Unique identifier for this layout
    required String id,

    /// Display name of the layout
    required String name,

    /// Description of the layout purpose
    String? description,

    /// References to filesystem entries included in this layout
    /// Each entry is referenced by its FsEntry ID
    @Default(<String>[]) List<String> entryIds,

    /// Layout configuration data (positions, sizes, z-order, etc.)
    /// Structure depends on the specific layout system
    @Default(<String, dynamic>{}) Map<String, dynamic> layoutData,

    /// Metadata about when this layout was created/modified
    DateTime? createdAt,
    DateTime? updatedAt,

    /// Additional custom properties
    @Default(<String, dynamic>{}) Map<String, dynamic> customProperties,
  }) = _PageLayout;

  factory PageLayout.fromJson(Map<String, dynamic> json) =>
      _$PageLayoutFromJson(json);

  /// Creates a new layout with default values
  factory PageLayout.create({
        required String name,
    String? description,
    List<String>? entryIds,
    Map<String, dynamic>? layoutData,
    Map<String, dynamic>? customProperties,
  }) {
        return PageLayout(
          id: const Uuid().v4(),
      name: name,
      description: description,
      entryIds: entryIds ?? <String>[],
      layoutData: layoutData ?? <String, dynamic>{},
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      customProperties: customProperties ?? <String, dynamic>{},
    );
  }
}

/// Represents a single item/panel within a page layout
@freezed
class LayoutItem with _$LayoutItem {
      const factory LayoutItem({
        /// ID of the filesystem entry displayed in this panel
    required String entryId,

    /// Position and size information
    required double x,
    required double y,
    required double width,
    required double height,

    /// Z-order for overlapping panels
    @Default(0) int zIndex,

    /// Panel-specific configuration
    @Default(<String, dynamic>{}) Map<String, dynamic> panelConfig,

    /// Whether this panel is currently visible
    @Default(true) bool visible,
  }) = _LayoutItem;

  factory LayoutItem.fromJson(Map<String, dynamic> json) =>
      _$LayoutItemFromJson(json);
}
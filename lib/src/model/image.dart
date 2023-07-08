import 'package:meta/meta.dart';

@immutable
final class Image {
  final String id;
  final String? title;
  final String? description;
  final int? datetime;
  final String? type;
  final bool animated;
  final int? width;
  final int? height;
  final int? size;
  final int? views;
  final int? bandwidth;
  final String? vote;
  final bool? favorite;
  final bool? nsfw;
  final String? section;
  final String? accountUrl;
  final int? accountId;
  final bool? isAd;
  final bool? inMostViral;
  final bool? hasSound;
  final List<String>? tags;
  final int? adType;
  final String? adUrl;
  final int? edited;
  final bool? inGallery;
  final String? link;
  final Map<String, dynamic>? adConfig;

  Image._(
    this.id,
    this.title,
    this.description,
    this.datetime,
    this.type,
    this.animated,
    this.width,
    this.height,
    this.size,
    this.views,
    this.bandwidth,
    this.vote,
    this.favorite,
    this.nsfw,
    this.section,
    this.accountUrl,
    this.accountId,
    this.isAd,
    this.inMostViral,
    this.hasSound,
    this.tags,
    this.adType,
    this.adUrl,
    this.edited,
    this.inGallery,
    this.link,
    this.adConfig,
  );

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image._(
      json['id'] as String,
      json['title'] as String?,
      json['description'] as String?,
      json['datetime'] as int?,
      json['type'] as String?,
      json['animated'] as bool,
      json['width'] as int?,
      json['height'] as int?,
      json['size'] as int?,
      json['views'] as int?,
      json['bandwidth'] as int?,
      json['vote'] as String?,
      json['favorite'] as bool?,
      json['nsfw'] as bool?,
      json['section'] as String?,
      json['account_url'] as String?,
      json['account_id'] as int?,
      json['is_ad'] as bool?,
      json['in_most_viral'] as bool?,
      json['has_sound'] as bool?,
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['ad_type'] as int?,
      json['ad_url'] as String?,
      json['edited'] as int?,
      json['in_gallery'] as bool?,
      json['link'] as String?,
      json['ad_config'] as Map<String, dynamic>?,
    );
  }
}

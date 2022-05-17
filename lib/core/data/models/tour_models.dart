class TourStop {
  const TourStop({
    required this.uuid,
    required this.order,
    required this.title,
    required this.shortDescription,
    required this.audioUrl,
    required this.bodyText,
    required this.x,
    required this.y,
    required this.floorShortName,
    required this.media,
    bool this.isEasterEgg = false,
  });

  final String uuid;
  final int order;
  final String title;
  final String shortDescription;
  final String? audioUrl;
  final String bodyText;
  final double x;
  final double y;
  final String floorShortName;
  final List<Media> media;
  final bool isEasterEgg;

  factory TourStop.empty() {
    return TourStop(
      uuid: '',
      order: 0,
      title: 'NA',
      shortDescription: '',
      audioUrl: null,
      bodyText: '',
      x: 0.0,
      y: 0.0,
      floorShortName: '',
      media: [],
    );
  }

  bool get hasAudio => audioUrl != null;
  bool get hasVideo => hasMedia(MediaType.video);
  bool get hasPanoramic => hasMedia(MediaType.panoramic360);

  bool hasMedia(MediaType mType) {
    for (int i = 0; i < media.length; i++) {
      if (media[i].mediaType == mType) {
        return true;
      }
    }
    return false;
  }
}

class Media {
  Media({required this.imageUrl, this.videoUrl, required this.contentDescription, MediaType mediaType = MediaType.unspecified})
      : _mediaType = mediaType;

  final String imageUrl;
  final String? videoUrl;
  final String contentDescription; // for ADA
  final MediaType _mediaType;

  MediaType get mediaType {
    if (_mediaType != MediaType.unspecified) {
      return _mediaType;
    }
    if (videoUrl != null) {
      return MediaType.video;
    }
    return MediaType.image;
  }
}

enum MediaType { image, video, panoramic360, unspecified }

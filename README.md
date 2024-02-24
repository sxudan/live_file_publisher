# Introduction

live_file_publisher is a Flutter package that enables you to seamlessly publish your video file to RTSP or RTMP servers within your Flutter applications.

## Features

- Publish live video streams to RTSP or RTMP servers.
- Easy integration into your Flutter applications.


## Installation

```
flutter pub add live_file_publisher
```

## Usage

```dart
// import the package
import 'package:live_file_publisher/live_file_publisher.dart';

// Initialise
LiveFilePublisher filePublisher = LiveFilePublisher();


// Event callback
@override
void initState() {
  super.initState();
  filePublisher.addStateListener(onStateListener);
  filePublisher.addErrorListener(onErrorListener);
  filePublisher.addLogListener(onLogListener);
}

void onStateListener(PublishingState state) {
  print(state);
}

void onErrorListener(Object error) {
  print(error);
}

void onLogListener(String log) {
  print(log)
}

.
.
// Connect
filePublisher.connect(url: 'rtsp://localhost', mode: PublisherProtocol.RTSP_UDP);
// Publish 
filePublisher.publish(startTime: '00:00:00',filePath: <filepath>,name: 'mystream');

.
.
// Stop
filePublisher.stop();

```

### Enums

```dart
enum PublisherProtocol {
  RTMP,
  RTSP_UDP,
  RTSP_TCP,
}

enum PublishingState {
  Normal,
  RequestPublish,
  Publishing,
  RequestStopPublish,
}
```

### Known issues

There are some issues publishing iphone video which are in HEVC format. They need to be transcoded using iOS UIImagePicker compression or other compression techniques. Before publishing to the server, you need to shrink resolution to streaming video resolution (1280x720). By default, the package `image_picker` does it for you.

### Example

Please check the usage of this package in this example project https://github.com/sxudan/lets-watch

### License
This project is licensed under the MIT License - see the LICENSE file for details.

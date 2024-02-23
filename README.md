# Introduction

live_file_publisher is a Flutter package that enables you to seamlessly publish live video streams to RTSP or RTMP servers within your Flutter applications.

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
LiveFilePublisher filePublisher = LiveFilePublisher(mode: PublisherProtocol.RTSP_UDP, baseUrl: Environment.baseRtspUrl);


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

### Example

Please check the usage of this package in this example project https://github.com/sxudan/lets-watch

### License
This project is licensed under the MIT License - see the LICENSE file for details.

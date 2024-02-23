# live_file_publisher

`live_file_publisher` is a Flutter package that enables you to seamlessly publish live video streams to RTSP or RTMP servers within your Flutter applications.

## Installation

```
flutter pub add live_file_publisher
```

## Usage

### Import the package
```
import 'package:live_file_publisher/live_file_publisher.dart';
```

### Initialise

```
LiveFilePublisher filePublisher = LiveFilePublisher(mode: PublisherProtocol.RTSP_UDP, baseUrl: Environment.baseRtspUrl);
```

### Publish 

```
filePublisher.publish(startTime: '00:00:00',filePath: <filepath>,name: 'mystream');
```

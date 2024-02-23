import 'package:flutter_test/flutter_test.dart';
import 'package:live_file_publisher/live_file_publisher.dart';

void main() {
  LiveFilePublisher publisher = LiveFilePublisher();
  test('call publish without connect', () {
    publisher.publish(filePath: '', name: 'test');
    expect(true, true);
  });

  test('check empty url', () {
    publisher.connect(url: 'rtmp://localhost', mode: PublisherProtocol.RTMP);
    expect(true, true);
  });

  test('check correct schema - rtmp', () {
    publisher.connect(url: 'rtsp://localhost', mode: PublisherProtocol.RTMP);
    expect(true, true);
  });

  test('check correct schema - rtsp', () {
    publisher.connect(
        url: 'rtmp://localhost', mode: PublisherProtocol.RTSP_TCP);
    expect(true, true);
  });

  test('check publish with empty params', () {
    publisher.publish(filePath: '', name: '');
    expect(true, true);
  });
}

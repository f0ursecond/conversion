import 'package:dio/dio.dart';

void main(List<String> args) {
  sendMessage();
}

void sendMessage() async {
  final dio = Dio();
  final url = 'https://socket.can.co.id/emit';

  try {
    final response = await dio.post(
      url,
      data: {
        "id": "guard1111",
        "payload": {"message": "first take test"}
      },
      options: Options(
        headers: {
          "Authorization":
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5ZTMzNWQwZi02MGIwLTRjYzYtYjkzMS0zY2QyZTUwNDM0ZjEiLCJqdGkiOiI5ODliMjI4MzdkOTBkNGFhMDYzMzkyOTM1M2U4MTI0MjJhMzM4OTViNjg2OTk2Y2NjZjliYTBmZGQwOGY1MTQ0NzRhNWFiOWEyNzRiMmRhOCIsImlhdCI6MTc0MDQ2NjY3OS44MjMxMjIsIm5iZiI6MTc0MDQ2NjY3OS44MjMxMjMsImV4cCI6MTc3MjAwMjY3OS44MTc1NCwic3ViIjoiZDlhMWIxNjgtZTM5Ni00N2FkLWFjNTMtMjczN2ViZTQxMDYxIiwic2NvcGVzIjpbXX0.YvFpD23LEXp2NtWFvGyxnkNSY76gS9vDsAjWWVeYiWSc4CFiYpkCgxK_mQn6bTheaefoxGAiWNZuGbR6gbepZQ5v454YpBHrV6uD7u7_sPQv-IJzUAtruYi_B4AQqSlMlK4TFZ-Orfebskt6jlERrhTydVokoaRafBWoUnIxBD4wFDxk-0TIyZYKl1XznKNJqn-RsF7Z09AiXdd7oAPMJ9--YXcA-DWmyiGNz6v-Zn0WstnC1yN3lqTwkmyO3fx4rAgh8bCq6Jupv0WAolN7-8Xx7XtCVTFB1z-HWOSSbrx0ZXA49vRHkJoU1mxVTOBduHh3ZZ4HpN2_ibMPkRerQurZjMP-OZkBfti-ztt6kqD2JubU66NqusA4nlBYwimMjZAQGjlBO9nYQhU60oTP9KH3Cg7-rMhIc93n5I9GbIY9WqSCoN35H_Tt8xJrjWTzFMfWsfvPWvaOo2eI40JJzFGaCDqjyFlBXJyUguVQrc1-lCLH3pAu3Fbk9swkGt4QgNTTSUivMVrImYj62GfeZWXly3ClkSBeZ8Rqg16OOjO0tskeOpcaQh0UYGtbfoub428qsWAMhdn_uxQuS_HuZRafyB5sVEy2GwVg0n8D--uPTxBcgzIXrl089bvA7hS2jsr2jswrl6n4l27a-oqtycf3YIM-_JR4kyalEbgqASc",
          "X-API-KEY":
              "BHRaI4a3HXQfb2SXDJ1qpvumxYc9ftHgvR93gO9S8IxFLlLKzfY3QfvzzqNUiqJdM9eBHA4lcZseawOXmqOgeU3AqqkHR1s5gpPoU",
          "Content-Type": "application/json",
        },
      ),
    );

    print("Response: ${response.data}");
  } catch (e) {
    print("Error: $e");
  }
}

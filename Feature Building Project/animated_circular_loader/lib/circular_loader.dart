import 'package:flutter/material.dart';

class CircularLoader extends StatefulWidget {
  const CircularLoader({super.key});

  @override
  State<CircularLoader> createState() => _CircularLoaderState();
}

class _CircularLoaderState extends State<CircularLoader> {
  String message = "";
  String quoter = "";
  bool isLoading = false;

  void showQuote() {
    setState(() {
      message = "\"Be uncommon amongst uncommon people.\"";
      quoter = "- David Goggins";
    });
  }

  Future<void> delayFunction() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      isLoading = false;
      showQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Circular Loader"),
        centerTitle: true,
      ),
      body: isLoading
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 175,
                    ),
                    CircularProgressIndicator(),
                  ],
                ),
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Text(message),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 234,
                      ),
                      Text(
                        quoter,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        debugPrint("Clicked");
                        delayFunction();
                      },
                      child: Text("Click"))
                ],
              ),
            ),
    );
  }
}

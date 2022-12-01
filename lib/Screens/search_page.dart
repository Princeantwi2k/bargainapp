import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:pusher_beams/pusher_beams.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  initState() {
    super.initState();

    initPusherBeams();
  }

  getSecure() async {
    final BeamsAuthProvider provider = BeamsAuthProvider()
      ..authUrl = 'https://some-auth-url.com/secure'
      ..headers = {'Content-Type': 'application/json'}
      ..queryParams = {'page': '1'}
      ..credentials = 'omit';

    await PusherBeams.instance.setUserId(
        'user-id',
        provider,
        (error) => {
              if (error != null) {print(error)}

              // Success! Do something...
            });
  }

  initPusherBeams() async {
    // Let's see our current interests
    print(await PusherBeams.instance.getDeviceInterests());

    // This is not intented to use in web
    if (!kIsWeb) {
      await PusherBeams.instance
          .onInterestChanges((interests) => {print('Interests: $interests')});

      await PusherBeams.instance
          .onMessageReceivedInTheForeground(_onMessageReceivedInTheForeground);
    }
    await _checkForInitialMessage();
  }

  Future<void> _checkForInitialMessage() async {
    final initialMessage = await PusherBeams.instance.getInitialMessage();
    if (initialMessage != null) {
      _showAlert('Initial Message Is:', initialMessage.toString());
    }
  }

  void _onMessageReceivedInTheForeground(Map<Object?, Object?> data) {
    _showAlert(data["title"].toString(), data["body"].toString());
  }

  void _showAlert(String title, String message) {
    AlertDialog alert = AlertDialog(
        title: Text(title), content: Text(message), actions: const []);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () async {
                  await PusherBeams.instance.addDeviceInterest('bananas');
                },
                child: const Text('I like bananas')),
            OutlinedButton(
                onPressed: () async {
                  await PusherBeams.instance.removeDeviceInterest('bananas');
                },
                child: const Text("I don't like banana anymore")),
            OutlinedButton(
                onPressed: () async {
                  await PusherBeams.instance.addDeviceInterest('apples');
                },
                child: const Text('I like apples')),
            OutlinedButton(
                onPressed: () async {
                  await PusherBeams.instance.addDeviceInterest('garlic');
                },
                child: const Text('I like garlic')),
            OutlinedButton(
                onPressed: getSecure, child: const Text('Get Secure')),
            OutlinedButton(
                onPressed: () async {
                  await PusherBeams.instance.clearDeviceInterests();
                },
                child: const Text('Clear my interests'))
          ],
        ),
      ),
    );
  }
}

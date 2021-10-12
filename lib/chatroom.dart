import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  bool isLoading = true;
  final _key = UniqueKey();
  WebViewController? controller;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Color(0xFF858796),
      onRefresh: () async {
        return Future.delayed(Duration(seconds: 1), () {
          controller!.currentUrl();
        });
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: InkWell(
              onTap: () {
                Get.to(ChatRoom);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/chatnet.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xFF858796),
          centerTitle: true,
          title: Text(
            'PiHub ChatRoom',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 15,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: Stack(
          children: [
            WillPopScope(
              onWillPop: () async {
                String? url = await controller!.currentUrl();
                if (url == "https://chatroom.pihub.biz/") {
                  return true;
                } else {
                  controller!.goBack();
                  return false;
                }
              },
              child: Builder(builder: (context) {
                return WebView(
                    key: _key,
                    initialUrl: "https://chatroom.pihub.biz/",
                    javascriptMode: JavascriptMode.unrestricted,
                    onPageFinished: (finish) {
                      setState(() {
                        isLoading = false;
                      });
                    },
                    onWebViewCreated: (WebViewController wc) {
                      controller = wc;
                    });
              }),
            ),
            isLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFF858796),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:intl/intl.dart';
import 'package:lifechart/audioPlay.dart';
import 'package:lifechart/constants.dart';
import 'package:lifechart/sizeConfig.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageBox extends StatefulWidget {
  final bool isMe;
  final bool isImage;
  String imageLink;
  String text;
  bool isAudio;
  String audioLink;
  MessageBox({
    required this.isMe,
    this.imageLink = '',
    this.audioLink = '',
    required this.isAudio,
    required this.text,
    required this.isImage,
  });

  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  String getAssetSize(int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) +
        ' ' +
        suffixes[i];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 808;
    var b = SizeConfig.screenWidth / 375;

    return Padding(
      padding: widget.isMe
          ? EdgeInsets.only(
              left: b * 60, top: h * 10, right: b * 17, bottom: h * 10)
          : EdgeInsets.only(
              left: b * 17, top: h * 10, right: b * 60, bottom: h * 10),
      child: widget.isImage
          ? Column(
              crossAxisAlignment: widget.isMe
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: widget.isMe ? b * 40 : b * 0,
                      right: widget.isMe ? b * 0 : b * 40),
                  child: GestureDetector(
                    onLongPress: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(b * 30),
                            topRight: Radius.circular(b * 30),
                            bottomLeft:
                                Radius.circular(widget.isMe ? b * 30 : 0),
                            bottomRight:
                                Radius.circular(widget.isMe ? 0 : b * 30),
                          ),
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
                            placeholder: (context, url) => Center(
                              child: CupertinoActivityIndicator(),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : widget.isAudio
              ? Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: b * 15.22, vertical: h * 7.61),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(b * 20),
                      topRight: Radius.circular(b * 20),
                      bottomLeft: Radius.circular(widget.isMe ? b * 20 : 0),
                      bottomRight: Radius.circular(widget.isMe ? 0 : b * 20),
                    ),
                  ),
                  child: AudioPlay(),
                )
              : Column(
                  crossAxisAlignment: widget.isMe
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: widget.isMe ? Color(0xff515C6F) : ternary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(b * 20),
                          topRight: Radius.circular(b * 20),
                          bottomLeft: Radius.circular(widget.isMe ? b * 20 : 0),
                          bottomRight:
                              Radius.circular(widget.isMe ? 0 : b * 20),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.fromLTRB(b * 21, h * 10, b * 20, h * 10),
                        child: GestureDetector(
                          onLongPress: () {
                            Clipboard.setData(
                              ClipboardData(
                                text: widget.text,
                              ),
                            ).then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Copied to ClipBoard"),
                                  backgroundColor: ternary,
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth:
                                                SizeConfig.screenWidth * 0.6,
                                            minWidth: 0),
                                        child: Linkify(
                                          onOpen: (link) async {
                                            if (await canLaunch(link.url)) {
                                              await launch(
                                                link.url,
                                                enableJavaScript: true,
                                              );
                                            } else {
                                              throw 'Could not launch $link';
                                            }
                                          },
                                          text: widget.text,
                                          maxLines: null,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: b * 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          linkStyle: TextStyle(
                                            color: Colors.blue,
                                            fontSize: b * 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
    );
  }
}

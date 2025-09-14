// import 'dart:convert';
//
// import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:web_socket_channel/io.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// // class MyWebSocTestme extends StatelessWidget {
// //   const MyWebSocTestme({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: StreamBuilder(
// //         stream: webSocketService.stream,
// //         builder: (context, snapshot) {
// //           if (snapshot.hasData) {
// //             return Text('Received: ${snapshot.data}');
// //           } else if (snapshot.hasError) {
// //             return Text('Error: ${snapshot.error}');
// //           } else {
// //             print(snapshot.data);
// //             return CircularProgressIndicator();
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }
//
// class WebSocketService {
//   // final String token;
//   late WebSocketChannel _channel;
//   late Stream _broadcastStream;
//
//   WebSocketService() {
//     _connect();
//   }
//
//   void _connect() {
//     _channel = IOWebSocketChannel.connect(
//         'wss://tbtexperts.com/ws/customer/?token=${currentUser?.value.token ?? ''}');
//     _broadcastStream = _channel.stream.asBroadcastStream();
//
//     _broadcastStream.listen((message) {
//       // Handle incoming messages
//       print('Received: $message');
//       // Parse JSON if necessary
//       var parsedJson = jsonDecode(message);
//       // Handle your data accordingly
//     }, onError: (error) {
//       // Handle errors
//       print('Error: $error');
//     }, onDone: () {
//       // Handle closure
//       print('WebSocket channel closed');
//     });
//   }
//   void sendMessage(String message) {
//     _channel.sink.add(message);
//   }
//
//   void disconnect() {
//     _channel.sink.close();
//   }
//
//   Stream get stream => _broadcastStream;
// }
//
// Color periorityColor(item) {
//   if (item.toLowerCase().contains("low")) {
//     return Color(0xff13BC00);
//   } else if (item.toLowerCase().contains("medium")) {
//     return Color(0xffE3A225);
//   } else if (item.toLowerCase().contains("high")) {
//     return Color(0xffff8204);
//   } else if (item.toLowerCase().contains("urgent")) {
//     return Color(0xffC63939);
//     ;
//   } else {
//     return Color(0xff13BC00);
//   }
// }
//
// Color statuesColor(String item) {
//   if (item.toLowerCase().contains("sent")) {
//     return Color(0xff1B82A9);
//   } else if (item.toLowerCase().contains("pend")) {
//     return Color(0xffE3A225);
//   } else if (item.toLowerCase().contains("open")) {
//     return Color(0xff13BC00);
//   } else if (item.toLowerCase().contains("rej")) {
//     return Color(0xffC63939);
//   } else if (item.toLowerCase().contains("Open")) {
//     return Color(0xff1B82A9);
//   } else if (item.toLowerCase().contains("Pending")) {
//     return Color(0xffE3A225);
//   } else if (item.toLowerCase().contains("Done")) {
//     return Color(0xff1B82A9);
//   } else if (item.toLowerCase().contains("Process")) {
//     return Color(0xff177ee5);
//   } else if (item.toLowerCase().contains("Submitted")) {
//     return Color(0xff1B82A9);
//   } else if (item.toLowerCase().contains("client")) {
//     return Color(0xffff8204);
//   } else if (item.toLowerCase().contains("wait")) {
//     return Color(0xff5354fe);
//   } else if (item.toLowerCase().contains("approve")) {
//     return Color(0xff13BC00);
//   } else if (item.toLowerCase().contains("primary")) {
//     return Colors.blue;
//   } else if (item.toLowerCase().contains("success")) {
//     return Colors.green;
//   } else if (item.toLowerCase().contains("info")) {
//     return Colors.lightBlue;
//   } else if (item.toLowerCase().contains("warning")) {
//     return Colors.orange;
//   } else if (item.toLowerCase().contains("secondary")) {
//     return Colors.grey;
//   } else if (item.toLowerCase().contains("danger")) {
//     return Colors.red;
//   }
//
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//   // else if (item.toLowerCase().contains("modi")) {return Color(0xff00E1A";}
//
//   else
//     return Color(0xffe57e17);
// }
//
// Widget getIcon(String? iconName, {Color? color}) {
//   switch (iconName) {
//     case "clipboard-list":
//       return Icon(
//         FontAwesomeIcons.clipboardList,
//         color: color,
//       );
//     case "truck":
//       return Icon(
//         FontAwesomeIcons.truck,
//         color: color,
//       );
//     case "package":
//       return Icon(
//         FontAwesomeIcons.box,
//         color: color,
//       );
//     case "undo":
//       return Icon(
//         FontAwesomeIcons.arrowRotateLeft,
//         color: color,
//       );
//     case "calendar-check":
//       return Icon(
//         FontAwesomeIcons.calendarCheck,
//         color: color,
//       );
//     case "money-bill":
//       return Icon(
//         FontAwesomeIcons.moneyBill,
//         color: color,
//       );
//     default:
//       return Icon(
//         Icons.help_outline,
//         color: color,
//       ); // أيقونة افتراضية
//   }
// }

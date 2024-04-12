import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageUrls = [
    'assets/image.png',
    'assets/image.png',
    'assets/image.png',
  ];

  final List<String> webLinks = [
    'https://philips.com',
    'https://philips.com',
    'https://philips.com',
  ];

  void _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
      // Optionally, show a dialog or snackbar to inform the user about the error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Failed to launch URL: $url'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        onChanged: (text) {
                          setState(
                              () {}); // Update the state to trigger a rebuild
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search in Amazom.in",
                            contentPadding: EdgeInsets.all(2),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            suffixIcon: Icon(Icons.mic)),
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      IconButton(
                        icon: Icon(Icons.qr_code),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => QRScannerScreen(
                          //         GlobalKey(debugLabel: 'qrKey')),
                          //   ),
                          // );
                        },
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff9CDCCB),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Deleivary to Mohamed - Chennai 600089")
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xffC7F1E4),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Fresh")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Prime")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Travel")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Fasion")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Mini")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Parma")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Parma")
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 70,
                        width: 45,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/fresh.png',
                              height: 50,
                              width: 60,
                            ),
                            Text("Parma")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: imageUrls.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          int index = imageUrls.indexOf(imageUrl);
                          _launchURL(webLinks[index]);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Color(0xffE1E6E6),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child:
                            Image.asset('assets/asdad.png', fit: BoxFit.cover),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        height: 170,
                        width: 170,
                        padding: EdgeInsets.all(10),
                        child:
                            Image.asset('assets/cooker.png', fit: BoxFit.cover),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        height: 170,
                        width: 170,
                        padding: EdgeInsets.all(10),
                        child:
                            Image.asset('assets/cooker.png', fit: BoxFit.cover),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  // height: 200,
                  'assets/ad1.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        )));
  }
}

// class QRScannerScreen extends StatefulWidget {
//   final GlobalKey qrKey;

//   const QRScannerScreen(this.qrKey, {Key? key}) : super(key: key);

//   @override
//   _QRScannerScreenState createState() => _QRScannerScreenState();
// }

// class _QRScannerScreenState extends State<QRScannerScreen> {
//   late QRViewController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           QRView(
//             key: widget.qrKey,
//             onQRViewCreated: (QRViewController controller) {
//               setState(() {
//                 this.controller = controller;
//               });
//               controller.scannedDataStream.listen((scanData) {
//                 Navigator.pop(context, scanData.code);
//               });
//             },
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 'Scan QR Code',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('Cancel'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

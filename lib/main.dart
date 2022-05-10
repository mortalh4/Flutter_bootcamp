import 'package:flutter/material.dart';

import 'SignPage.dart';
import 'SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.043,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://www.upload.ee/image/14128958/logo_02-01.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Museum Guide", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w600),),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text("Gezi rehberiniz her zaman elinizde!", style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 40,
                              width: 149,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 44),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpPage()));
                                        },
                                        child: Text("Üye Girişi")),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 149,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignPage()));
                              },
                              child: Center(child: Text("Hesap Oluştur")),
                            ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text("Diğer Giriş Seçenekleri", style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Container(
                        height: 40,
                        width: 308,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 84),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.network("https://www.upload.ee/image/14046627/google.png"),
                              ),
                              Text("Google ile Giriş Yap"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 40,
                        width: 308,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 84),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.network("https://www.upload.ee/image/14046629/apple.png"),
                              ),
                              Text("Apple ile Giriş Yap"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.034,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.upload.ee/image/14128955/4118613-01.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right:16,top:187),
                    child: Container(
                      height: 431,
                      width :358,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Üyelik oluştur",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text(
                              "Rehbere erişebilmeniz için üyelik oluşturmanız gerekiyor.",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:16.0),
                              child: Text(
                                "Mail",
                                style:TextStyle(
                                  fontSize: 15,fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Form(
                              child: Column(

                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Mailinizi giriniz"
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:16.0),
                              child: Text(
                                "Şifre",
                                style:TextStyle(
                                  fontSize: 15,fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Lütfen şifre oluşturun"
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:16.0),
                              child: Text(
                                "Şifre Onayı",
                                style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Form(
                              child: Column(
                                children:[
                                  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Şifre onayınızı girin",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:16.0) ,
                              child:  Text(
                                "Üyelik oluşturduğunuzda Son Kullanıcı Lİsans Sözleşmesi'ni kabul etmiş sayılırsınız.",
                                style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16, left: 8),
                              child: Container(
                                height: 40,
                                width: 308,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 110),
                                  child: Row(
                                    children: [
                                      Text("Üyelik Oluştur"),
                                    ],
                                  ),
                                ),
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
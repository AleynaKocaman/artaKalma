import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/resimler/logo.jpeg", width: 250, height: 250),

            _adSoyad(),
            SizedBox(
              height: 25.0,
            ),
            _eposta(),
            SizedBox(
              height: 25.0,
            ),
            _sifre(),
            SizedBox(
              height: 25.0,
            ),
            _signUpButton(),
            const Padding(padding: EdgeInsets.all(10), child: Text("Ya da")),
            _loginButton(),

          ],
        ),

      ),
    );
  }

  Widget _adSoyad() =>
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
              border: OutlineInputBorder(),
              labelText: "Ad Soyad"
          ),

        ),
      );

  Widget _soyadiniz() =>
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
              labelText: "Soyadınız",
            border: OutlineInputBorder(),
          ),

        ),
      );

  Widget _eposta() =>
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),

              ),
              labelText: "E-posta",
            border: OutlineInputBorder(),
          ),

        ),
      );

  Widget _sifre() =>
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),

              ),
              labelText: "Şifre",
            border: OutlineInputBorder(),
          ),

        ),
      );



  Widget _loginButton() => ElevatedButton(
    child: const Text("Giriş Yap"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepOrange,
    ),
    onPressed: () {},
  );

  Widget _signUpButton() => ElevatedButton(
    child: const Text("Üye Ol"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepOrange,
    ),
    onPressed: () {},
  );


}






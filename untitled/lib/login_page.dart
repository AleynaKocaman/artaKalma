import 'package:flutter/material.dart';
import 'package:untitled/password_page.dart';
import 'package:untitled/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? username;
  String? password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //klavye açıldığında yazı yazacağımız textin yukarı kaymaması için
      body: Form(
        //form işlemidir dışardan gelen bilgileri kontrol etmek için form kullanılır
        key: _formKey, //forma formKey sayesinde ulaşılabilinir
        child:
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/resimler/logo.jpeg", width: 250, height: 250),
              _kullaniciAdi(),
              SizedBox(
                height: 25.0,
              ),
              _sifre(),
              _sifremiUnuttum(),
              _loginButton(),
              const Padding(padding: EdgeInsets.all(10), child: Text("Ya da")),
              _signUpButton()
            ],
          ),

      ),
    );
  }

  Widget _kullaniciAdi() => Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          //textbox kutusunu design etmek
          decoration: InputDecoration(
              //focusborder--> üzerine tıklandığında şekillenmesi
              focusedBorder: OutlineInputBorder(
                //outlineborder-->kutu modeli yapar
                borderSide: BorderSide(color: Colors.orange),
              ),
              labelText: "Kullanıcı Adı",
              //labelStyle: TextStyle(color: Colors.orange),
              border: OutlineInputBorder()
          ),

          //aleyna girildi value ye aleynayı atacayak
          validator: (value) {
            //kullanıcı bu alana şunu girdi şunu girdi
            if (value?.isEmpty ?? true) {
              return "Kullanıcı adını giriniz";
            } else {
              return null;
            }
          },
          //value sadece değişkendir validator ile farklıdır
          onSaved: (value) {
            username = value;
          },
        ),
      );

  Widget _sifre() => Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          //textbox kutusunu design etmek
          obscureText: true,
          decoration: InputDecoration(
              //focusborder--> üzerine tıklandığında şekillenmesi
              focusedBorder: OutlineInputBorder(
                //outlineborder-->kutu modeli yapar
                borderSide: BorderSide(color: Colors.orange),
              ),
              labelText: "Şifre",
              //labelStyle: TextStyle(color:Colors.orange), //yazının rengini ayarlar
              border: OutlineInputBorder()),
          //aleyna girildi value ye aleynayı atacayak
          validator: (value) {
            if (value?.isEmpty ?? true) {
              //null olma durumu karşılığında if bloğu atlanır
              return "Şifrenizi giriniz";
            } else {
              return null;
            }
          }, //kullanıcı bu alana şunu girdi şunu girdi

          //value sadece değişkendir validator ile farklıdır
          onSaved: (value) {
            password = value;
          },
        ),
      );

  Widget _sifremiUnuttum() => Padding(
        padding: const EdgeInsets.only(top: 5, left: 230),
        child: Row(
          children: <Widget>[
            MaterialButton(
              child: Text(
                "Şifremi Unuttum",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context)=>const PasswordPage())
                );
              },
            )
          ],
        ),
      );

  Widget _loginButton() => ElevatedButton(
        child: const Text("Giriş Yap"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            if (username == "a" && password == "a") {
              //debugPrint("giriş başarılı");
            } else {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("hata"),
                    );
                  });
            }
          }
        },
      );

  Widget _signUpButton() => ElevatedButton(
        child: const Text("Üye Ol"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=>const SignUpPage())
          );

        },
      );



}

import 'package:chat_flutter/widgets/boton_azul.dart';
import 'package:chat_flutter/widgets/custom_input.dart';
import 'package:chat_flutter/widgets/labels.dart';
import 'package:chat_flutter/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(
                    stringImagen: 'assets/tag-logo.png',
                    texto: 'Registro',
                  ),
                  _Form(),
                  Labels(
                      ruta: 'login',
                      titulo: 'Ya tienes cuenta??',
                      subtitulo: 'INGRESA AQUI'),
                  Text(
                    'Terminos y condiciones de uso',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: "Nombre",
            keyboardType: TextInputType.name,
            textController: this.nameCtrl,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: "Correo electronico",
            keyboardType: TextInputType.emailAddress,
            textController: this.emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: "Contraseña",
            textController: this.passCtrl,
            isPassword: true,
          ),
          // CustomInput(),
          // CustomInput(),
          BotonAzul(
              text: 'CREAR',
              onPressed: () {
                print(emailCtrl.text);
                print(passCtrl.text);
                print(nameCtrl.text);
              })
        ],
      ),
    );
  }
}

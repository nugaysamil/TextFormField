import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  TextFormFieldKullanimi({Key? key}) : super(key: key);

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextForm Field Kullanımı'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  //initialValue: 'SamilNugay',
                  decoration: InputDecoration(
                      // errorStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Username',
                      hintText: 'UserName'),
                  validator: (deger) {
                    if (deger!.length < 4) {
                      return 'Username en az 4 karakter olmalı';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // initialValue: 'samil_Nugay@hotmail.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      // errorStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Email',
                      hintText: 'Email'),
                  validator: (deger) {
                    if (!EmailValidator.validate(deger!)) {
                      return 'Gecerli mail giriniz';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // initialValue: 'samil_Nugay@hotmail.com',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      // errorStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Password',
                      hintText: 'Password'),
                  validator: (deger) {
                    if (deger!.length < 6) {
                      return 'Sifre en az 6 karakter olmalı';
                    } else
                      return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

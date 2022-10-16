import 'dart:convert';
import 'package:encrypt/encrypt.dart';

String enc(String Keyy,String value)
{
  // var key =  Key.fromUtf8(Keyy);
  // var b64key = Key.fromBase64(base64Url.encode(key.bytes));
  // var fernet = Fernet(b64key);
  // var encrypter = Encrypter(fernet);
  //
  // final encrypted = encrypter.encrypt(value).base64.toString();
  // return encrypted;

  final key = Key.fromUtf8(Keyy); //32 chars
  final iv = IV.fromUtf8('put16characters!'); //16 chars
  final e = Encrypter(AES(key, mode: AESMode.cbc));
  final encrypted_data = e.encrypt(value, iv: iv);
  return encrypted_data.base64;
}


String dec(String Keyy,String value)
{
  // var key =  Key.fromUtf8(Keyy);
  // var b64key = Key.fromBase64(base64Url.encode(key.bytes));
  // var fernet = Fernet(b64key);
  // var encrypter = Encrypter(fernet);
  //
  // final encrypted = encrypter.encrypt(value);
  // final decripted = encrypter.decrypt(encrypted);
  //
  // return decripted.toString();
  final key = Key.fromUtf8(Keyy); //32 chars
  final iv = IV.fromUtf8('put16characters!'); //16 chars
  final e = Encrypter(AES(key, mode: AESMode.cbc));
  final decrypted_data = e.decrypt(Encrypted.fromBase64(value), iv: iv);
  return decrypted_data;

}
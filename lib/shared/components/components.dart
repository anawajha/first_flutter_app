

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextFormFiled({
  required TextEditingController controller,
  required IconData prefix,
  required String label,
  required TextInputType type,
  bool isPassword = false,
  Function? onChange(value)?,
  Function? onSubmit(value)?,
  required String? validate(value),
  IconData? suffix,
  Function? suffixPressed()?,
}) => TextFormField(
      validator: validate,
      obscureText: isPassword,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      controller: controller,
    keyboardType: type,
    decoration: InputDecoration(
      labelText:label,
      prefixIcon: Icon(prefix),
      suffixIcon: suffix != null ? IconButton(onPressed: suffixPressed, icon: Icon(suffix)) : null,
      border: OutlineInputBorder(),
    ),
  );


email(value){
if(value!.isEmpty){
return 'Email must not be empty';
}else if(!(value.contains('@') && value.contains('.'))){
return 'Invalid email';
}else return null;
}
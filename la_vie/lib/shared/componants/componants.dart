import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultbutton ({
  double width = double.infinity,
  Color background = Colors.green,
  required void Function()? function,
  required String text,
  bool isUpperCase = true,
  double radius =0.0

})=> Container(
  width: width,

  child: MaterialButton(

    child: Text(
      isUpperCase? text.toUpperCase(): text,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
      ),

    ),
    onPressed:  function ,

  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
);

Widget defaultTextButton({
  required void Function()? function,
  required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
      ),
    );

Widget defaultFormField({
  required TextEditingController  controller,
  required TextInputType type,
  void Function()? onTap,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  required  String? Function(String?)? validate,
  String? label,
  IconData? prefix ,
  IconData? suffix,
  Function? suffixPressed,
  bool obscureText = false
})=> TextFormField(
  controller: controller,
  onFieldSubmitted: onSubmit,
  keyboardType: type,
  obscureText: obscureText,
  onTap: onTap,
  onChanged: onChange,
  decoration: InputDecoration(
    labelText:label,
    hoverColor: Colors.purple,
    border: OutlineInputBorder() ,
    isDense: true,
    contentPadding: EdgeInsets.fromLTRB(10, 20,0, 0),
    // prefixIcon: Icon(
    //     prefix
    // ),
    suffixIcon:  suffix != null ? IconButton(
        onPressed: ()
        {
          suffixPressed!();
        },
        icon: Icon(suffix)) : null ,
  ),
  validator: validate,


);
void navigateAndFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );
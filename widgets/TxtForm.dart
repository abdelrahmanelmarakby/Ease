import 'package:flutter/material.dart';
import 'package:wechive/core/widgets/Text.dart';

class TxtForm extends StatelessWidget {
  const TxtForm(
      {Key? key,
      required this.textFieldName,
      required this.editingController,
      this.textFieldNameColor = Colors.grey,
      this.textFieldHint = " ",
      this.inputAction = TextInputAction.next,
      this.obscure = false,
      this.validator,
      this.autofillHints,
      this.keyboardType,
      this.fillColor = Colors.white,
      this.validateMode = AutovalidateMode.always})
      : super(key: key);
  final String textFieldName;
  final Color textFieldNameColor;
  final String textFieldHint;
  final bool obscure;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;
  final TextEditingController editingController;
  final TextInputType? keyboardType;
  final Color fillColor;
  final AutovalidateMode validateMode;
  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Txt(
              textFieldName,
              textAlign: TextAlign.left,
              color: textFieldNameColor,
            ),
          ),
          TextFormField(
            enableSuggestions: true,
            textInputAction: inputAction,
            obscureText: obscure,
            autofillHints: autofillHints,
            autovalidateMode: validateMode,
            controller: editingController,
            keyboardType: keyboardType,
            validator: validator,
            decoration: InputDecoration(
                hintText: textFieldHint,
                //    labelText: "your name".tr,
                focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.green)),
                fillColor: fillColor,
                filled: true,
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(6))),
          ),
        ],
      ),
    );
  }
}

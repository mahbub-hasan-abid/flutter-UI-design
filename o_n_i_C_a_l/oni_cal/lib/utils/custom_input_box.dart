import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormTextFiled extends StatefulWidget {
  FormTextFiled(
      {super.key,
      required this.title,
      required this.lebel,
      this.maxLine = 1,
      this.isReadOnly = false,
      this.optional = false,
      this.keyboardType = TextInputType.text,
      required this.controller,
      this.additionalValidation = '',
      this.focusNode,
      this.ontap});

  FocusNode? focusNode;
  final String title;
  final String lebel;
  final int maxLine;
  final TextEditingController controller;
  final bool isReadOnly;
  TextInputType keyboardType;
  final bool optional;
  final String additionalValidation;
  void Function()? ontap;

  static InputDecoration getDecoration(String labelText) {
    return InputDecoration(
      alignLabelWithHint: true,
      labelStyle: const TextStyle(fontSize: 12),
      labelText: labelText,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      fillColor: Colors.grey.shade200,
      filled: true,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
    );
  }

  @override
  State<FormTextFiled> createState() => _FormTextFiledState();
}

class _FormTextFiledState extends State<FormTextFiled> {
  @override
  Widget build(BuildContext context) {
    var wd = MediaQuery.of(context).size.width;
    var ht = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                child: TextFormField(
                  focusNode: widget.focusNode,
                  onTap: widget.ontap,
                  readOnly: widget.isReadOnly,
                  controller: widget.controller,
                  maxLines: null,
                  keyboardType: widget.keyboardType,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    labelStyle: const TextStyle(fontSize: 12),
                    labelText: widget.lebel,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                  ),
                  validator: !widget.optional
                      ? (value) {
                          if (widget.additionalValidation.isNotEmpty) {
                            if (!value!.contains(widget.additionalValidation)) {
                              return 'Field must contain ${widget.additionalValidation}';
                            }
                          }
                          if (value == null || value.isEmpty) {
                            return 'Please fill up the field';
                          }
                          return null;
                        }
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

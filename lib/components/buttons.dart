import 'package:flutter/material.dart';

class ButtonComp extends StatefulWidget {
  String label;
  bool isPrimary;
  // Function function;
  ButtonComp({super.key, this.label = "", this.isPrimary = true});

  @override
  State<ButtonComp> createState() => _ButtonCompState();
}

class _ButtonCompState extends State<ButtonComp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.orangeAccent, width: widget.isPrimary ? 0 : 2),
          color: widget.isPrimary ? Colors.orange : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(
              color: widget.isPrimary ? Colors.white : Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}

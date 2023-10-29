import 'package:flutter/material.dart';

class BasicIconButton extends StatefulWidget {
  const BasicIconButton({super.key, this.iconSize, this.onPressed, this.icon});

  final double? iconSize;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  State<BasicIconButton> createState() => _BasicIconButtonState();

  static List<BasicIconButton> generateList(int amount,
          {double? iconSize, VoidCallback? onPressed, IconData? icon}) =>
      List.generate(
          amount,
          (index) => BasicIconButton(
                iconSize: iconSize,
                onPressed: onPressed,
                icon: icon,
              ));
}

class _BasicIconButtonState extends State<BasicIconButton> {
  @override
  Widget build(BuildContext context) => IconButton(
        iconSize: widget.iconSize ?? 30,
        onPressed: widget.onPressed ?? () {},
        icon: Icon(widget.icon ?? Icons.computer),
      );
}

class AdvancedIconButton extends StatefulWidget {
  static int _idCounter = 0;

  AdvancedIconButton(
      {super.key, this.iconSize, this.onPressed, this.icon, int? id}) {
    _id = id ?? _idCounter++;
  }

  late final int? _id;
  final double? iconSize;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  State<AdvancedIconButton> createState() => _AdvancedIconButton();

  static List<AdvancedIconButton> generateList(int amount,
          {double? iconSize, VoidCallback? onPressed, IconData? icon}) =>
      List.generate(
          amount,
          (index) => AdvancedIconButton(
                iconSize: iconSize,
                onPressed: onPressed,
                icon: icon,
              ));
}

class _AdvancedIconButton extends State<AdvancedIconButton> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onLongPress: advancedButtonLongPress,
        child: IconButton(
          iconSize: widget.iconSize ?? 30,
          onPressed: widget.onPressed ?? () {},
          icon: Icon(widget.icon ?? Icons.computer),
        ),
      );

  advancedButtonLongPress() {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
            content: Text("you have pressed button ${widget._id}"),
            backgroundColor: Colors.teal,
            // shape: StadiumBorder(),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            behavior: SnackBarBehavior.floating,
            width: MediaQuery.of(context).size.width * 0.8,
            // padding: const EdgeInsets.all(50),
            // margin: const EdgeInsets.all(50),
            // elevation: 30,
            duration: const Duration(seconds: 3),
            action: SnackBarAction(
              label: 'Dismiss',
              disabledTextColor: Colors.white,
              textColor: Colors.yellow,
              onPressed: () {
                ScaffoldMessenger.of(context).clearSnackBars();
              },
            ),
            onVisible: () {
              //your code goes here
            }),
      );
  }
}

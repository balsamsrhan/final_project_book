import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppIndicator extends StatefulWidget {
  final bool isSelected;
  double marginEnd;

  AppIndicator({
    Key? key,
    required this.isSelected,
    this.marginEnd = 0,
  }) : super(key: key);

  @override
  State<AppIndicator> createState() => _AppIndicatorState();
}

class _AppIndicatorState extends State<AppIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: widget.marginEnd),
      child: Container(
        width: 10.w,
        height: 10.h,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: widget.isSelected
              ? const Color(0XFF444251)
              : Colors.grey.shade300,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:jain/constants/size.dart';

Offset getBoxOffset(GlobalKey key) {
  RenderBox box = (key.currentContext!.findRenderObject() as RenderBox);
  return box.globalToLocal(Offset.zero);
}

double screenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;
double screenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;

double widthFactor(BuildContext context) =>
    (screenWidth(context)) / canvasWidth;

double heightFactor(BuildContext context) =>
    (screenHeight(context)) / canvasHeight;

navigateTo(BuildContext context, {required Widget screen}) {
  //TODO Implement Navigation functionality here...
}
Future<Uint8List> loadSvgAsset(String path) async {
  final ByteData data = await rootBundle.load(path);
  final Uint8List svgData = data.buffer.asUint8List();
  return svgData;
}

Size getSizeByKey({required GlobalKey key}) {
  RenderBox box = key.currentContext!.findRenderObject() as RenderBox;

  return box.size;
}

Future<String> selectDate(
  BuildContext context,
) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );

  String date = getformattedDate(pickedDate);
  return date;
}

String getformattedDate(DateTime? dateTime) {
  if (dateTime != null) return DateFormat('dd MMM yyyy').format(dateTime);

  return "";
}

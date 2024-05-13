import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentStatus {
  String? label;
  DateTime? deadline;
  Color? color;
  bool? cancelActionAvaibility;
  bool? requestRefundActionAvaibility;
  bool? rescheduleActionAvaibility;
  AppointmentStatus.notConfirmed(DateTime deadline) {
    label = "NOT CONFIRMED";
    color = const Color(0xFFF68C1F);
    deadline = deadline;
    cancelActionAvaibility = true;
    requestRefundActionAvaibility = false;
    rescheduleActionAvaibility = false;
  }
  AppointmentStatus.confirmed() {
    label = "CONFIRMED";
    color = const Color(0xFF1ABFB5);
    cancelActionAvaibility = true;
    requestRefundActionAvaibility =
        false; // ICI il va faire une demande pour que sa reservation soit rembourssé apres l'avoir annuler d'abord
    rescheduleActionAvaibility = true;
  }
  AppointmentStatus.cancled() {
    label = "CANCLED";
    color = Colors.red;
    cancelActionAvaibility = false;
    requestRefundActionAvaibility = true;
    rescheduleActionAvaibility = true;
  }
}

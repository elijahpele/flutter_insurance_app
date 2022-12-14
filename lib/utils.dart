import 'dart:io';
import "package:flutter/material.dart";
import "package:intl/intl.dart";


Future selectDate(
    BuildContext inContext
    ) async {
  DateTime initialDate = DateTime.now();
  DateTime? picked = await showDatePicker(
      context : inContext, initialDate : initialDate,
      firstDate : DateTime(1900), lastDate : DateTime(2100)
  );
    return "${picked?.year},${picked?.month},${picked?.day}";
  }

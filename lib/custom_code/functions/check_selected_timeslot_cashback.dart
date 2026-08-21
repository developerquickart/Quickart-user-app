import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String checkSelectedTimeslotCashback(dynamic data) {
  try {
    final List timeslotsData = data['timeslotsdata'] ?? [];
    final List products = data['products'] ?? [];
    if (timeslotsData.isEmpty) return "";

    final String selectedDate = (data['selectedDate'] ?? "").toString();
    final String selectedTime = (data['selectedTime'] ?? "").toString();

    if (selectedDate.isEmpty || selectedTime.isEmpty) {
      return "";
    }

    final dateEntry = timeslotsData.firstWhere(
      (d) => (d['date'] ?? "").toString() == selectedDate,
      orElse: () => null,
    );
    if (dateEntry == null) return "";

    final slot = ((dateEntry['timeslots'] ?? []) as List).firstWhere(
      (s) => (s['time_slots'] ?? "").toString() == selectedTime,
      orElse: () => null,
    );
    if (slot == null) return "";

    // final double value =
    //     double.tryParse((slot['value'] ?? "0").toString()) ?? 0;

    // final double minAmount =
    //     double.tryParse((slot['min_amount'] ?? "0").toString()) ?? 0;

    final String pricingType =
        (slot['pricing_type'] ?? "").toString().toLowerCase();

    // final int valueType =
    //     int.tryParse((slot['value_type'] ?? "1").toString()) ?? 1;
    // final int amount =
    //     int.tryParse((slot['price_effect'] ?? "0").toString()) ?? 0;
    final double priceEffect = double.tryParse(
          (slot['price_effect'] ?? "0").toString(),
        ) ??
        0.0;

    if (pricingType == "cashback") {
      return "Awesome! You've earned AED ${priceEffect.toStringAsFixed(2)} cashback.";
    } else if (pricingType == "discount") {
      return "Awesome! You've unlocked an AED ${priceEffect.toStringAsFixed(2)} discount.";
    } else {
      return "";
    }
  } catch (e) {
    return "";
  }
}

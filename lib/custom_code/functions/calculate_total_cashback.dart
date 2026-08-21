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

String calculateTotalCashback(dynamic rootJson) {
  try {
    final List categories = rootJson ?? [];
    if (categories.isEmpty) return "";

    double totalCashback = 0.0;

    for (final cat in categories) {
      final List timeslotsData = cat['timeslotsdata'] ?? [];
      final List products = cat['products'] ?? [];

      if (timeslotsData.isEmpty || products.isEmpty) continue;

      String selectedDate = (cat['selectedDate'] ?? "").toString();
      String selectedTime = (cat['selectedTime'] ?? "").toString();

      if (selectedDate.isEmpty || selectedTime.isEmpty) {
        final firstDateEntry = timeslotsData.first;
        selectedDate = (firstDateEntry['date'] ?? "").toString();

        final List firstSlots = firstDateEntry['timeslots'] ?? [];
        if (firstSlots.isEmpty) continue;

        selectedTime = (firstSlots.first['time_slots'] ?? "").toString();
      }

      final dateEntry = timeslotsData.firstWhere(
        (d) => (d['date'] ?? "").toString() == selectedDate,
        orElse: () => null,
      );
      if (dateEntry == null) continue;

      final slot = ((dateEntry['timeslots'] ?? []) as List).firstWhere(
        (s) => (s['time_slots'] ?? "").toString() == selectedTime,
        orElse: () => null,
      );
      if (slot == null) continue;

      final String pricingType =
          (slot['pricing_type'] ?? "").toString().toLowerCase();

      // Ignore discount offers
      if (pricingType != "cashback") continue;

      final int valueType =
          int.tryParse((slot['value_type'] ?? "1").toString()) ?? 1;

      final double value =
          double.tryParse((slot['value'] ?? "0").toString()) ?? 0;

      final double minAmount =
          double.tryParse((slot['min_amount'] ?? "0").toString()) ?? 0;

      double categoryTotal = 0.0;

      for (final p in products) {
        final int qty = int.tryParse((p['cart_qty'] ?? "0").toString()) ?? 0;

        final double price =
            double.tryParse((p['price'] ?? "0").toString()) ?? 0;

        categoryTotal += qty * price;
      }

      if (categoryTotal < minAmount || value <= 0) {
        continue;
      }

      // value_type = 0 => Flat Cashback
      if (valueType == 0) {
        totalCashback += value;
      }
      // value_type = 1 => Percentage Cashback
      else {
        totalCashback += categoryTotal * value / 100;
      }
    }

    if (totalCashback <= 0) return "";

    return "AED ${totalCashback.toStringAsFixed(2)} cashback on this order";
  } catch (e) {
    print("Error in calculateTotalCashback: $e");
    return "";
  }
  // try {
  //   final List categories = rootJson ?? [];
  //   if (categories.isEmpty) return "0";

  //   double totalCashback = 0.0;

  //   for (final cat in categories) {
  //     final List timeslotsData = cat['timeslotsdata'] ?? [];
  //     final List products = cat['products'] ?? [];

  //     if (timeslotsData.isEmpty || products.isEmpty) continue;

  //     // selected values
  //     String selectedDate = (cat['selectedDate'] ?? "").toString();
  //     String selectedTime = (cat['selectedTime'] ?? "").toString();

  //     // fallback to first slot if missing
  //     if (selectedDate.isEmpty || selectedTime.isEmpty) {
  //       final firstDateEntry = timeslotsData[0];
  //       selectedDate = (firstDateEntry['date'] ?? "").toString();
  //       final firstTimeslots = (firstDateEntry['timeslots'] ?? []) as List;
  //       selectedTime = firstTimeslots.isNotEmpty
  //           ? ((firstTimeslots[0]['time_slots'] ?? "").toString())
  //           : "";
  //     }

  //     // find date entry
  //     final dateEntry = timeslotsData.firstWhere(
  //       (d) => (d['date'] ?? "").toString() == selectedDate,
  //       orElse: () => null,
  //     );
  //     if (dateEntry == null) continue;

  //     // find slot
  //     final slot = ((dateEntry['timeslots'] ?? []) as List).firstWhere(
  //       (s) => (s['time_slots'] ?? "").toString() == selectedTime,
  //       orElse: () => null,
  //     );
  //     if (slot == null) continue;

  //     // slot values
  //     final double discount =
  //         double.tryParse((slot['discount'] ?? "0").toString()) ?? 0;
  //     final double minAmount =
  //         double.tryParse((slot['min_amount'] ?? "0").toString()) ?? 0;

  //     // category total
  //     double catTotal = 0.0;
  //     for (final p in products) {
  //       final int qty = int.tryParse((p['cart_qty'] ?? "0").toString()) ?? 0;
  //       final double price =
  //           double.tryParse((p['price'] ?? "0").toString()) ?? 0;
  //       catTotal += qty * price;
  //     }
  //     if (catTotal <= 0) continue;

  //     // cashback for this category
  //     if (discount > 0 && catTotal >= minAmount) {
  //       totalCashback += (catTotal * discount / 100);
  //     }
  //   }
  //   return totalCashback > 0
  //       ? "AED ${totalCashback.toStringAsFixed(2)} cashback on this order"
  //       : "";
  // } catch (e) {
  //   print("Error in calculateTotalCashback: $e");
  //   return " ";
  // }
}

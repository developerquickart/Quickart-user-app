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

String checkSelectedTimeslotCashbackDiscount(
  List<dynamic> data,
  String? titleAmountType,
  String type,
) {
  // try {
  //   if (data.isEmpty) return "";

  //   double totalAmount = 0.0;

  //   for (final category in data) {
  //     final List<dynamic> timeslotsData =
  //         (category['timeslotsdata'] as List?) ?? [];

  //     final List<dynamic> products = (category['products'] as List?) ?? [];

  //     if (timeslotsData.isEmpty || products.isEmpty) {
  //       continue;
  //     }

  //     final String selectedDate =
  //         (category['selectedDate'] ?? "").toString().trim();

  //     final String selectedTime =
  //         (category['selectedTime'] ?? "").toString().trim();

  //     // print("G1---selectedDate-->$selectedDate | selectedTime-->$selectedTime");

  //     if (selectedDate.isEmpty || selectedTime.isEmpty) {
  //       continue;
  //     }

  //     // Find selected date
  //     dynamic dateEntry;

  //     for (final d in timeslotsData) {
  //       if ((d['date'] ?? "").toString() == selectedDate) {
  //         dateEntry = d;
  //         break;
  //       }
  //     }

  //     if (dateEntry == null) {
  //       // print("G1---Date not found");
  //       continue;
  //     }

  //     // Find selected time slot
  //     final List<dynamic> slots = (dateEntry['timeslots'] as List?) ?? [];

  //     dynamic slot;

  //     for (final s in slots) {
  //       if ((s['time_slots'] ?? "").toString() == selectedTime) {
  //         slot = s;
  //         break;
  //       }
  //     }

  //     if (slot == null) {
  //       print("G1---Time slot not found");
  //       continue;
  //     }

  //     final String pricingType =
  //         (slot['pricing_type'] ?? "").toString().toLowerCase().trim();

  //     // print("G1---pricingType-->$pricingType");

  //     // Only Discount and Surge Charge
  //     if (pricingType != "discount" && pricingType != "surge_charge") {
  //       continue;
  //     }

  //     // Return title
  //     if (titleAmountType == "name") {
  //       if (pricingType == "discount") {
  //         return "Time Slot Discount";
  //       }

  //       if (pricingType == "surge_charge") {
  //         return "Surge Charge";
  //       }
  //     }

  //     // price_effect can be decimal
  //     final double priceEffect = double.tryParse(
  //           (slot['price_effect'] ?? "0").toString(),
  //         ) ??
  //         0.0;

  //     // print("G1---pricingType-->$pricingType | priceEffect-->$priceEffect");

  //     if (priceEffect <= 0) {
  //       continue;
  //     }

  //     totalAmount += priceEffect;
  //   }

  //   // print("G1---totalAmount-->$totalAmount");

  //   if (totalAmount <= 0) {
  //     return "";
  //   }

  //   return totalAmount.toStringAsFixed(2);
  // } catch (e) {
  //   print("G1---ERROR-->$e");
  //   return "";
  // }
  try {
    if (data.isEmpty) return "";

    for (final category in data) {
      final List<dynamic> timeslotsData =
          (category['timeslotsdata'] as List?) ?? [];

      if (timeslotsData.isEmpty) continue;

      final String selectedDate =
          (category['selectedDate'] ?? "").toString().trim();

      final String selectedTime =
          (category['selectedTime'] ?? "").toString().trim();

      if (selectedDate.isEmpty || selectedTime.isEmpty) {
        continue;
      }

      // Find selected date
      dynamic dateEntry;

      for (final dateData in timeslotsData) {
        if ((dateData['date'] ?? "").toString().trim() == selectedDate) {
          dateEntry = dateData;
          break;
        }
      }

      if (dateEntry == null) continue;

      final List<dynamic> slots = (dateEntry['timeslots'] as List?) ?? [];

      // Find selected time
      for (final slot in slots) {
        final String slotTime = (slot['time_slots'] ?? "").toString().trim();

        if (slotTime != selectedTime) {
          continue;
        }

        final String pricingType =
            (slot['pricing_type'] ?? "").toString().toLowerCase().trim();

        final double priceEffect = double.tryParse(
              (slot['price_effect'] ?? "0").toString(),
            ) ??
            0.0;

        // ---------------------------------------------
        // SURGE CHARGE
        // ---------------------------------------------

        if (pricingType == "surge_charge") {
          if (titleAmountType == "name") {
            return "Surge Charge";
          }
          if (priceEffect > 0 && type == "Surge Charge") {
            return priceEffect.toStringAsFixed(2);
          }

          return "";
        }

        // ---------------------------------------------
        // DISCOUNT
        // ---------------------------------------------

        if (pricingType == "discount") {
          if (titleAmountType == "name") {
            return "Time Slot Discount";
          }
          if (priceEffect > 0 && type == "Time Slot Discount") {
            return priceEffect.toStringAsFixed(2);
          }

          return "";
        }

        // ---------------------------------------------
        // No discount / surge
        // ---------------------------------------------

        return "";
      }
    }

    return "";
  } catch (e) {
    print("G1---ERROR-->$e");
    return "";
  }
}

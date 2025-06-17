import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

Future<T?> appTryCatch<T>(Future<T?> Function()? callback) async {
  try {
    return await callback?.call();
  } on FirebaseException catch (e) {
    log("Something went wrong with Firebase", name: "Firebase", error: e);
    throw Exception(e.message ?? "Something went wrong with Firebase");
  } on PlatformException catch (e) {
    log("Something went wrong on Platform", name: "Platform", error: e);
    throw Exception(e.message ?? "Something went wrong on Platform");
  } catch (e) {
    log("Something went wrong", name: "Unhandled error", error: e);
    throw Exception("Unhandled error: $e");
  }
}

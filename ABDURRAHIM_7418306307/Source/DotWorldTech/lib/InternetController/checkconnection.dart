import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class checkinternetconnection {
  static bool netconnect() {
    bool hasinternet = false;
    ConnectivityResult result = ConnectivityResult.none;
    var netcon = false;
    if (result != ConnectivityResult.none) {
      netcon = true;
    }
    return netcon ? true : false;
  }
}

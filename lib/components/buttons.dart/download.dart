import 'dart:html' as html;
import 'package:flutter/material.dart';

class WebFileDownloader {
  Future<void> downloadFile() async {
    print("hey there ");
    // final String url = "https://www.dropbox.com/scl/fi/pq1xkbrswoia0wmjpev83/DhruvArora_Latest.pdf?rlkey=vf91c5yzr58cf8xft9qfwvp13&st=5id6yobg&dl=1";
    try {
      html.AnchorElement anchor = new html.AnchorElement(href: "https://www.dropbox.com/scl/fi/pq1xkbrswoia0wmjpev83/DhruvArora_Latest.pdf?rlkey=vf91c5yzr58cf8xft9qfwvp13&st=5id6yobg&dl=1")
        ..setAttribute("download", "DhruvArora_Latest.pdf")
        ..click();
      anchor.download = "DhruvArora_Latest.pdf";
      anchor.click();
    } catch (e) {
      debugPrint('Error downloading file: $e');
    }
  }
}
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
class PrivewPdf extends StatelessWidget {
  FutureOr<Uint8List>  doc;
  PrivewPdf({super.key, required this.doc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Print"),),
        body: SizedBox(
            child: PdfPreview(
                allowSharing: true,
                allowPrinting: true,

                build: (pdf)=>doc)));
  }
}
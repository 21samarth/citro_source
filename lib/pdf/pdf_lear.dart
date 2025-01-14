import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});
  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  List<String> headerList = [
    "Sno",
    "Event Name",
    "Timing",
    "Venue",
    "Event Head Permission"
  ];

  List<List<String>> rowData = [
    ['1', 'Event 1', '10:00 AM', 'Hall A', 'Yes'],
    ['2', 'Event 2', '11:00 AM', 'Hall B', 'No'],
    // Add more rows here as needed
  ];

  // Function to generate the PDF
  Future<Uint8List> _generateInvoicePdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return [
            pw.Center(
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Text("Chameli Devi Group of Institutions",
                      style: pw.TextStyle(fontSize: 30)),
                  pw.SizedBox(height: 30),
                  pw.Text("Citronics 2k25", style: pw.TextStyle(fontSize: 20)),
                  pw.SizedBox(height: 30),
                  pw.Table(
                    border: pw.TableBorder.all(), // Adds a border to the table
                    defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
                    children: [
                      // Header Row
                      pw.TableRow(
                        children: [
                          for (String header in headerList)
                            pw.Padding(
                              padding: pw.EdgeInsets.all(8.0),
                              child: pw.Text(
                                header,
                                textAlign: pw.TextAlign.center,
                                style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                        ],
                      ),
                      // Data Rows
                      for (var row in rowData)
                        pw.TableRow(
                          children: [
                            for (String cell in row)
                              pw.Padding(
                                padding: pw.EdgeInsets.all(8.0),
                                child: pw.Text(
                                  cell,
                                  textAlign: pw.TextAlign.center,
                                ),
                              ),
                          ],
                        ),
                    ],
                  ),
                ],
              ),
            )
          ];
        },
      ),
    );
    return pdf.save();
  }

  Future<Uint8List> _loadImage(String assetPath) async {
    final byteData = await rootBundle.load(assetPath);
    return byteData.buffer.asUint8List();
  }

  void _viewPdf() async {
    final pdfBytes = await _generateInvoicePdf();
    await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdfBytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Invoice")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                "Hello World",
                style: TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(height: 20),
            // Generate PDF Button
            ElevatedButton.icon(
              onPressed: () {
                _viewPdf(); // View the generated PDF
              },
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text("Generate PDF"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../Components/PdfComponent.dart';
import '../test/printing.dart';
class Invoice extends StatefulWidget {
 // final Function onGeneratePdf;
  const Invoice({super.key,
   // required this.onGeneratePdf,
  });
 
  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {

  // Function to generate the PDF
  Future<Uint8List> _generateInvoicePdf() async {
    final pdf = pw.Document();
    // sabse pahle company ki image load karenge
    final companyImage = await _loadImage("assets/images/1.png");  // Adjust this path
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // Header Section
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text("XYZ Company",softWrap: true, style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 20)),
                        pw.Text("123 Main Street, City, Country",softWrap: true),
                        pw.Text("Email: contact@xyz.com | Phone: +1234567890",softWrap: true),
                      ],
                    ),
                    pw.Image(pw.MemoryImage(companyImage), width: 100, height: 100),
                  ],
                ),
                pw.SizedBox(height: 20),
                // Invoice Number Section
                pw.Text("Invoice: INV-001",softWrap: true, style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 20),
                // Billing Information
                pw.Text("Billing Details:",softWrap: true, style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 16)),
                pw.Text("Customer Name: John Doe",softWrap: true),
                pw.Text("Billing Address: 456 Elm Street, City, Country",softWrap: true),
                pw.Text("Phone: 9755724407",softWrap: true),
                pw.Text("Email: john.doe@example.com",softWrap: true),
                pw.SizedBox(height: 10),
                // Product Table
                pw.Table.fromTextArray(
                  headers: ['No.', 'Article', 'Description', 'Quantity', 'Unit Price', 'VAT', 'Amount'],
                  data: [
                    [1, 'Product A', 'High-quality product', '2', '€50', '10%', '€110'],
                    [2, 'Product B', 'Premium item', '1', '€200', '10%', '€220'],
                  ],
                ),
                pw.SizedBox(height: 10),
                // Total Amount Section
                pw.Align(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text("Total HT: €3000",softWrap: true),
                      pw.Text("Total Disbursements: €30",softWrap: true),
                      pw.Text("Total VAT: €0",softWrap: true),
                      pw.Text("Total Price: €3030",softWrap: true, style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
                    ],
                  ),
                ),
                pw.SizedBox(height: 20),
                // Notes Section
                pw.Text("Notes: Thank you for your business!",softWrap: true),
                pw.Text("Terms & Conditions: Please pay within Net 15 days.",softWrap: true),
              ],
            ),
          ];
        },
      ),
    );
    return pdf.save();
  }
  // Function to load image as bytes from assets
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
            InvoiceComponent(
              companyName: "XYZ Company",
              companyAddress: "123 Main Street, City, Country",
              contactInfo: "Email: contact@xyz.com | Phone: +1234567890",
              siret: "12345678900000",
              vat: "VAT123456",
              invoiceNumber: "INV-001",
              totalAmount: "\u20ac3030",
              billDate: "2024-12-10",
              deliveryDate: "2024-12-12",
              terms: "Net 15 days",
              paymentDeadline: "2024-12-25",
              customerName: "John Doe",
              billingAddress: "456 Elm Street, City, Country",
              notes: "Thank you for your business!",
              CustomerSi: '78956 5988 556',
              CustomerVa: '787 -41545',
              CustomerEmail: 'john.doe@example.com',
              CustomerNotes: "Additional notes here.",
              CustomerPhone: '9755724407',
              products: [
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product B",
                  "description": "Premium item",
                  "quantity": "1",
                  "unitPrice": "200",
                  "vat": "10%",
                  "amount": "220",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  ""
                      "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
                {
                  "productName": "Product A",
                  "description": "High-quality product",
                  "quantity": "2",
                  "unitPrice": "50",
                  "vat": "10%",
                  "amount": "110",
                },
              ],
              companyImage: AssetImage("assets/images/1.png"),
            ),
            const SizedBox(height: 20),
            // Generate PDF Button
            ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>PrivewPdf(doc: _generateInvoicePdf(),)));
              },
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text("Generate PDF",softWrap: true),
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

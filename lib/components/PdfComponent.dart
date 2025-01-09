import 'package:flutter/material.dart';
class InvoiceComponent extends StatefulWidget {
  final String companyName;
  final String companyAddress;
  final String contactInfo;
  final String siret;
  final String vat;
  final String invoiceNumber;
  final String totalAmount;
  final String billDate;
  final String deliveryDate;
  final String terms;
  final String paymentDeadline;
  final String customerName;
  final String billingAddress;
  final String notes;
  final List<Map<String, String>> products;
  final AssetImage companyImage;
  final String CustomerSi;
  final String CustomerVa;
  final String CustomerNotes;
  final String CustomerPhone;
  final String CustomerEmail;
  const InvoiceComponent({
    super.key,
    required this.companyName,
    required this.companyAddress,
    required this.contactInfo,
    required this.siret,
    required this.vat,
    required this.invoiceNumber,
    required this.totalAmount,
    required this.billDate,
    required this.deliveryDate,
    required this.terms,
    required this.paymentDeadline,
    required this.customerName,
    required this.billingAddress,
    required this.notes,
    required this.products,
    required this.companyImage,
    required this.CustomerSi,
    required this.CustomerVa,
    required this.CustomerNotes,
    required this.CustomerPhone,
    required this.CustomerEmail,
  });
  @override
  State<InvoiceComponent> createState() => _InvoiceComponentState();
}
class _InvoiceComponentState extends State<InvoiceComponent> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company Information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.1,
                  height: width * 0.1, // Adjusted to maintain aspect ratio
                  child: Image(image: widget.companyImage, fit: BoxFit.fill),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(softWrap: true,widget.companyName),
                      SizedBox(height: 10),
                      Text(softWrap: true,widget.companyAddress),
                      SizedBox(height: 10),
                      Text(softWrap: true,widget.contactInfo),
                      Row(
                        children: [
                          Text(softWrap: true,"SIRET: "),
                          Text(softWrap: true,widget.siret),
                        ],
                      ),
                      Row(
                        children: [
                          Text(softWrap: true,"VAT: "),
                          Text(softWrap: true,widget.vat),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(softWrap: true,widget.invoiceNumber, style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text(softWrap: true,"Total Amount", style: TextStyle(color: Colors.grey)),
                      Text(softWrap: true,
                        widget.totalAmount,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 30),

            // Billing Information
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width*0.3,
                  height: height*0.3,
                  color: Color(0xFFFAFAFA),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(softWrap: true,"Bill Date:",style: TextStyle(color: Colors.grey,fontSize:14 ),),
                      Text(softWrap: true,"${widget.billDate}",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10),
                      Text(softWrap: true,"Delivery Date:",style: TextStyle(color: Colors.grey,fontSize:14 ),),
                      Text(softWrap: true,"${widget.deliveryDate}",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10),
                      Text(softWrap: true,"Terms of Payment:",style: TextStyle(color: Colors.grey,fontSize:14 ),),
                      Text(softWrap: true,"${widget.terms}",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10),
                     ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: width*0.5,
                  height: height*0.3,
                  color: Color(0xFFFAFAFA),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(softWrap: true,"Billing Address:",style: TextStyle(color: Colors.grey,fontSize:14 ),),
                      const SizedBox(height: 10),
                      Text(softWrap: true,"Customer Name: ${widget.customerName}",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      Text(softWrap: true,"${widget.billingAddress}",style: TextStyle(color: Colors.grey,fontSize:14 ),),
                      Row(children: [
                        Text(softWrap: true,"${widget.CustomerPhone}",style: TextStyle(color: Colors.grey,fontSize:14 ),),
                        Text(softWrap: true,"|",style: TextStyle(color: Colors.grey,fontSize:14 ),),
                      ],),
                      Row(children: [
                        Text(softWrap: true,"SIRET : ",style: TextStyle(color: Colors.grey,fontSize:14 ,fontWeight: FontWeight.bold),),
                        Text(softWrap: true,"${widget.CustomerSi}",style: TextStyle(color: Colors.grey,fontSize:14 ,fontWeight: FontWeight.bold),),
                      ],),
                      Row(children: [
                        Text(softWrap: true,"VAT : ",style: TextStyle(color: Colors.grey,fontSize:14 ,fontWeight: FontWeight.bold),),
                        Text(softWrap: true,"${widget.CustomerVa}",style: TextStyle(color: Colors.grey,fontSize:14 ,fontWeight: FontWeight.bold),),
                      ],),
]
                  ),
                ),
              ],
            ),

            const Divider(height: 30),

            // Product Details Table
            Table(
              border: TableBorder.all(color: Colors.grey),
              columnWidths: {
                0: FixedColumnWidth(width * 0.05),
                1: FixedColumnWidth(width * 0.2),
                2: FixedColumnWidth(width * 0.2),
                3: FixedColumnWidth(width * 0.1),
                4: FixedColumnWidth(width * 0.1),
                5: FixedColumnWidth(width * 0.1),
                6: FixedColumnWidth(width * 0.1),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(softWrap: true,"No.",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(softWrap: true,"Article",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(softWrap: true,"Discription",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(softWrap: true,"Quantity",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(softWrap: true,"Unit Price",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(softWrap: true,"VAT",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(softWrap: true,"Amount",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                  ],
                ),
                ...widget.products.map((product) {
                  return TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(softWrap: true,product["article"] ?? ""),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(softWrap: true,product["productName"] ?? ""),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(softWrap: true,product["description"] ?? ""),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(softWrap: true,product["quantity"] ?? ""),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(softWrap: true,"\u20ac${product["unitPrice"]}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(softWrap: true,product["vat"] ?? ""),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(softWrap: true,"\u20ac${product["amount"]}"),
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
            const Divider(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(softWrap: true,"Total HT: \u20ac3000"),
                    Text(softWrap: true,"Total Disbursements: \u20ac30"),
                    Text(softWrap: true,"Total VAT: \u20ac0"),
                    Text(softWrap: true,
                      "Total Price: \u20ac3030",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(height: 10),
            Text(softWrap: true,"Notes: ${widget.notes}"),
            const Text(softWrap: true,"Terms & Conditions: Please pay within 15 days of receiving this invoice."),
          ],
        ),
      ),
    );
  }
}

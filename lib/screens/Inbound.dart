import 'package:flutter/material.dart';
import 'package:warehousemanagement/models/InboundCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warehousemanagement/screens/ReceiptDetails.dart';
import 'dashboard.dart';

class Inbound extends StatelessWidget {
  const Inbound({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8,top: 8),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cheese Merchants Live'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Work Date'),
                  Text('23/08/25')
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Search Barcode or enter PO #',
                  ),
                ),
              ),
             IconButton(onPressed: null, icon: CircleAvatar(
               backgroundColor: Colors.black,
               child: Image.asset('images/filter.png', width: 25,height: 25,fit: BoxFit.contain,color: Colors.white,),
             )),
            ],
          ),
          Expanded(child: CardsView())
        ],
      ),
    );
  }
}


class CardsView extends StatelessWidget {
  CardsView({super.key});
  final List<InboundCard> dummydata =  <InboundCard>[
    InboundCard(
      orderNo: 'PO1234',
      receiptNo: 'RCPT1001',
      vendorName: 'Fresh Farms Ltd',
      agent: 'John Doe',
      lineNo: 'LN001',
      date: '2025-08-20',
    ),
    InboundCard(
      orderNo: 'PO5678',
      receiptNo: 'RCPT1002',
      vendorName: 'Dairy Best Co.',
      agent: 'Jane Smith',
      lineNo: 'LN002',
      date: '2025-08-21',
    ),
    InboundCard(
      orderNo: 'PO9101',
      receiptNo: 'RCPT1003',
      vendorName: 'Cheese World Inc',
      agent: 'Michael',
      lineNo: 'LN003',
      date: '2025-08-22',
    ),
    InboundCard(
      orderNo: 'PO1121',
      receiptNo: 'RCPT1004',
      vendorName: 'Organic Valley',
      agent: 'Sarah Lee joker sfasdfdsedfisidfisdi',
      lineNo: 'LN004',
      date: '2025-08-23',
    ),
    InboundCard(
      orderNo: 'PO3141',
      receiptNo: 'RCPT1005',
      vendorName: 'Happy Cows Dairy',
      agent: 'David Kim',
      lineNo: 'LN005',
      date: '2025-08-24',
    ),
    InboundCard(
      orderNo: 'PO9101',
      receiptNo: 'RCPT1003',
      vendorName: 'Cheese World Inc',
      agent: 'Michael',
      lineNo: 'LN003',
      date: '2025-08-22',
    ),
    InboundCard(
      orderNo: 'PO1121',
      receiptNo: 'RCPT1004',
      vendorName: 'Organic Valley',
      agent: 'Sarah Lee joker sfasdfdsedfisidfisdi',
      lineNo: 'LN004',
      date: '2025-08-23',
    ),
    InboundCard(
      orderNo: 'PO3141',
      receiptNo: 'RCPT1005',
      vendorName: 'Happy Cows Dairy',
      agent: 'David Kim',
      lineNo: 'LN005',
      date: '2025-08-24',
    ),
    InboundCard(
      orderNo: 'PO9101',
      receiptNo: 'RCPT1003',
      vendorName: 'Cheese World Inc',
      agent: 'Michael',
      lineNo: 'LN003',
      date: '2025-08-22',
    ),
    InboundCard(
      orderNo: 'PO1121',
      receiptNo: 'RCPT1004',
      vendorName: 'Organic Valley',
      agent: 'Sarah Lee joker sfasdfdsedfisidfisdi',
      lineNo: 'LN004',
      date: '2025-08-23',
    ),
    InboundCard(
      orderNo: 'PO3141',
      receiptNo: 'RCPT1005',
      vendorName: 'Happy Cows Dairy',
      agent: 'David Kim',
      lineNo: 'LN005',
      date: '2025-08-24',
    ),
    InboundCard(
      orderNo: 'PO9101',
      receiptNo: 'RCPT1003',
      vendorName: 'Cheese World Inc',
      agent: 'Michael',
      lineNo: 'LN003',
      date: '2025-08-22',
    ),
    InboundCard(
      orderNo: 'PO1121',
      receiptNo: 'RCPT1004',
      vendorName: 'Organic Valley',
      agent: 'Sarah Lee joker sfasdfdsedfisidfisdi',
      lineNo: 'LN004',
      date: '2025-08-23',
    ),
    InboundCard(
      orderNo: 'PO3141',
      receiptNo: 'RCPT1005',
      vendorName: 'Happy Cows Dairy',
      agent: 'David Kim',
      lineNo: 'LN005',
      date: '2025-08-24',
    ),
    InboundCard(
      orderNo: 'PO9101',
      receiptNo: 'RCPT1003',
      vendorName: 'Cheese World Inc',
      agent: 'Michael',
      lineNo: 'LN003',
      date: '2025-08-22',
    ),
    InboundCard(
      orderNo: 'PO1121',
      receiptNo: 'RCPT1004',
      vendorName: 'Organic Valley',
      agent: 'Sarah Lee joker sfasdfdsedfisidfisdi',
      lineNo: 'LN004',
      date: '2025-08-23',
    ),
    InboundCard(
      orderNo: 'PO3141',
      receiptNo: 'RCPT1005',
      vendorName: 'Happy Cows Dairy',
      agent: 'David Kim',
      lineNo: 'LN005',
      date: '2025-08-24',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: dummydata.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key:  Key(dummydata[index].toString()),
          confirmDismiss: (direction) async {
            return false;
          },
          background: Container(
            color: Colors.green,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(Icons.arrow_forward, color: Colors.white),
          ),
          secondaryBackground: Container(
            color: Colors.blue,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          child: GestureDetector(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Receiptdetails())),
            },
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('PO # ${dummydata[index].orderNo}',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      Text(dummydata[index].receiptNo,
                        style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 3,
                    children: [
                      Text('Date - ${dummydata[index].date}',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text('LineNo - 10000',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
          ),

        );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 6,),
    );
  }
}

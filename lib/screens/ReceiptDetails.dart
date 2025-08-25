import 'package:flutter/material.dart';


class Receiptdetails extends StatelessWidget {
  const Receiptdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cheese Merchants',
              style: TextStyle(
                fontSize: 24
              ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Work Date',
                    style: TextStyle(
                        fontSize: 22
                    ),
                  ),
                  Text('23/08/25',
                    style: TextStyle(
                        fontSize: 22
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 12,),
          Container(
              width: double.infinity,
              height: 500,
              padding: EdgeInsets.only(left: 8,top: 8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text('PO # - 12356', style: TextStyle(fontSize: 26),),
                  Text('Document Date - 12/35/2026', style: TextStyle(fontSize: 26),),
                  Text('Shipment Agent - FIA Fedex', style: TextStyle(fontSize: 26),),
                  Text('Due Date - 12/22/2026', style:
                    TextStyle(
                      color: Colors.red,
                      fontSize: 26
                    ),),
                  Text('Quantity - 120', style: TextStyle(fontSize: 26),),
                  Text('Quantity Received - 80', style: TextStyle(fontSize: 26),),
                  TextButton(onPressed: null, child: Text('Receipt ->', style: TextStyle(fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),))
                ],
              ),
            ),
        ],
      ),
    );
  }
}

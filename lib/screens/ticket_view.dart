import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius:  BorderRadius.only(
                 topLeft: Radius.circular(21),
                 topRight: Radius.circular(21)
                )
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [

                      Text("Warren Park",style: Styles.headLineStyle3.copyWith(color: Colors.white), ),
                      const Spacer(),
                      Text("Mbare",style: Styles.headLineStyle3.copyWith(color: Colors.white), ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      );

  }
}

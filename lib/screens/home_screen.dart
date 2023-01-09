import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/screens/ticket_view.dart';
import 'package:tickets/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20), //adding spacing on the left and the right of the column(image and texts)
            child: Column(
              children: [
                const Gap(40), //putting space on top of good morning text row
                Row( // Row containing the columns with texts and image
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // putting space between column and container image and the texts
                  children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:  [
                     Text(
                         "Good Morning", style: Styles.headLineStyle3,
                     ),
                     const Gap(5),// putting space between the two texts
                     Text(
                         "Book Tickets", style: Styles.headLineStyle1,
                     ),
                   ],
                 ),
                    
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage( // showing the image
                        image: AssetImage(
                            "assets/images/iniesta.jpg"
                            )
                      )

                    ),
                  )
                  ],
                ),
                const Gap(25), // putting space between the two Rows(Good morning and Search)
                Container(// container to wrap the search item
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ) ,
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row( // Putting the search filled using a row
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                      Text(
                        "Search",style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40), // applying space between the search bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // applying space between Flights and View all
                  children: [
                      
                    Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                          print("HAUSIKUDA");
                        },
                        child: Text("View All,", style: Styles.textStyle.copyWith(color: Styles.orangeColor),)),
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          TicketView(),

        ],
      ) ,
    );
  }
}

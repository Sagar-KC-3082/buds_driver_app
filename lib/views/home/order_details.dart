import 'package:buds_driver_app/models/home/curent_order_model.dart';
import 'package:flutter/material.dart';
import 'package:buds_driver_app/configs/constants/app_constants.dart';
import 'package:buds_driver_app/configs/styles/app_colors.dart';
import 'package:buds_driver_app/configs/styles/custom_text_style.dart';
import 'package:buds_driver_app/widgets/accept_or_decline_widget.dart';
import 'package:buds_driver_app/widgets/custom_inkwell.dart';
import 'package:get/get.dart';

import 'map1_screen.dart';


class OrderDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkBlue,
      body: SafeArea(
        child: Column(
          children: [
            ColorfulAppBar(),
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [

                      Container(
                        margin: EdgeInsets.symmetric(horizontal:5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withOpacity(0.1),blurRadius: 5,spreadRadius: 2,offset: Offset(3,3))
                            ]
                        ),
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order Number",style: CustomTextStyle.mediumTextStyle(),),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text("#45423423",style: CustomTextStyle.smallTextStyle1(),),
                                Spacer(),
                                Text("On Payment",style: CustomTextStyle.smallTextStyle1(),),

                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:5),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 2,),
                                    Icon(Icons.circle,size: 15,color: Colors.grey,),
                                    SizedBox(width: 5,),
                                    Text("Sikkim, NorthEast")
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,size: 15,color: Colors.grey,),
                                    SizedBox(width: 5,),
                                    Text("Delhi, SouthEast")
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Text("25 KM",style: CustomTextStyle.mediumTextStyle(),)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      CurrentOrderContainer(currentOrderModel: CurrentOrderModel(restaurantName: "Hotel Taj",restaurantAddress: "2 New Nehru Nagar Indore 457415, New Bhopal Factory, Madhya Pradesh",stars: "4.2",ratings: "120",imageUrl: "assets/images/foodItem8.png",food:"Fruit, Fresh fruit",foodInfo1: "Western food  \$59 Per plate,",foodQuantity: "2 Pizza"),),
                      SizedBox(height: 10,),

                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:5),
                        child: Text("Customer",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                      ),
                      SizedBox(height: 10,),

                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                            ]
                        ),
                        margin:EdgeInsets.symmetric(horizontal:8),
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(child: Text("Sagar KC",style: CustomTextStyle.mediumTextStyle(),)),
                                SizedBox(width: 10,),
                                Icon(Icons.message,size:18,),
                                SizedBox(width: 10,),
                                Icon(Icons.call,size: 20,)
                              ],
                            ),
                            SizedBox(height: 5,),

                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Text("2 New Nehru Nagar Indore 457415, Madhya Pradesh 2 New Nehru Shdradhapath Nagar Indore 457415",style: CustomTextStyle.smallTextStyle1(),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:20,),

                      Padding(
                        padding:EdgeInsets.symmetric(horizontal:5),
                        child: Column(
                          children: [

                            CustomRow(title1: "Late Night Charge",title2: "\$38",),
                            CustomRow(title1: "Moving Cart ",title2: "\$56",title3: "Additional Services",),
                            CustomRow(title1: "Discount",title2: "\$32",title3: "Promo Code: 554dffd",),

                            SizedBox(height: 5,),
                            Divider(),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text("Total",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                                Spacer(),
                                Text("\$124.67",style: CustomTextStyle.ultraBoldTextStyle(),)
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height:10,),
                      CustomInkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){return Map1View();}));
                            },
                          child: AddOrRejectWidget()),
                      SizedBox(height:10,),

                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}




class ColorfulAppBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> globalKey;
  ColorfulAppBar({this.globalKey});
  @override
  _ColorfulAppBarState createState() => _ColorfulAppBarState();
}

class _ColorfulAppBarState extends State<ColorfulAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: 20),
      child: Row(
        children: [
          CustomInkWell(
              onTap: (){
                Navigator.pop(context);;
              },
              child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
          Spacer(),
          Text("Order Detail",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsRegular",color: Colors.white),),
          Spacer(),
        ],
      ),
    );
  }
}



class CustomRow extends StatelessWidget {

  final String title1;
  final String title2;
  final String title3;
  CustomRow({this.title2,this.title1,this.title3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          title3 == null ? Expanded(child: Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),)) :
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),),
                Text(title3,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
              ],
            ),
          ),
          Text(title2,style: CustomTextStyle.smallTextStyle1(),)
        ],
      ),
    );
  }
}




class CurrentOrderContainer extends StatelessWidget {

  final CurrentOrderModel currentOrderModel;
  CurrentOrderContainer({this.currentOrderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 2,offset: Offset(2,2))
          ]
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(child: Text(currentOrderModel.restaurantName,style: CustomTextStyle.mediumTextStyle(),)),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,size: 15,),
                    SizedBox(width: 2),
                    Text(currentOrderModel.stars,style: CustomTextStyle.ultraSmallBoldTextStyle(),),
                    Text("( ${currentOrderModel.ratings} ratings)",style: CustomTextStyle.ultraSmallTextStyle(),)
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 8,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(child: Text(currentOrderModel.restaurantAddress,style: CustomTextStyle.smallTextStyle1(),)),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                  ),
                  padding: EdgeInsets.all(3),
                  child: Icon(Icons.call,color: Colors.white,size: 15,),
                )
              ],
            ),
          ),

          SizedBox(height: 10,),
          Divider(color: Colors.grey.withOpacity(0.5),),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(currentOrderModel.imageUrl,height: 60,width: 45,fit: BoxFit.cover,),
                ),
                SizedBox(width: 10,),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(currentOrderModel.food,style: CustomTextStyle.mediumTextStyle(),),
                      Text(currentOrderModel.foodInfo1,style: CustomTextStyle.ultraSmallTextStyle(),)
                    ],
                  ),
                ),
                SizedBox(width: 10,),

                Text(currentOrderModel.foodQuantity,style: CustomTextStyle.mediumTextStyle(),)
              ],
            ),
          ),

        ],
      ),
    );
  }
}

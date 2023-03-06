import 'package:flutter/material.dart';
import 'package:login_app/scr/features/core/models/dashboard/dashboard_categoris_model.dart';
class DashCategorisModel extends StatelessWidget {
  const DashCategorisModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //----list Reffercode 'DashboardCategorisModel.list' *******
    final list = DashboardCategorisModel.list;

    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
          shrinkWrap: true,
          itemBuilder: (context, index)=>InkWell(
            onTap: list[index].onPress,
            child: Container(
                height: 70,
                width: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Row(
                  children: [
                    Container(
                        height: 70,
                        width: 80,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black.withOpacity(0.8),
                        ),
                        child: Center(child: Text(list[index].title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white.withOpacity(.8)),))),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                            TextSpan(
                                text: 'Writer: ',
                                children:[
                                  TextSpan(
                                      text: list[index].heading,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple.withOpacity(0.8))
                                  )
                                ] )),
                        SizedBox(height: 5),
                        Text('video: ${list[index].subheading}',style: TextStyle(fontWeight: FontWeight.w400),),
                      ],
                    )
                  ],
                )
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_app/scr/features/core/models/dashboard/course_categoris_model.dart';
class PcourseCategorisModel extends StatelessWidget {
   PcourseCategorisModel({Key? key}) : super(key: key);

  // -----list model refercode 'CourseCategorisModel.arry' *********
  final arrylist = CourseCategorisModel.arry;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: arrylist.length,
        itemBuilder: (context,index)=>InkWell(
          onTap: arrylist[index].onPress,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.black.withOpacity(0.1)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(arrylist[index].subName,style: TextStyle(fontSize: 20),),
                      Flexible(child: Image.asset(arrylist[index].image)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(arrylist[index].icon),
                      ),
                      SizedBox(width: 15,),
                      Flexible(child: Text(arrylist[index].writerName,style: TextStyle(fontSize: 15,overflow: TextOverflow.clip),))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

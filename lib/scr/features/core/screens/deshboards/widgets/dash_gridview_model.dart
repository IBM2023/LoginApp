import 'package:flutter/material.dart';
import 'package:login_app/scr/features/core/models/dashboard/gridview_model.dart';
class DashGridViewBuilder extends StatelessWidget {
   DashGridViewBuilder({Key? key}) : super(key: key);

  // -------list referCode 'GridViewModel.list'***********
  final gridlist = GridViewModel.list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.1),
      ),
      child: GridView.builder(
        itemCount: gridlist.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              maxCrossAxisExtent: 210),
          itemBuilder: (context, index)=> InkWell(
            onTap: gridlist[index].onPress,
            child: Container(
              height: 300,
              width: 200,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Stack(
                children: [
                  Image.asset(gridlist[index].bgimage,fit: BoxFit.fill,),
                  Image.asset(gridlist[index].bannerimage,height: 50,width: 60,),
                  Positioned(

                      bottom: 40,
                      child: Text(gridlist[index].subName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                  Positioned(
                      bottom: 20,

                      child: Text('Lesson: ${gridlist[index].lessonConunt}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400))),


                ],
              ),
            ),
          ),),
    );
  }
}

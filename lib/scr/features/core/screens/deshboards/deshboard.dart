import 'package:flutter/material.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/appbar.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/dash_categoris_model.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/dash_gridview_model.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/dawerWidget.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/pcourse_categoris_model.dart';
import 'package:login_app/scr/features/core/screens/deshboards/widgets/search_option.dart';

import '../../../../common_widgets/sizebox_text_widget.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(0.9),
      appBar: DashboardAppBarWidget(),
      drawer: DawerWidget(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),

          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Text.rich(TextSpan(
                  text: 'Hi...',
                   children:[
                     TextSpan(text: 'Welcome to our courses',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent.withOpacity(0.6)))
                   ] ),
                style: TextStyle(fontSize: 50,fontWeight: FontWeight.w300),),
              Text('Our Expert',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40),),
              SizedBox(height: 15,),


              //------search Box ****
              SearchBox(),
              SizedBox(height: 15,),




              //---------ListView.builder *****
              DashCategorisModel(),
              SizedBox(height: 25,),




              //------GridView.builder *****
              DashGridViewBuilder(),
              SizedBox(height: 15,),




            // --------- Pupolar courses 'listView.builder'*******
              Text('Most popular courses',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              PcourseCategorisModel(),









            ],
          ),
        ),
      ),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:login_app/scr/features/core/models/dawer/dawer_list_tile_model.dart';


class DListTileModel extends StatelessWidget {
   DListTileModel({Key? key}) : super(key: key);
 //--------List Refer code 'DawerListTileModel.list' *********
 final map = DawerListTileModel.list;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.6,
      child: ListView.separated(
           shrinkWrap: true,
            itemBuilder: (context, index)=>InkWell(
              onTap: map[index].onPress,
              child: ListTile(
                leading:map[index].leadingIcon,
                title:Text(map[index].titleText,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400,color: Colors.purple),) ,
              ),
            ),


            separatorBuilder: (context , index)=> Divider(
              color: Colors.grey.withOpacity(0.2),
             thickness: 0.8,
            ),
            itemCount: map.length),
    )
    ;
  }
}

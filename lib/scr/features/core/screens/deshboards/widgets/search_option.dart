import 'package:flutter/material.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(21)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height,
              // color: Colors.greenAccent,
              child: TextField(
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.symmetric(vertical: 10),
                    fillColor: Colors.black.withOpacity(0.2),
                    filled: true,
                    hintText: '।       Search',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(color: Colors.transparent,width: 0.0)
                    ),

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(color: Colors.transparent,width: 0.0)
                    )
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.mic))
        ],
      ),
    );
  }
}
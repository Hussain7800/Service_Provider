import 'package:designfyp/Dashboard/DashboardshowCatgories.dart';
import 'package:flutter/material.dart';

class HorizontallyScrollableContainer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 320,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:[
       
                // CategoriesBox(), 
            
          ]
        ),
      ),
    );
  }
}

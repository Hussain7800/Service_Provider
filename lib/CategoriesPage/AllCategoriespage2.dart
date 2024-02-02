
import 'package:flutter/material.dart';

class AllCategory extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly
      ,
      children: [
        _buildImageWithText('assets/cleaning_category.png', 'Cleaner'),
        _buildImageWithText('assets/repairing.png', 'Repairer'),
        _buildImageWithText('assets/painting.png', 'Painter'),
        _buildImageWithText('assets/gardening_category.png', 'Gardener'),
        // _buildImageWithText('assets/2.png', 'Gardener'),
      ],
    );
  }

  Widget _buildImageWithText(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  imagePath,
                  width: 48,
                  height: 44,
                  fit: BoxFit.cover,
                ),
              ),
                 
              SizedBox(height: 4),
              
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 40,),
                ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  imagePath,
                  width: 48,
                  height: 44,
                  fit: BoxFit.cover,
                ),
              ),
                 
              SizedBox(height: 4),
              
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 40,),
               ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  imagePath,
                  width: 48,
                  height: 44,
                  fit: BoxFit.cover,
                ),
              ),
                 
              SizedBox(height: 4),
              
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 40,),
               ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  imagePath,
                  width: 48,
                  height: 44,
                  fit: BoxFit.cover,
                ),
              ),
                 
              SizedBox(height: 4),
              
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ],
      ),
    );
  }
}
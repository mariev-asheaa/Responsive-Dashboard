import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Allexpencesitemheader extends StatelessWidget {
  const Allexpencesitemheader({super.key, required this.image, this.imagebackground, this.imagecolor});
  
final String image;
final Color ? imagebackground,imagecolor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child:
                CircleAvatar(
                  backgroundColor: imagebackground??Color(0xffFAFAFA),
                  child: Center(
                      child: SvgPicture.asset(image,
                  colorFilter: ColorFilter.mode(imagecolor??Color(0xFF4EB7F2), BlendMode.srcIn),
                  )),
                ),),
          ),
        ),
            Icon(Icons.arrow_forward_ios,size: 24,
                color:imagecolor==null? Color(0xff064061):Colors.white)

            //if the image color is null it means its on InactiveItem then set default icon color
      ],
    );
  }
}

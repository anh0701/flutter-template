import 'package:demo/themes/theme.dart';
import 'package:demo/views/widgets/custom_color.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String imageUrl;
  final bool online;
  final double size;

  const ProfileImage({super.key, required this.imageUrl, this.online = false, this.size = 90});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: imageUrl != ""
                ? Image.network(
                    imageUrl,
                    width: size,
                    height: size,
                    fit: BoxFit.fill,
                  )
                : Icon(
                    Icons.group_rounded,
                    size: size,
                    color: CustomColor.kPrimaryColor,
                  ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: online ? OnlineIndicator() : Container(),
          )
        ],
      ),
    );
  }
}

class OnlineIndicator extends StatelessWidget {
  const OnlineIndicator();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.0,
      width: 15.0,
      decoration: BoxDecoration(
        color: CustomColor.kIndicatorBubble,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 3.0,
          color: isLightTheme(context) ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

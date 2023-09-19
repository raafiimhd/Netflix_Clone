import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
   CommingSoonWidget(
      {super.key,required this.name,required this.posterurl,required this.description});

  final String name, description, posterurl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'FEB',
                style: TextStyle(
                    fontSize: 16, color: kGerayColor, letterSpacing: 2),
              ),
              Text(
                '11',
                style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               VideoWidget(image: 'https://image.tmdb.org/t/p/w500$posterurl'),
              kHeight,
            const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'TALL GIRL 2',
                      style:  TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ),
                   Row(
                    children: [
                      CoustomButtonWidget(
                        icon: FontAwesomeIcons.bell,
                        title: 'Remind me',
                        textSize: 10,
                        iconSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                      kWidth,
                      CoustomButtonWidget(
                        icon: Icons.info_outline,
                        title: 'Info',
                        textSize: 10,
                        iconSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              kHeight,
              const Text(
                'Comming On Frieday',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              kHeight,
              Row(
                children: [
                  Image.network(netflixLogo, height: 50),
                  const Text(
                    'FILM',
                    style: TextStyle(
                      letterSpacing: 4,
                      fontSize: 13,
                      color: kGerayColor,
                    ),
                  )
                ],
              ),
             const Text(
                'name',
                style:  TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
             const Flexible(
                child: Text(
                  'description',
                  style:  TextStyle(
                    color: kGerayColor,
                  ),
                ),
              ),
              kHight20,
               const Row(
                children: [
                 Text(
                    'intimate',
                    style: kNewAndHot,
                  ),
                  kwidth6,
                Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 5,
                  ),
                  kwidth6,
                Text(
                    'Hearful',
                    style: kNewAndHot,
                  ),
                  kwidth6,
                 Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 5,
                  ),
                  kwidth6,
                  Text(
                    'Reality TV',
                    style: kNewAndHot,
                  ),
                  kwidth6,
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 5,
                  ),
                  kwidth6,
                  Text(
                    'New zealand',
                    style: kNewAndHot,
                  ),
                  kwidth6,
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 5,
                  ),
                  Text(
                    'Feel ',
                    style: kNewAndHot,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
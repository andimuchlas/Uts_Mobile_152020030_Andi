import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth/Screens/Home/style/colors.dart';
import 'package:flutter_auth/Screens/Home/config/size_config.dart';
import '../../Calculator/calculator.dart';
import '../../BMI/screens/BMI.dart';
import '../../Profile/view/moblie_body.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Container(
               height: 100,
               alignment: Alignment.topCenter,
               width: double.infinity,
               padding: EdgeInsets.only(top: 20),
               child: SizedBox(
                    width: 35,
                    height: 20,
                    child: SvgPicture.asset('assets/icons/mac-action.svg'),
                  ),
             ),
            
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/icons/health.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BMI(title: 'BMI',);
                        },
                      ),
                  );}
              ),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/icons/calculator-minimalistic.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Calculator(title: 'Calculator',);
                  },
                ),
              );}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/icons/shape.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Calculator(title: 'Calculator',);
                  },
                ),
              );}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/icons/money.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/icons/aboutme.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MobileBody();
                  },
                ),
              );}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/icons/invoice.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
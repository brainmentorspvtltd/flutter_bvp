import 'package:carousel_pro/carousel_pro.dart';
import 'package:fk_appwend/models/product.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  List<Product> ads = [];
  SliderWidget(this.ads);
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width,
      height: deviceSize.height / 3,
      child: Carousel(
          dotSize: 5.0,
          dotBgColor: Colors.amber,
          animationDuration: Duration(seconds: 1),
          autoplay: true,
          borderRadius: true,
          onImageTap: (int currentSlideNumber) {
            print("Current Slide Number $currentSlideNumber");
          },
          //dotSpacing: 4.0,
          images: ads != null && ads.length > 0
              ? ads
                  .map((currentAd) => NetworkImage(currentAd.imagePath))
                  .toList()
              : [
                  NetworkImage(
                      'https://codemyui.com/wp-content/uploads/2017/09/rotate-pulsating-loading-animation.gif')
                ]
          /*
        images: [
          // ExactAssetImage()
          NetworkImage(
              'https://www.france-hotel-guide.com/en/blog/wp-content/uploads/2017/02/paris-shopping.jpg'),
          NetworkImage(
              'https://i0.wp.com/www.paisawapas.com/blog/wp-content/uploads/2017/08/shoes-offers-snapdeal-below-499.jpg'),
          NetworkImage(
              'https://review.chinabrands.com/chinabrands/seo/image/20190219/dubaionlineshoppingsites,.png'),
          NetworkImage(
              'https://li0.rightinthebox.com/images/dfp/202010/LITB_13080_thxgus5_en.gif')
        ],

         */
          ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:grocery_app/common/utils/kcolors.dart';
import 'package:grocery_app/common/widgets/app_style.dart';
import 'package:grocery_app/common/widgets/reusable_text.dart';
import 'package:grocery_app/src/products/controllers/product_notifier.dart';
import 'package:grocery_app/src/products/models/products_model.dart';
import 'package:grocery_app/src/wishlist/controllers/wishlist_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class StaggeredTileWidget extends StatelessWidget {
  const StaggeredTileWidget(
      {super.key, required this.i, required this.product, this.onTap});

  final int i;
  final Products product;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // String? accessToken = Storage().getString('accessToken');
    return GestureDetector(
      onTap: () {
        context.read<ProductNotifier>().setProuct(product);
        context.push('/product/${product.id}');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Kolors.kOffWhite,
          
            
           child: SingleChildScrollView( // ✅ Added scroll support
          
          child: Column(
             
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: i % 2 == 0 ? 163.h : 180.h,
            
                color: Kolors.kPrimary,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                        height: i % 2 == 0 ? 163.h : 180.h,
                        fit: BoxFit.cover,
                        imageUrl: product.imageUrls[0]),

                    Positioned(
                        right: 10.h,
                        top: 10.h,
                        child: Consumer<WishlistNotifier>(
                          builder: (context, wishlistNotifier, child) {
                            return GestureDetector(
                          onTap: onTap,
                          child:  CircleAvatar(
                            backgroundColor: Kolors.kSecondaryLight,
                            child: Icon(
                              AntDesign.heart,
                              color: wishlistNotifier.wishlist.contains(product.id)? Kolors.kRed : Kolors.kGray,
                              size: 18,
                            ),
                          ),
                        );
                          },
                        ))
                  ],
                ),
              ),
              Padding(
  padding: EdgeInsets.symmetric(horizontal: 2.w),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
        child: Text(
          product.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: appStyle(13, Kolors.kDark, FontWeight.w600),
        ),
      ),
    ],
  ),
),

Padding(
  padding: EdgeInsets.symmetric(horizontal: 2.w),
  child: ReusableText(
    text: 'Rs ${product.price.toStringAsFixed(2)}',
    style: appStyle(17, Kolors.kDark, FontWeight.w500),
  ),
),

            ],
          ),
        ),
      ),
      ),
      
    );
  }
}






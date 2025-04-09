import 'package:grocery_app/common/services/storage.dart';
import 'package:grocery_app/common/widgets/login_bottom_sheet.dart';
import 'package:grocery_app/common/widgets/shimmers/list_shimmer.dart';
import 'package:grocery_app/const/resource.dart';
import 'package:grocery_app/src/home/controllers/home_tab_notifier.dart';
import 'package:grocery_app/src/products/hooks/fetch_products.dart';
import 'package:grocery_app/src/products/widgets/staggered_tile_widget.dart';
import 'package:grocery_app/src/wishlist/controllers/wishlist_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class ExploreProducts extends HookWidget {
  const ExploreProducts({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    final results = fetchProducts(context.watch<HomeTabNotifier>().queryType);
    final products = results.products;
    final isLoading = results.isLoading;
    final error = results.error;
  


    if (isLoading) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: const ListShimmer(),
      );
    }

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),

          child: products.isEmpty
              ? Padding(
                  padding: EdgeInsets.all(25.w),
                  child: Image.asset(
                    R.ASSETS_IMAGES_EMPTY_PNG,
                    height: ScreenUtil().screenHeight * .3,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 10.h,
                  ),
                  child: StaggeredGrid.count(
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    crossAxisCount: 4,
                    children: List.generate(products.length, (i) {
                      final double mainAxisCellCount = (i % 2 == 0 ? 2.17 : 2.4);
                      final product = products[i];

                      return StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: mainAxisCellCount,
                        child: StaggeredTileWidget(
                          onTap: () {
                            if (accessToken == null) {
                              loginBottomSheet(context);
                            } else {
                              context
                                  .read<WishlistNotifier>()
                                  .addRemoveWishlist(product.id, () {});
                            }
                          },
                          product: product,
                          i: i,
                        ),
                      );
                    }),
                  ),
                ),
        ),
      ),
    );
  }
}

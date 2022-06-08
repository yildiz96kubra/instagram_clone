import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/category_bar.dart';
import 'package:instagram_clone/widgets/custom_shop_app_bar.dart';
import 'package:instagram_clone/widgets/persistent_header.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  late ScrollController _scrollController;
  bool _showSearchBar = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _showSearchBar = _scrollController.offset > 43;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            CustomShopAppBar(
              showSearchBar: _showSearchBar,
            ),
            SliverPersistentHeader(
                delegate: PersistenHeader(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 4, left: 14, right: 14),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: TextField(
                          cursorColor: Colors.grey.shade500,
                          decoration: InputDecoration(
                              hintText: "Search Shop",
                              hintStyle: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade500),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 22,
                                color: Colors.grey.shade500,
                              )),
                          style: TextStyle(color: Colors.black, fontSize: 16.5),
                        ),
                      ),
                    ),
                    mnXExtent: 42,
                    mXExtent: 42)),
            SliverPersistentHeader(
              delegate: PersistenHeader(
                child: CategoryBar(
                  categories: [
                    "Shops",
                    "Videos",
                    "Editors'picks",
                    "Collections",
                    "Guides"
                  ],
                ),
                mnXExtent: 50,
                mXExtent: 50,
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((_, int index) {
                return Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          'https://picsum.photos/id/${index + 1070}/500/500'),
                    )),
                    child: index == 0
                        ? Text("Contiune Shopping",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600))
                        : null);
              }, childCount: 15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1),
            )
          ],
        ),
      ),
    );
    ;
  }
}

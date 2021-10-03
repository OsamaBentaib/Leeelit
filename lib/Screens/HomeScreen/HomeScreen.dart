import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearift/APIs/products.dart';
import 'package:wearift/Theme/colors.dart';
import 'package:wearift/Widget/AppBar/HomeAppBar.dart';
import 'package:wearift/Widget/ProductItem/ProductItem.dart';
import 'package:wearift/models/product.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<ProductResponse> futureProductResponse;
  void init() async {
    var response = await loadProducts();
    setState(() {
      response.connection!.edges;
    });
  }

  @override
  void initState() {
    super.initState();
    futureProductResponse = loadProducts();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: FutureBuilder<ProductResponse>(
        future: futureProductResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductEdge> edges =
                snapshot.data!.connection!.edges as List<ProductEdge>;
            return CustomScrollView(
              slivers: <Widget>[
                // exploreAppBar(),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 0.75,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: white,
                          border: Border(
                            top: BorderSide(
                              color: kBorderColor,
                            ),
                            right: BorderSide(
                              color: kBorderColor,
                            ),
                          ),
                        ),
                        child: Center(
                          child: ProductItemWidget(
                            index: index,
                            product: edges[index].node,
                            press: () {},
                          ),
                        ),
                      );
                    },
                    childCount: edges.length,
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

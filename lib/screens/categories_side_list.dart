import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shop_ata_click/models/categories_model.dart';
import 'package:shop_ata_click/services/categories_service.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class CategoriesSideList extends StatelessWidget {
  int page = 1;

//CategoriesSideList();
  @override
  Widget build(BuildContext context) {
    final CategoriesService categoriesService = CategoriesService();
    return FutureProvider(
      create: (context) => categoriesService.fetchCategories(page),
      catchError: (context, error) {
        print(error.toString());
      },
      initialData: null,
      child: CategoriesSideListBody(),
    );
  }
}

class CategoriesSideListBody extends StatefulWidget {
  @override
  _CategoriesSideListBodyState createState() => _CategoriesSideListBodyState();
}

class _CategoriesSideListBodyState extends State<CategoriesSideListBody> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  List<Datum> data;
  bool isLoading = false;
  int newPage = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CategoriesService categoriesService = CategoriesService();
    categoriesService.fetchCategories(1).then((value) {
      data = value.categories.data;
      print(data[0].title);
      setState(() {
        isLoading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SmartRefresher(
            onRefresh: null,
            enablePullDown: false,
            controller: _refreshController,
            enablePullUp: true,
            onLoading: () async {
              //   int newPage=2;
              CategoriesService categoriesService = CategoriesService();
              CategoriesModel newCategoriesData =
                  await categoriesService.fetchCategories(newPage);
              List<Datum> list = newCategoriesData.categories.data;

              setState(() {
                data.addAll(list);
                _refreshController.loadComplete();
                newPage++;
              });
            },
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        // for (int i = 0; i < selected.length; i++) {
                        //   setState(() {
                        //     selected[i] = false;
                        //   });
                        // }
                        // selected[index] = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 0.0, left: 8.0, right: 8.0),
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: selected[index] ? primaryColor : Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(bottom: 5.0, top: 8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                    color:
                                        // selected[index] ? Colors.white : Colors.grey
                                        Colors.grey)),
                          ),
                          Text(
                            data[index].title.toString(),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                //  color: selected[index] ? Colors.white : Colors.grey
                                color: Colors.grey,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        : Center(
            child: CircleAvatar(
              maxRadius: 20,
              backgroundColor: primaryColor,
              child: SpinKitRotatingCircle(
                color: Colors.white,
                size: 30.0,
              ),
            ),
          );
  }
}

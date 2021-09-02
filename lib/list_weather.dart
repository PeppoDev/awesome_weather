import 'package:flutter/material.dart';

class ListData implements Comparable<ListData> {
  String? city;
  String? temp;
  bool? isFav;

  ListData({
    this.city,
    this.temp,
    this.isFav,
  });
  ListData.fromJson(Map<String, dynamic> json) {
    city = json["city"]?.toString();
    temp = json["temp"]?.toString();
    isFav = json["isFav"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["city"] = city;
    data["temp"] = temp;
    data["isFav"] = isFav;
    return data;
  }

  @override
  int compareTo(ListData other) {
    if (this.isFav ?? false) {
      return 0;
    }
    return 1;
  }
}

class ListWeather extends StatefulWidget {
  ListWeather({Key? key}) : super(key: key);

  @override
  _ListWeatherState createState() => _ListWeatherState();
}

class _ListWeatherState extends State<ListWeather> {
  List<ListData> cityList = [
    ListData(city: "Londres", isFav: false, temp: "12.04"),
    ListData(city: "Arapiraca", isFav: false, temp: "19.04"),
    ListData(city: "Pão de Açúcar", isFav: false, temp: "57.04"),
    ListData(city: "Belém", isFav: false, temp: "60.00"),
    ListData(city: "Pelotas", isFav: false, temp: "-12.00"),
    ListData(city: "Nova York", isFav: false, temp: "15.04"),
    ListData(city: "Buenos Aires", isFav: false, temp: "17.00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: cityList.length,
        itemBuilder: (_, index) {
          bool isFav = cityList[index].isFav ?? false;

          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.3,
                ),
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Table(
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text("${cityList[index].city}"),
                        verticalAlignment: TableCellVerticalAlignment.middle,
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text(
                          "${cityList[index].temp} Cº",
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              cityList[index].isFav = !isFav;
                              cityList.sort();
                            });
                          },
                          icon: Icon(
                            Icons.star,
                            color: isFav ? Colors.amber : Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

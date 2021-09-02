import 'package:awesome_weather/models.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:dio/dio.dart';

Future<SomeRootEntity> _determinePosition() async {
  var serviceEnabled = await Location().serviceEnabled();
  if (!serviceEnabled) {
    serviceEnabled = await Location().requestService();
    if (!serviceEnabled) {
      return new SomeRootEntity();
    }
  }

  var permissionGranted = await Location().hasPermission();
  if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await Location().requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      return new SomeRootEntity();
    }
  }

  var currentLocation = await Location().getLocation();

  var dio = Dio();
  final response = await dio
      .get('https://api.openweathermap.org/data/2.5/weather', queryParameters: {
    "appid": "9fe926f90f8f1d1ebf5c62693e5099b1",
    "lat": currentLocation.latitude,
    "lon": currentLocation.longitude,
    "units": "metric",
  });

  var data = SomeRootEntity.fromJson(response.data);

  return data;
}

class MainWeather extends StatefulWidget {
  MainWeather({Key? key}) : super(key: key);

  @override
  _MainWeatherState createState() => _MainWeatherState();
}

class _MainWeatherState extends State<MainWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder<SomeRootEntity>(
          future: _determinePosition(),
          builder: (context, AsyncSnapshot<SomeRootEntity> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.connectionState == ConnectionState.none) {
              return Text("Algo deu errado :(");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${snapshot.data?.main?.temp} Cº",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text("${snapshot.data?.name}"),
                ],
              );
            }
            return Text("");
          },
        ),
      ),
    );
  }
}

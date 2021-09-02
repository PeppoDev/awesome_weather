class SomeRootEntitySys {
/*
{
  "type": 2,
  "id": 2002303,
  "sunrise": 1630562192,
  "sunset": 1630605794
} 
*/

  int? type;
  int? id;
  int? sunrise;
  int? sunset;

  SomeRootEntitySys({
    this.type,
    this.id,
    this.sunrise,
    this.sunset,
  });
  SomeRootEntitySys.fromJson(Map<String, dynamic> json) {
    type = json["type"]?.toInt();
    id = json["id"]?.toInt();
    sunrise = json["sunrise"]?.toInt();
    sunset = json["sunset"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["type"] = type;
    data["id"] = id;
    data["sunrise"] = sunrise;
    data["sunset"] = sunset;
    return data;
  }
}

class SomeRootEntityClouds {
/*
{
  "all": 93
} 
*/

  int? all;

  SomeRootEntityClouds({
    this.all,
  });
  SomeRootEntityClouds.fromJson(Map<String, dynamic> json) {
    all = json["all"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["all"] = all;
    return data;
  }
}

class SomeRootEntityWind {
/*
{
  "speed": 7.82,
  "deg": 219,
  "gust": 7.81
} 
*/

  double? speed;
  int? deg;
  double? gust;

  SomeRootEntityWind({
    this.speed,
    this.deg,
    this.gust,
  });
  SomeRootEntityWind.fromJson(Map<String, dynamic> json) {
    speed = json["speed"]?.toDouble();
    deg = json["deg"]?.toInt();
    gust = json["gust"]?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["speed"] = speed;
    data["deg"] = deg;
    data["gust"] = gust;
    return data;
  }
}

class SomeRootEntityMain {
/*
{
  "temp": 296.21,
  "feels_like": 296.84,
  "temp_min": 295.93,
  "temp_max": 296.48,
  "pressure": 979,
  "humidity": 87
} 
*/

  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;

  SomeRootEntityMain({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  });
  SomeRootEntityMain.fromJson(Map<String, dynamic> json) {
    temp = json["temp"]?.toDouble();
    feelsLike = json["feels_like"]?.toDouble();
    tempMin = json["temp_min"]?.toDouble();
    tempMax = json["temp_max"]?.toDouble();
    pressure = json["pressure"]?.toInt();
    humidity = json["humidity"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["temp"] = temp;
    data["feels_like"] = feelsLike;
    data["temp_min"] = tempMin;
    data["temp_max"] = tempMax;
    data["pressure"] = pressure;
    data["humidity"] = humidity;
    return data;
  }
}

class SomeRootEntityWeather {
/*
{
  "id": 804,
  "main": "Clouds",
  "description": "overcast clouds",
  "icon": "04n"
} 
*/

  int? id;
  String? main;
  String? description;
  String? icon;

  SomeRootEntityWeather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });
  SomeRootEntityWeather.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toInt();
    main = json["main"]?.toString();
    description = json["description"]?.toString();
    icon = json["icon"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["main"] = main;
    data["description"] = description;
    data["icon"] = icon;
    return data;
  }
}

class SomeRootEntityCoord {
/*
{
  "lon": 0,
  "lat": 0
} 
*/

  int? lon;
  int? lat;

  SomeRootEntityCoord({
    this.lon,
    this.lat,
  });
  SomeRootEntityCoord.fromJson(Map<String, dynamic> json) {
    lon = json["lon"]?.toInt();
    lat = json["lat"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["lon"] = lon;
    data["lat"] = lat;
    return data;
  }
}

class SomeRootEntity {
/*
{
  "coord": {
    "lon": 0,
    "lat": 0
  },
  "weather": [
    {
      "id": 804,
      "main": "Clouds",
      "description": "overcast clouds",
      "icon": "04n"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 296.21,
    "feels_like": 296.84,
    "temp_min": 295.93,
    "temp_max": 296.48,
    "pressure": 979,
    "humidity": 87
  },
  "visibility": 10000,
  "wind": {
    "speed": 7.82,
    "deg": 219,
    "gust": 7.81
  },
  "clouds": {
    "all": 93
  },
  "dt": 1630550446,
  "sys": {
    "type": 2,
    "id": 2002303,
    "sunrise": 1630562192,
    "sunset": 1630605794
  },
  "timezone": 0,
  "id": 6295630,
  "name": "Globe",
  "cod": 200
} 
*/

  SomeRootEntityCoord? coord;
  List<SomeRootEntityWeather?>? weather;
  String? base;
  SomeRootEntityMain? main;
  int? visibility;
  SomeRootEntityWind? wind;
  SomeRootEntityClouds? clouds;
  int? dt;
  SomeRootEntitySys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  SomeRootEntity({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });
  SomeRootEntity.fromJson(Map<String, dynamic> json) {
    coord = (json["coord"] != null)
        ? SomeRootEntityCoord.fromJson(json["coord"])
        : null;
    if (json["weather"] != null) {
      final v = json["weather"];
      final arr0 = <SomeRootEntityWeather>[];
      v.forEach((v) {
        arr0.add(SomeRootEntityWeather.fromJson(v));
      });
      weather = arr0;
    }
    base = json["base"]?.toString();
    main = (json["main"] != null)
        ? SomeRootEntityMain.fromJson(json["main"])
        : null;
    visibility = json["visibility"]?.toInt();
    wind = (json["wind"] != null)
        ? SomeRootEntityWind.fromJson(json["wind"])
        : null;
    clouds = (json["clouds"] != null)
        ? SomeRootEntityClouds.fromJson(json["clouds"])
        : null;
    dt = json["dt"]?.toInt();
    sys =
        (json["sys"] != null) ? SomeRootEntitySys.fromJson(json["sys"]) : null;
    timezone = json["timezone"]?.toInt();
    id = json["id"]?.toInt();
    name = json["name"]?.toString();
    cod = json["cod"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (coord != null) {
      data["coord"] = coord!.toJson();
    }
    if (weather != null) {
      final v = weather;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["weather"] = arr0;
    }
    data["base"] = base;
    if (main != null) {
      data["main"] = main!.toJson();
    }
    data["visibility"] = visibility;
    if (wind != null) {
      data["wind"] = wind!.toJson();
    }
    if (clouds != null) {
      data["clouds"] = clouds!.toJson();
    }
    data["dt"] = dt;
    if (sys != null) {
      data["sys"] = sys!.toJson();
    }
    data["timezone"] = timezone;
    data["id"] = id;
    data["name"] = name;
    data["cod"] = cod;
    return data;
  }
}

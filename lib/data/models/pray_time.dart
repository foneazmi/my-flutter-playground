part of models;

class PrayTime {
  num? _code;
  String? _status;
  Results? _results;

  PrayTime({num? code, String? status, Results? results}) {
    if (code != null) {
      _code = code;
    }
    if (status != null) {
      _status = status;
    }
    if (results != null) {
      _results = results;
    }
  }

  num? get code => _code;
  set code(num? code) => _code = code;
  String? get status => _status;
  set status(String? status) => _status = status;
  Results? get results => _results;
  set results(Results? results) => _results = results;

  PrayTime.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _status = json['status'];
    _results =
        json['results'] != null ? Results.fromJson(json['results']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = _code;
    data['status'] = _status;
    if (_results != null) {
      data['results'] = _results!.toJson();
    }
    return data;
  }
}

class Results {
  List<Datetime>? _datetime;
  Location? _location;
  Settings? _settings;

  Results({List<Datetime>? datetime, Location? location, Settings? settings}) {
    if (datetime != null) {
      _datetime = datetime;
    }
    if (location != null) {
      _location = location;
    }
    if (settings != null) {
      _settings = settings;
    }
  }

  List<Datetime>? get datetime => _datetime;
  set datetime(List<Datetime>? datetime) => _datetime = datetime;
  Location? get location => _location;
  set location(Location? location) => _location = location;
  Settings? get settings => _settings;
  set settings(Settings? settings) => _settings = settings;

  Results.fromJson(Map<String, dynamic> json) {
    if (json['datetime'] != null) {
      _datetime = <Datetime>[];
      json['datetime'].forEach((v) {
        _datetime!.add(Datetime.fromJson(v));
      });
    }
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _settings =
        json['settings'] != null ? Settings.fromJson(json['settings']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_datetime != null) {
      data['datetime'] = _datetime!.map((v) => v.toJson()).toList();
    }
    if (_location != null) {
      data['location'] = _location!.toJson();
    }
    if (_settings != null) {
      data['settings'] = _settings!.toJson();
    }
    return data;
  }
}

class Datetime {
  Times? _times;
  Date? _date;

  Datetime({Times? times, Date? date}) {
    if (times != null) {
      _times = times;
    }
    if (date != null) {
      _date = date;
    }
  }

  Times? get times => _times;
  set times(Times? times) => _times = times;
  Date? get date => _date;
  set date(Date? date) => _date = date;

  Datetime.fromJson(Map<String, dynamic> json) {
    _times = json['times'] != null ? Times.fromJson(json['times']) : null;
    _date = json['date'] != null ? Date.fromJson(json['date']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_times != null) {
      data['times'] = _times!.toJson();
    }
    if (_date != null) {
      data['date'] = _date!.toJson();
    }
    return data;
  }
}

class Times {
  String? _imsak;
  String? _sunrise;
  String? _fajr;
  String? _dhuhr;
  String? _asr;
  String? _sunset;
  String? _maghrib;
  String? _isha;
  String? _midnight;

  Times(
      {String? imsak,
      String? sunrise,
      String? fajr,
      String? dhuhr,
      String? asr,
      String? sunset,
      String? maghrib,
      String? isha,
      String? midnight}) {
    if (imsak != null) {
      _imsak = imsak;
    }
    if (sunrise != null) {
      _sunrise = sunrise;
    }
    if (fajr != null) {
      _fajr = fajr;
    }
    if (dhuhr != null) {
      _dhuhr = dhuhr;
    }
    if (asr != null) {
      _asr = asr;
    }
    if (sunset != null) {
      _sunset = sunset;
    }
    if (maghrib != null) {
      _maghrib = maghrib;
    }
    if (isha != null) {
      _isha = isha;
    }
    if (midnight != null) {
      _midnight = midnight;
    }
  }

  String? get imsak => _imsak;
  set imsak(String? imsak) => _imsak = imsak;
  String? get sunrise => _sunrise;
  set sunrise(String? sunrise) => _sunrise = sunrise;
  String? get fajr => _fajr;
  set fajr(String? fajr) => _fajr = fajr;
  String? get dhuhr => _dhuhr;
  set dhuhr(String? dhuhr) => _dhuhr = dhuhr;
  String? get asr => _asr;
  set asr(String? asr) => _asr = asr;
  String? get sunset => _sunset;
  set sunset(String? sunset) => _sunset = sunset;
  String? get maghrib => _maghrib;
  set maghrib(String? maghrib) => _maghrib = maghrib;
  String? get isha => _isha;
  set isha(String? isha) => _isha = isha;
  String? get midnight => _midnight;
  set midnight(String? midnight) => _midnight = midnight;

  Times.fromJson(Map<String, dynamic> json) {
    _imsak = json['Imsak'];
    _sunrise = json['Sunrise'];
    _fajr = json['Fajr'];
    _dhuhr = json['Dhuhr'];
    _asr = json['Asr'];
    _sunset = json['Sunset'];
    _maghrib = json['Maghrib'];
    _isha = json['Isha'];
    _midnight = json['Midnight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Imsak'] = _imsak;
    data['Sunrise'] = _sunrise;
    data['Fajr'] = _fajr;
    data['Dhuhr'] = _dhuhr;
    data['Asr'] = _asr;
    data['Sunset'] = _sunset;
    data['Maghrib'] = _maghrib;
    data['Isha'] = _isha;
    data['Midnight'] = _midnight;
    return data;
  }
}

class Date {
  num? _timestamp;
  String? _gregorian;
  String? _hijri;

  Date({num? timestamp, String? gregorian, String? hijri}) {
    if (timestamp != null) {
      _timestamp = timestamp;
    }
    if (gregorian != null) {
      _gregorian = gregorian;
    }
    if (hijri != null) {
      _hijri = hijri;
    }
  }

  num? get timestamp => _timestamp;
  set timestamp(num? timestamp) => _timestamp = timestamp;
  String? get gregorian => _gregorian;
  set gregorian(String? gregorian) => _gregorian = gregorian;
  String? get hijri => _hijri;
  set hijri(String? hijri) => _hijri = hijri;

  Date.fromJson(Map<String, dynamic> json) {
    _timestamp = json['timestamp'];
    _gregorian = json['gregorian'];
    _hijri = json['hijri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timestamp'] = _timestamp;
    data['gregorian'] = _gregorian;
    data['hijri'] = _hijri;
    return data;
  }
}

class Location {
  double? _latitude;
  double? _longitude;
  num? _elevation;
  String? _city;
  String? _country;
  String? _countryCode;
  String? _timezone;
  num? _localOffset;

  Location(
      {double? latitude,
      double? longitude,
      num? elevation,
      String? city,
      String? country,
      String? countryCode,
      String? timezone,
      num? localOffset}) {
    if (latitude != null) {
      _latitude = latitude;
    }
    if (longitude != null) {
      _longitude = longitude;
    }
    if (elevation != null) {
      _elevation = elevation;
    }
    if (city != null) {
      _city = city;
    }
    if (country != null) {
      _country = country;
    }
    if (countryCode != null) {
      _countryCode = countryCode;
    }
    if (timezone != null) {
      _timezone = timezone;
    }
    if (localOffset != null) {
      _localOffset = localOffset;
    }
  }

  double? get latitude => _latitude;
  set latitude(double? latitude) => _latitude = latitude;
  double? get longitude => _longitude;
  set longitude(double? longitude) => _longitude = longitude;
  num? get elevation => _elevation;
  set elevation(num? elevation) => _elevation = elevation;
  String? get city => _city;
  set city(String? city) => _city = city;
  String? get country => _country;
  set country(String? country) => _country = country;
  String? get countryCode => _countryCode;
  set countryCode(String? countryCode) => _countryCode = countryCode;
  String? get timezone => _timezone;
  set timezone(String? timezone) => _timezone = timezone;
  num? get localOffset => _localOffset;
  set localOffset(num? localOffset) => _localOffset = localOffset;

  Location.fromJson(Map<String, dynamic> json) {
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _elevation = json['elevation'];
    _city = json['city'];
    _country = json['country'];
    _countryCode = json['country_code'];
    _timezone = json['timezone'];
    _localOffset = json['local_offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = _latitude;
    data['longitude'] = _longitude;
    data['elevation'] = _elevation;
    data['city'] = _city;
    data['country'] = _country;
    data['country_code'] = _countryCode;
    data['timezone'] = _timezone;
    data['local_offset'] = _localOffset;
    return data;
  }
}

class Settings {
  String? _timeformat;
  String? _school;
  String? _juristic;
  String? _highlat;
  num? _fajrAngle;
  num? _ishaAngle;

  Settings(
      {String? timeformat,
      String? school,
      String? juristic,
      String? highlat,
      num? fajrAngle,
      num? ishaAngle}) {
    if (timeformat != null) {
      _timeformat = timeformat;
    }
    if (school != null) {
      _school = school;
    }
    if (juristic != null) {
      _juristic = juristic;
    }
    if (highlat != null) {
      _highlat = highlat;
    }
    if (fajrAngle != null) {
      _fajrAngle = fajrAngle;
    }
    if (ishaAngle != null) {
      _ishaAngle = ishaAngle;
    }
  }

  String? get timeformat => _timeformat;
  set timeformat(String? timeformat) => _timeformat = timeformat;
  String? get school => _school;
  set school(String? school) => _school = school;
  String? get juristic => _juristic;
  set juristic(String? juristic) => _juristic = juristic;
  String? get highlat => _highlat;
  set highlat(String? highlat) => _highlat = highlat;
  num? get fajrAngle => _fajrAngle;
  set fajrAngle(num? fajrAngle) => _fajrAngle = fajrAngle;
  num? get ishaAngle => _ishaAngle;
  set ishaAngle(num? ishaAngle) => _ishaAngle = ishaAngle;

  Settings.fromJson(Map<String, dynamic> json) {
    _timeformat = json['timeformat'];
    _school = json['school'];
    _juristic = json['juristic'];
    _highlat = json['highlat'];
    _fajrAngle = json['fajr_angle'];
    _ishaAngle = json['isha_angle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timeformat'] = _timeformat;
    data['school'] = _school;
    data['juristic'] = _juristic;
    data['highlat'] = _highlat;
    data['fajr_angle'] = _fajrAngle;
    data['isha_angle'] = _ishaAngle;
    return data;
  }
}

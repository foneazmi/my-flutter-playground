import 'package:hello/data/models/models.dart';
import 'package:hello/data/repository/wallhaven_repository.dart';

import 'package:rxdart/rxdart.dart';

class UserBloc {
  final WallhavenRepository _repository = WallhavenRepository();
  final BehaviorSubject<Wallhaven> _subject = BehaviorSubject<Wallhaven>();

  getUser() async {
    Wallhaven? response = await _repository.getWallpaper();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Wallhaven> get subject => _subject;
}

final bloc = UserBloc();

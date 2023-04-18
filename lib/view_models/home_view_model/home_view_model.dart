import 'package:mobx/mobx.dart';
import 'package:mvvm_test/models/day_pic_model/day_pic_model.dart';
import 'package:mvvm_test/repositories/repos.dart';

part 'home_view_model.g.dart';

class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  @observable
  DayPic? dayPic;

  @action
  Future<dynamic> fetchDayPic() async {
    dayPic = await DayPicRepo().fetchData();
  }
}

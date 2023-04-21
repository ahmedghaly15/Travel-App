import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/views/detail_view/cubit/states.dart';

class DetailViewCubit extends Cubit<DetailViewStates> {
  DetailViewCubit() : super(DetailViewInitialState());

  static DetailViewCubit getObject(context) => BlocProvider.of(context);

  // int gottenStars = 0;
  int nPeopleSelected = -1;

  void changeNPeopleSelected(int index) {
    nPeopleSelected = index;
    emit(ChangeNPeopleSelected());
  }
}

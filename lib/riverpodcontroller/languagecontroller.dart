import 'package:areetest/utils/constantvalues.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageController extends  StateNotifier<List<LanguageModel>>  {
  LanguageController():super(languageList);

  static final provider = StateNotifierProvider<LanguageController, List<LanguageModel>>((ref) {
    return LanguageController();
  });
@override
  // TODO: implement state
//  List<LanguageModel> get state => languageList;
  void updateLanguage(int? index,LanguageModel data) {
    state = state.map((model) {

      return model.id == index ? LanguageModel(id: data.id, isSelected: true,title: data.title,subTitle: data.subTitle) : LanguageModel(id:model.id,isSelected: false,title: model.title,subTitle: model.subTitle);
    }).toList();


  }
}
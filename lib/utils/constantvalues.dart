List<LanguageModel> languageList=[
  LanguageModel(id:0,isSelected: true,title: "English",subTitle: "(English)"),
  LanguageModel(id:1,isSelected: false,title: "हिन्दी",subTitle: "(Hindi)"),
  LanguageModel(id:2,isSelected: false,title: "ગુજરાતી",subTitle: "(Gujrati)"),
  LanguageModel(id:3,isSelected: false,title: "বাংলা",subTitle: "(Bangla)"),
  LanguageModel(id:4,isSelected: false,title: "తెలుగు",subTitle: "(Telugu)"),
  LanguageModel(id:5,isSelected: false,title: "മലയാളം",subTitle: "(Malayalam)"),
  LanguageModel(id:6,isSelected: false,title: "मराठी",subTitle: "(Marathi)"),
  LanguageModel(id:7,isSelected: false,title: "தமிழ்",subTitle: "(Tamil)"),

];


class LanguageModel{
  int? id;
  bool? isSelected;

  String? title;
  String? subTitle;
  LanguageModel({int? id, bool? isSelected,String? title,String? subTitle}){
    this.isSelected=isSelected;
    this.title=title;
    this.subTitle=subTitle;
    this.id=id;

  }
}
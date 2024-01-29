enum SectionItemType{
  Video ,Document; 

  @override
  String toString() => name;
}


class SectionItem {
final String? title;
 final  SectionItemType? sectionItemType;
 final int? index;
 final int? minuts;
final bool? isCompleted;
  SectionItem(this.isCompleted, {required this.title, required this.sectionItemType, required this.index, required this.minuts});
}
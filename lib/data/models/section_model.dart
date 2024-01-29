import 'package:online_learnig_ui/data/models/section_item.dart';

class SectionModel {
  final List<SectionItem>? sectionItems;
  final String? sectionName;

  SectionModel({required this.sectionItems, required this.sectionName});


int getTotalMinuts(){
  int minutes=0; 
  for (var item in sectionItems!) {
    
      minutes+=item.minuts!;
    
  }

  return minutes;
}

int getCompletedCount(){
  int count=0; 
  for (var item in sectionItems!) {
    if (item.isCompleted!) {
      count+=1;
    }
  }

  return count;
}

bool isSectionCompleted(){
 var completed = false;

  for (var item in sectionItems!) {
    if (item.isCompleted!) {
      completed = true;
    }
  }
  return completed;
}





}
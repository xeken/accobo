class AccoboItem{

  String ganre;
  String name;
  String memo;
  int value;
  bool isPlus;
  DateTime dateTime;
  
  AccoboItem(String ganre, String name, String memo, int value, bool isPlus, DateTime dateTime){
    this.ganre = ganre;
    this.name = name;
    this.memo = memo;
    this.value = value;
    this.isPlus = isPlus;
    this.dateTime = dateTime;
  }
}
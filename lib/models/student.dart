class Student {

  int _id;
  String _name;
  String _descrption;
  int _pass;
  String _date;

  Student(this._name, this._descrption, this._pass, this._date);

  Student.withId(this._id, this._name, this._descrption, this._pass,
      this._date);

  String get date => _date;

  int get pass => _pass;

  String get description => _descrption;

  String get name => _name;

  int get id => _id;

  set date(String value) {
    _date = value;
  }

  set pass(int value) {
    if (value >= 1 && value <= 2) {
      _pass = value;
    }
  }

  set description(String value) {
    if (value.length <= 255) {
      _descrption = value;
    }
  }

  set name(String value) {
    if (value.length <= 255) {
      _name = value;
    }
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["id"] = this._id;
    map["name"] = this._name;
    map["description"] = this._descrption;
    map["pass"] = this._pass;
    map["date"] = this._date;
    return map;
  }

  Student.getMap(Map<String, dynamic> map){
    this._id = map["id"];
    this._name = map["name"];
    this._descrption = map["description"];
    this._pass = map["pass"];
    this._date = map["date"];
  }
}

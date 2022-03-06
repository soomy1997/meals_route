class User_model {
  int? Age;
  String? Name;
  String? Thecampaign;
  String? Thedisease;

  User_model.fromMap(Map<String, dynamic> data) {
    Age = data['Age'];
    Name = data['Name'];
    Thecampaign = data['Thecampaign'];
    Thedisease = data['Thedisease'];
  
  }

  Map<String, dynamic> toMap() {
    return {
      'Age': Age,
      'Name': Name,
      'Thecampaign': Thecampaign,
      'Thedisease': Thedisease,
      
    };
  }
}


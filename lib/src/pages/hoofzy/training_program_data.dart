class TrainingProgramData {
  TrainingProgramData({
    this.title = '',
    this.skill = '',
    this.time = ""
  });

  String title;
  String skill;
  String time;

  static List<TrainingProgramData> hotelList = <TrainingProgramData>[
    TrainingProgramData(
        title: 'Basic \nObedience',
        skill: '25 New Skills',
        time: '3 Weeks'
    ),
    TrainingProgramData(
        title: 'Basic \nObedience',
        skill: '27 New Skills',
        time: '4 Weeks'
    ),
    TrainingProgramData(
        title: 'Basic \nObedience',
        skill: '24 New Skills',
        time: '5 Weeks'
    ),
    TrainingProgramData(
        title: 'Basic \nObedience',
        skill: '21 New Skills',
        time: '2 Weeks'
    ),
    TrainingProgramData(
        title: 'Basic \nObedience',
        skill: '23 New Skills',
        time: '4 Weeks'
    ),
  ];
}

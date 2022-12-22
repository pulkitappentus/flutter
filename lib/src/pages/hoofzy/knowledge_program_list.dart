class KnowledgeProgramData {
  KnowledgeProgramData({
    this.image = '',
    this.title = ''
  });

  String image;
  String title;

  static List<KnowledgeProgramData> knowledgeList = <KnowledgeProgramData>[
    KnowledgeProgramData(
        image: 'assets/hoofzy/dog1.jpeg',
        title: 'Legal'
    ),
    KnowledgeProgramData(
        image: 'assets/hoofzy/dog2.jpg',
        title: 'Travel'
    ),
    KnowledgeProgramData(
        image: 'assets/hoofzy/dog3.jpg',
        title: 'Nutrition'
    ),
    KnowledgeProgramData(
        image: 'assets/hoofzy/dog4.jpg',
        title: 'Winter Care'
    ),
    KnowledgeProgramData(
        image: 'assets/hoofzy/dog3.jpg',
        title: 'Travel'
    ),
  ];
}

class KnowledgeDramaList {
  KnowledgeDramaList({
    this.image = '',
    this.title = '',
    this.time = ''
  });

  String image;
  String title;
  String time;

  static List<KnowledgeDramaList> knowledgeDramaList = <KnowledgeDramaList>[
    KnowledgeDramaList(
        image: 'assets/hoofzy/kn1.png',
        title: 'What walkies says \nabout relationship \nwith your dog?',
        time: '5 min ago'
    ),
    KnowledgeDramaList(
        image: 'assets/hoofzy/kn2.png',
        title: 'What walkies says \nabout relationship \nwith your dog?',
        time: '3 min ago'
    ),
    KnowledgeDramaList(
        image: 'assets/hoofzy/kn1.png',
        title: 'What walkies says \nabout relationship \nwith your dog?',
        time: '2 min ago'
    ),
    KnowledgeDramaList(
        image: 'assets/hoofzy/kn2.png',
        title: 'What walkies says \nabout relationship \nwith your dog?',
        time: '5 min ago'
    ),
    KnowledgeDramaList(
        image: 'assets/hoofzy/kn1.png',
        title: 'What walkies says \nabout relationship \nwith your dog?',
        time: '10 min ago'
    ),
  ];
}

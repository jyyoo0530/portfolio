enum Language {
  eng,
  kor,
}

extension LanguageExtension on Language {
  String get displayName {
    switch (this) {
      case Language.eng:
        return 'English';
      case Language.kor:
        return '한글';
      default:
        return 'Unknown';
    }
  }
}

enum LangComponent {
  title,
  appBarHeader,
  section1Button,
  section2Header,
  section2PageHeader,
  section2PageContent,
}

const Map<LangComponent, Map<Language, String>> langSet = {
  LangComponent.title: {
    Language.eng: "Jeremy0530's workspace",
    Language.kor: 'Jeremy0530의 작업공간',
  },
  LangComponent.appBarHeader: {
    Language.eng: "Jeremy0530's workspace",
    Language.kor: 'Jeremy0530의 작업공간',
  },
  LangComponent.section1Button: {
    Language.eng: "See More..",
    Language.kor: "더 보기..",
  },
  LangComponent.section2Header: {
    Language.eng: "Who I Am",
    Language.kor: "나에 대해서",
  },
  LangComponent.section2PageHeader: {
    Language.eng: "Innovative/Creative Software Project Leader",
    Language.kor: "혁신적/창의적인 프로젝트 리더",
  },
  LangComponent.section2PageContent: {
    Language.eng:
        "• Agile project scrum master\n• Agile project organization (project manager, software developer, UI/UX designer) manager\n• Software Micro Service Architecture and open-source proficiency\n• Software CI/CD management\n• Software Product Planning\n• Cloud Infrastructure build & operation\n• Software development managing with Project Management skills\n• Data-driven analysis and evaluation",
    Language.kor:
        "• Agile project scrum master\n• Agile project 조직(project manager, software developer, UI/UX designer) 관리\n• MSA 아키텍쳐 및 오픈소스 사용에 능함\n• 소프트웨어 지속 통합/배포(CI/CD) 관리\n• 소프트웨어 제품 기획\n• 클라우드 인프라 설계 및 운영\n• 소프트웨어 개발 관리\n• Data-driven 상황 해석 / 분석 / 해법 제시\n• 개발을 이해하고 이끌 수 있는 Project Manager/Product Owner",
  }
};

const Map<String, List<Map<String, dynamic>>> skills = {
  'Freight9': [
    {'word': 'Scala', 'value': 20},
    {'word': 'PlayFramework', 'value': 10},
    {'word': 'Java', 'value': 30},
    {'word': 'SpringBoot', 'value': 30},
    {'word': 'Agile Project Management', 'value': 80},
    {'word': 'RestfulAPI', 'value': 40},
    {'word': 'DataScience', 'value': 20},
    {'word': 'Jira', 'value': 50},
    {'word': 'AdobeXD', 'value': 20},
    {'word': 'Figma', 'value': 70},
    {'word': 'wireframe', 'value': 60},
    {'word': 'web dev', 'value': 30},
    {'word': 'scrum', 'value': 60},
    {'word': 'go-to-marketing', 'value': 30},
    {'word': 'Matlab', 'value': 10},
    {'word': 'Kubernetes', 'value': 10},
    {'word': 'Kafka', 'value': 10},
    {'word': 'Python', 'value': 10},
    {'word': 'Selenium', 'value': 30},
    {'word': 'Management', 'value': 80},
    {'word': 'Architect', 'value': 10},
    {'word': 'Spark', 'value': 30},
    {'word': 'AWS', 'value': 20},
  ],
  'Pandora': [
    {'word': 'Kubernetes', 'value': 80},
    {'word': 'Kafka', 'value': 80},
    {'word': 'Linux', 'value': 60},
    {'word': 'Docker', 'value': 60},
    {'word': 'Harbor', 'value': 30},
    {'word': 'Argo', 'value': 50},
    {'word': 'Helm', 'value': 50},
    {'word': 'GitLab', 'value': 40},
    {'word': 'Redis', 'value': 20},
  ],
  'Smols': [
    {'word': 'Agile Project Management', 'value': 80},
    {'word': 'AWS', 'value': 80},
    {'word': 'Dev Team Management', 'value': 60},
    {'word': 'TeamsApp', 'value': 50},
    {'word': 'Attention', 'value': 70},
    {'word': 'iOSDev', 'value': 70},
    {'word': 'AndroidDev', 'value': 70},
    {'word': 'Unity', 'value': 70},
    {'word': 'Jira', 'value': 70},
    {'word': 'Confluence', 'value': 70},
    {'word': 'Market Research', 'value': 50},
    {'word': 'Scrum', 'value': 70},
  ],
  'SmolsLab': [
    {'word': 'TensorFlowLite', 'value': 80},
    {'word': 'Kotlin', 'value': 80},
    {'word': 'AndroidDev', 'value': 80},
    {'word': 'ObjectDetection', 'value': 80},
    {'word': 'ObjectSegmentation', 'value': 80},
  ],
};

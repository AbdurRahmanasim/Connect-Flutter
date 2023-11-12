class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Community',
      image: 'assets/onboard1.svg',
      discription:
          "This App is using Flutter and makes use of background services to send notifications to the user"
          "Such app is useful that need to send timely updates to users"
          "such as social media apps and productivity apps."),
  UnbordingContent(
      title: 'Services',
      image: 'assets/onboard2.svg',
      discription:
          "The app uses background services to determine when to send a notification"
          " When the app is launched, it starts a background service that runs continuously in the background"
          "."),
  UnbordingContent(
      title: 'Developer',
      image: 'assets/onboard3.svg',
      discription: "This App is build by Abdur Rahman Asim. "
          "Who is Full Stack Web and App Developer. "
          ""),
];

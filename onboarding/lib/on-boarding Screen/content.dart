class OnboardingContent {
  String title;
  String text;
  String image;

  OnboardingContent(
      {required this.title, required this.text, required this.image});
}

List<OnboardingContent> pageViewContent = [
  OnboardingContent(
    title: "Discover Donor Based \n on Blood Type",
    text:
        "Effortlessly find donors matching \n your blood type and save lives today.",
    image: "assets/images/blood-donation-1.jpg",
  ),

  //
  OnboardingContent(
    title: "Real Time Donar \n Availability",
    text:
        "Instantly locate nearby blood \n donors and save lives in real time.",
    image: "assets/images/blood-donation-2.jpg",
  )
];

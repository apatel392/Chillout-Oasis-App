class MindfulnessExercise {
  final String title;
  final String imageAsset;
  final List<String> steps;
  final String videoUrl;
  final String iconAsset;

  MindfulnessExercise({
    required this.title,
    required this.imageAsset,
    required this.steps,
    required this.videoUrl,
    required this.iconAsset,
  });
}

List<MindfulnessExercise> mindfulnessExercises = [
  MindfulnessExercise(
    title: "Deep Breathing",
    imageAsset: "assets/deepbreath_gif.gif",
    steps: [
      "1. Find a quiet and comfortable place to sit or lie down.",
      "2. Close your eyes and take a deep breath in through your nose, counting to four.",
      "3. Hold your breath for a count of four.",
      "4. Exhale slowly through your mouth for a count of four.",
      "5. Repeat this process for a few minutes, focusing only on your breath.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=DbDoBzGY3vo",
    iconAsset: "assets/deep_breathing_icon.png", // Icon asset pat
  ),
  MindfulnessExercise(
    title: "Body Scan",
    imageAsset: "assets/bodyscan_gif.png",
    steps: [
      "1. Lie down on your back with your arms at your sides and your legs extended.",
      "2. Start at your toes and focus on how they feel. Are they tense or relaxed?",
      "3. Move your attention up through your body, slowly scanning each body part.",
      "4. Release tension and breathe deeply as you scan each part.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=i7xGF8F28zo",
    iconAsset: "assets/bodyscan.png", // Icon asset path
  ),
  MindfulnessExercise(
    title: "Mindful Walking",
    imageAsset: "assets/mindfulwalking_gif.gif",
    steps: [
      "1. Find a quiet place to walk, preferably in nature.",
      "2. Pay close attention to each step you take.",
      "3. Feel the ground beneath your feet, the air on your skin, and the sounds around you.",
      "4. Stay fully present in the experience of walking.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=ElHCp33OIOo",
    iconAsset: "assets/mindfulwalking.png", // Icon asset path
  ),
  MindfulnessExercise(
    title: "Meditation",
    imageAsset: "assets/meditation_gif.gif",
    steps: [
      "1. Find a quiet and comfortable place to sit or lie down.",
      "2. Close your eyes and focus on your breath.",
      "3. Observe your thoughts without judgment and gently bring your focus back to your breath.",
      "4. Continue for a set time, such as 10 minutes.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=O-6f5wQXSu8",
    iconAsset: "assets/meditation.png", // Icon asset path
  ),
  MindfulnessExercise(
    title: "Gratitude Journal",
    imageAsset: "assets/gratitude_journal_gif.gif",
    steps: [
      "1. Get a journal or notebook.",
      "2. Each day, write down three things you're grateful for.",
      "3. Reflect on the positive aspects of your life.",
      "4. Over time, your gratitude will grow.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=GZghu_xFRM8",
    iconAsset: "assets/gratitudejournal.png", // Icon asset path
  ),
  MindfulnessExercise(
    title: "Mindful Eating",
    imageAsset: "assets/mindfuleating_gif.gif",
    steps: [
      "1. Choose a meal and sit down to eat it.",
      "2. Eat slowly, savoring each bite.",
      "3. Pay attention to the taste, texture, and aroma of the food.",
      "4. Avoid distractions like screens or reading.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=u1jRaHrpokA",
    iconAsset: "assets/mindfuleating.png", // Icon asset path
  ),
  MindfulnessExercise(
    title: "Loving-Kindness Meditation",
    imageAsset: "assets/lovingkindnessmeditation_gif.gif",
    steps: [
      "1. Sit comfortably and close your eyes.",
      "2. Send out feelings of love and kindness to yourself and others.",
      "3. Repeat phrases like 'May I be happy, may you be happy' with sincerity.",
      "4. Feel the positive energy as you do this meditation.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=sDi40FQcaIU",
    iconAsset: "assets/lovingkindnessmeditation.png", // Icon asset path
  ),

];

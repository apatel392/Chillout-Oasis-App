class StressReductionExercise {
  final String title;
  final String imageAsset;
  final List<String> steps;
  final String videoUrl;
  final String iconAsset;

  StressReductionExercise({
    required this.title,
    required this.imageAsset,
    required this.steps,
    required this.videoUrl,
    required this.iconAsset,
  });
}

List<StressReductionExercise> stressReductionExercises = [
  StressReductionExercise(
    title: "Progressive Muscle Relaxation",
    imageAsset: "assets/progressive_muscle_relaxation_gif.gif",
    steps: [
      "1. Find a quiet and comfortable place to sit or lie down.",
      "2. Start at your feet and tense the muscles for 5-10 seconds.",
      "3. Release the tension and notice the difference as you relax.",
      "4. Work your way up through your body, focusing on each muscle group.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=ihO02wUzgkc",
    iconAsset: "assets/progressive_muscle_relaxation_icon.png",
  ),
  StressReductionExercise(
    title: "Guided Imagery",
    imageAsset: "assets/guided_imagery.webp",
    steps: [
      "1. Close your eyes and take deep breaths to relax.",
      "2. Imagine a peaceful place in your mind, like a beach or forest.",
      "3. Visualize every detail and use all your senses.",
      "4. Stay in this place as long as you like.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=t1rRo6cgM_E",
    iconAsset: "assets/guided_imagery_icon.png",
  ),
  StressReductionExercise(
    title: "Box Breathing",
    imageAsset: "assets/box_breathing_gif.gif",
    steps: [
      "1. Sit or lie down in a comfortable position.",
      "2. Inhale through your nose for a count of four.",
      "3. Hold your breath for a count of four.",
      "4. Exhale through your mouth for a count of four.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=tEmt1Znux58",
    iconAsset: "assets/box_breathing_icon.png",
  ),
  StressReductionExercise(
    title: "Yoga Nidra",
    imageAsset: "assets/yoga_nidra_gif.webp",
    steps: [
      "1. Lie down in a comfortable position.",
      "2. Follow a guided relaxation script to relax your body and mind.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=5ZRH-S9Aucs",
    iconAsset: "assets/yoga_nidra_icon.png",
  ),
  StressReductionExercise(
    title: "Autogenic Training",
    imageAsset: "assets/autogenic_training_icon.png",
    steps: [
      "1. Sit in a comfortable position and close your eyes.",
      "2. Repeat a series of self-statements to relax your body.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=99n0lXSfa0s",
    iconAsset: "assets/autogenic_training_icon.png",
  ),
  StressReductionExercise(
    title: "Breath Counting",
    imageAsset: "assets/breath_counting_gif.gif",
    steps: [
      "1. Sit in a quiet place and focus on your breath.",
      "2. Count each breath cycle, inhale and exhale, up to ten cycles.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=invL2KEt15Q",
    iconAsset: "assets/breath_counting_icon.png",
  ),
  StressReductionExercise(
    title: "Tai Chi",
    imageAsset: "assets/tai_chi_gif.gif",
    steps: [
      "1. Follow a Tai Chi routine that includes slow and flowing movements.",
      "2. Focus on your breath and body movements to calm your mind.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=cEOS2zoyQw4",
    iconAsset: "assets/tai_chi_icon.png",
  ),
  StressReductionExercise(
    title: "Music Therapy",
    imageAsset: "assets/music_therapy_gif.gif",
    steps: [
      "1. Choose soothing music and listen to it in a comfortable environment.",
      "2. Let the music relax your mind and reduce stress.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=eqIijgUmvX8",
    iconAsset: "assets/music_therapy_icon.png",
  ),
  StressReductionExercise(
    title: "Aromatherapy",
    imageAsset: "assets/aromatherapy_gif.gif",
    steps: [
      "1. Choose calming essential oils or scents.",
      "2. Inhale the scents to relax your mind and body.",
    ],
    videoUrl: "https://www.youtube.com/watch?v=jU4gkDxELuk",
    iconAsset: "assets/aromatherapy_icon.png",
  ),

];

/// Model class for a cute onboarding todos.
class CuteTodo {
  /// Creates an instance of [CuteTodo].
  const CuteTodo({
    required this.text,
    required this.date,
    required this.description,
  });

  /// The text of the todos.
  final String text;

  /// The date of the todos.
  final String date;

  /// The description of the todos.
  final String description;
}

/// Constants used in the onboarding welcome step.
const List<CuteTodo> cuteTodos = <CuteTodo>[
  CuteTodo(
    text: 'Get a unicorn plushie',
    date: '21 July 2023',
    description:
        'Buy a cute and cuddly unicorn plushie to add some magic to your life!',
  ),
  CuteTodo(
    text: 'Bake cookies with sprinkles',
    date: '22 July 2023',
    description:
        'Spend a delightful afternoon baking homemade cookies and decorating '
        'them with colorful sprinkles.',
  ),
  CuteTodo(
    text: 'Have a picnic in the park',
    date: '23 July 2023',
    description:
        'Gather your favorite snacks, a cozy blanket, and enjoy a relaxing '
        'picnic amidst nature\'s beauty.',
  ),
  CuteTodo(
    text: 'Plant a flower garden',
    date: '24 July 2023',
    description:
        'Create a vibrant and fragrant flower garden in your backyard to bring '
        'joy and color to your surroundings.',
  ),
  CuteTodo(
    text: 'Go stargazing on a clear night',
    date: '25 July 2023',
    description:
        'Find a peaceful spot, lay back, and gaze at the stars twinkling in the'
        ' night sky for a mesmerizing experience.',
  ),
  CuteTodo(
    text: 'Write a handwritten letter to a friend',
    date: '26 July 2023',
    description:
        'Take the time to write a heartfelt letter to a dear friend and let'
        ' them know how much they mean to you.',
  ),
  CuteTodo(
    text: 'Learn to play a musical instrument',
    date: '27 July 2023',
    description:
        'Embark on a musical journey by learning to play a musical instrument'
        ' and unlock your inner musician.',
  ),
  CuteTodo(
    text: 'Try a new ice cream flavor',
    date: '28 July 2023',
    description:
        'Step out of your comfort zone and indulge in a new and exciting ice'
        ' cream flavor that tickles your taste buds.',
  ),
  CuteTodo(
    text: 'Build a blanket fort',
    date: '29 July 2023',
    description:
        'Unleash your inner child and construct a cozy blanket fort where you'
        ' can relax, read, or watch movies.',
  ),
  CuteTodo(
    text: 'Go on a nature hike',
    date: '30 July 2023',
    description:
        'Explore the beauty of nature by going on a refreshing hike and'
        ' immersing yourself in the great outdoors.',
  ),
  CuteTodo(
    text: 'Read a book under a cozy blanket',
    date: '31 July 2023',
    description:
        'Snuggle up under a warm blanket and dive into a captivating book that'
        ' takes you on an unforgettable adventure.',
  ),
  CuteTodo(
    text: 'Make a homemade pizza',
    date: '1 August 2023',
    description:
        'Put your culinary skills to the test and create a delicious homemade'
        ' pizza topped with your favorite ingredients.',
  ),
  CuteTodo(
    text: 'Watch a funny cat video',
    date: '2 August 2023',
    description:
        'Brighten your day with a dose of laughter by watching adorable and'
        ' hilarious cat videos on the internet.',
  ),
  CuteTodo(
    text: 'Have a dance party in your room',
    date: '3 August 2023',
    description:
        'Turn up the music, let loose, and have an energetic dance party in the'
        ' comfort of your own room.',
  ),
  CuteTodo(
    text: 'Write a poem about your favorite season',
    date: '4 August 2023',
    description:
        'Capture the essence of your favorite season in a beautifully crafted'
        ' poem that expresses your love for nature.',
  ),
  CuteTodo(
    text: 'Paint a beautiful sunset',
    date: '5 August 2023',
    description: 'Unleash your creativity and paint a stunning depiction of a'
        ' mesmerizing sunset filled with vibrant colors.',
  ),
  CuteTodo(
    text: 'Visit a local museum',
    date: '6 August 2023',
    description:
        'Immerse yourself in art, culture, and history by visiting a local'
        ' museum and exploring its fascinating exhibits.',
  ),
  CuteTodo(
    text: 'Learn a new magic trick',
    date: '7 August 2023',
    description:
        'Amaze your friends and family by mastering a captivating magic trick'
        ' that leaves them in awe and wonder.',
  ),
  CuteTodo(
    text: 'Start a gratitude journal',
    date: '8 August 2023',
    description:
        'Cultivate a positive mindset by starting a gratitude journal and'
        ' regularly writing down things you are thankful for.',
  ),
  CuteTodo(
    text: 'Create a scrapbook of favorite memories',
    date: '9 August 2023',
    description:
        'Preserve cherished memories by creating a beautiful scrapbook filled'
        ' with photos, mementos, and heartfelt captions.',
  ),
  CuteTodo(
    text: 'Try a new hairstyle',
    date: '10 August 2023',
    description:
        'Experiment with your hair and try a new hairstyle that reflects your'
        ' unique personality and sense of style.',
  ),
  CuteTodo(
    text: 'Make a DIY friendship bracelet',
    date: '11 August 2023',
    description: 'Show your friends how much you care by crafting personalized'
        ' friendship bracelets that symbolize your bond.',
  ),
  CuteTodo(
    text: 'Write a story with talking animals',
    date: '12 August 2023',
    description:
        'Let your imagination run wild and write an enchanting story featuring'
        ' adorable and charismatic talking animals.',
  ),
  CuteTodo(
    text: 'Do a random act of kindness',
    date: '13 August 2023',
    description:
        'Brighten someone\'s day by performing a random act of kindness,'
        ' whether it\'s a kind gesture or a thoughtful deed.',
  ),
  CuteTodo(
    text: 'Explore a new hiking trail',
    date: '14 August 2023',
    description:
        'Embark on an adventure and discover the beauty of a new hiking trail'
        ' that takes you through breathtaking landscapes.',
  ),
  CuteTodo(
    text: 'Have a movie marathon with friends',
    date: '15 August 2023',
    description:
        'Gather your friends, prepare some popcorn, and enjoy a fun-filled'
        ' movie marathon featuring your favorite films.',
  ),
  CuteTodo(
    text: 'Take a bubble bath with candles',
    date: '16 August 2023',
    description:
        'Indulge in a relaxing bubble bath adorned with flickering candles,'
        ' creating a soothing and tranquil ambiance.',
  ),
  CuteTodo(
    text: 'Try a new recipe for breakfast',
    date: '17 August 2023',
    description:
        'Start your day with a burst of culinary creativity by trying out a'
        ' delicious new breakfast recipe.',
  ),
  CuteTodo(
    text: 'Build a sandcastle at the beach',
    date: '18 August 2023',
    description:
        'Channel your inner child and spend a day at the beach building'
        ' intricate and majestic sandcastles.',
  ),
  CuteTodo(
    text: 'Draw a cute cartoon character',
    date: '19 August 2023',
    description:
        'Unleash your artistic skills and draw an adorable cartoon character'
        ' that brings a smile to your face.',
  ),
  CuteTodo(
    text: 'Write a love letter to yourself',
    date: '20 August 2023',
    description:
        'Celebrate self-love and write a heartfelt love letter to yourself,'
        ' acknowledging your unique qualities and achievements.',
  ),
  CuteTodo(
    text: 'Learn a new dance routine',
    date: '21 August 2023',
    description:
        'Get your body moving and learn a dynamic dance routine that allows'
        ' you to express yourself through rhythm and movement.',
  ),
  CuteTodo(
    text: 'Go on a bike ride in the park',
    date: '22 August 2023',
    description:
        'Enjoy the fresh air and scenic views by going on a leisurely bike'
        ' ride through a picturesque park.',
  ),
  CuteTodo(
    text: 'Have a karaoke night with friends',
    date: '23 August 2023',
    description:
        'Unleash your inner superstar and have a fun-filled karaoke night with'
        ' friends, singing your favorite tunes.',
  ),
  CuteTodo(
    text: 'Create your own DIY face mask',
    date: '24 August 2023',
    description:
        'Pamper your skin and unleash your creativity by making a homemade'
        ' face mask using natural and nourishing ingredients.',
  ),
  CuteTodo(
    text: 'Try a new flavor of bubble tea',
    date: '25 August 2023',
    description:
        'Quench your thirst and indulge in the delightful and refreshing taste'
        ' of a new and exciting bubble tea flavor.',
  ),
  CuteTodo(
    text: 'Have a pajama day and binge-watch a TV series',
    date: '26 August 2023',
    description: 'Embrace relaxation by spending a cozy day in your pajamas,'
        ' binge-watching your favorite TV series.',
  ),
];

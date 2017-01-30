User.create({
  username: "boobs",
  email: "boobs@mail.com",
  password_hash: "password"
  })

Deck.create({
  title: "PG 13",
  user_id: 1
  })

Card.create({
  question: "Do you like boobies?",
  answer: "Yes. All of them.",
  deck_id: 1
  })

Round.create({
  deck_id: 1,
  user_id: 1
  })

Guess.create({
  user_answer: "no",
  correct: false,
  round_id: 1,
  card_id: 1
  })

Deck.create({
  title: "SEX",
  user_id: 1
  })

Card.create({
  question: "How effective is the pull out method (withdrawal)?",
  answer: "96%",
  deck_id: 2
  })

Card.create({
  question: "How effective is the fertility awareness method (FAM)?",
  answer: "76%",
  deck_id: 2
  })

Card.create({
  question: "Is chlamydia contractable from oral sex?",
  answer: "Yes",
  deck_id: 2
  })

Deck.create({
  title: "The Human Body",
  user_id: 1
  })

Card.create({
  question: "True or False: You can only taste your food when it is mixed with saliva.",
  answer: "true",
  deck_id: 3
  })

Card.create({
  question: "What is the largest organ of the human body?",
  answer: "skin",
  deck_id: 3
  })

Deck.create({
  title: "Animals",
  user_id: 1
  })

Card.create({
  question: "Do jellyfish have a brain?",
  answer: "no",
  deck_id: 4
  })

Card.create({
  question: "How many eyelids to camls have?",
  answer: 3,
  deck_id: 4
  })

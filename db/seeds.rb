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
  answer: "96%"
  deck_id: 2
  })

Card.create({
  question: "How effective is the fertility awareness method (FAM)?",
  answer: "76%"
  deck_id: 2
  })

Card.create({
  question: "Is chlamydia contractable from oral sex?",
  answer: "Yes"
  deck_id: 2
  })

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

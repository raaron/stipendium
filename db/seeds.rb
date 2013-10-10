def random_text(length)
  ((('a'..'z').to_a << '.' << '?' << '!' << ' ' << ' ' << ' '<< ' ' << ' ' << ' ') * (length / 35 + 1)).shuffle[0, 5 + rand(length - 5)].join + '.'
end

2500.times do |n|
  Item.create(title:       random_text(20),
              description: random_text(2800),
              text:        random_text(2800),
              income:      [1000, 2000, 3000].shuffle[0],
              int_1:       rand(20000),
              int_2:       rand(20000),
              int_3:       rand(20000),
              int_4:       rand(20000),
              int_5:       rand(20000),
              int_6:       rand(20000),
              int_7:       rand(20000),
              int_8:       rand(20000),
              str_1:       random_text(20),
              str_2:       random_text(20),
              str_3:       random_text(20),
              str_4:       random_text(20),
              str_5:       random_text(20),
              str_6:       random_text(20),
              str_7:       random_text(20),
              str_8:       random_text(20))
end

User.create(email: 'a@b.c', password: 'asdfasdf', password_confirmation: 'asdfasdf')

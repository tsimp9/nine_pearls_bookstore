# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = [
    {name: "Angie Thomas"},
    {name: "James Baldwin"},
    {name: "Tomi Adeyemi"},
  ]

  # must create these users as authors in console for them to work in console/testing.
  #Authors first because author can exist without a book

  authors.each do |author|
    Author.create!(name: author[:name])
  end

books = [
    { title: "The Hate U Give",
      description: "Sixteen-year-old Starr Carter moves between two worlds: the poor neighborhood where she lives and the fancy suburban prep school she attends. The uneasy balance between these worlds is shattered when Starr witnesses the fatal shooting of her childhood best friend Khalil at the hands of a police officer. Khalil was unarmed.

Soon afterward, his death is a national headline. Some are calling him a thug, maybe even a drug dealer and a gangbanger. Protesters are taking to the streets in Khalil’s name. Some cops and the local drug lord try to intimidate Starr and her family. What everyone wants to know is: what really went down that night? And the only person alive who can answer that is Starr.

But what Starr does—or does not—say could upend her community. It could also endanger her life.",
      price: 11.46
    },
    { title: "If Beale Street Could Talk",
      description: "Told through the eyes of Tish, a nineteen-year-old girl, in love with Fonny, a young sculptor who is the father of her child, Baldwin’s story mixes the sweet and the sad. Tish and Fonny have pledged to get married, but Fonny is falsely accused of a terrible crime and imprisoned. Their families set out to clear his name, and as they face an uncertain future, the young lovers experience a kaleidoscope of emotions–affection, despair, and hope. In a love story that evokes the blues, where passion and sadness are inevitably intertwined, Baldwin has created two characters so alive and profoundly realized that they are unforgettably ingrained in the American psyche.",
      price: 10.37
    },
    { title: "Children of Blood and Bone",
      description: "Zélie Adebola remembers when the soil of Orïsha hummed with magic. Burners ignited flames, Tiders beckoned waves, and Zélie’s Reaper mother summoned forth souls.

But everything changed the night magic disappeared. Under the orders of a ruthless king, maji were killed, leaving Zélie without a mother and her people without hope.

Now Zélie has one chance to bring back magic and strike against the monarchy. With the help of a rogue princess, Zélie must outwit and outrun the crown prince, who is hell-bent on eradicating magic for good.",
      price: 14.24
    }
  ]

  books.each do |book_attrs|
    book = Book.new(book_attrs)
    book.author = Author.all.sample
    book.book_cover.attach(io: File.open(Rails.root.join('app/assets/images/the_hate_u_give.jpg')), filename:"the_hate_u_give.jpg")
    book.save!
  end

100.times do
    author = Author.create(name: Faker::Name.name)
    book = Book.create(
      title: Faker::Book.title, 
      description: Faker::Lorem.paragraph,
      price: Faker::Number.decimal(3, 2),
      author: author
      )
    book.book_cover.attach(io: File.open(Rails.root.join('app/assets/images/the_hate_u_give.jpg')), filename:"the_hate_u_give.jpg")
    book.save!
  end




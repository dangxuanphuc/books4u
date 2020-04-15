User.create! name: "Dang Xuan Phuc",
  email: "dangxuanphuc1801@gmail.com",
  role: 1, avatar: "avatar.png",
  password: "admin123",
  password_confirmation: "admin123",
  confirmed_at: Time.zone.now

20.times do |n|
  User.create! name: "user-#{n}", email: "user#{n}@gmail.com",
    role: 0, avatar: "avatar.png",
    password: "A@1234567",
    password_confirmation: "A@1234567",
    confirmed_at: Time.zone.now
end
puts "Created #{User.count} users!"

Publisher.create!([
  {name: "AlphaBook", description: "Vietnam's publisher"},
  {name: "Nha Nam", description: "Vietnam's publisher"},
])
puts "Created #{Publisher.count} publishers!"

Author.create!([
  {name:  "Cody Lindley"},
  {name: "和田 祐一郎"},
])
puts "Created #{Author.count} authors!"

Language.create!([
  {alias: "vi", full_name: "Vietnamese"},
  {alias: "en", full_name: "English"},
  {alias: "jp", full_name: "Japanese"}
])
puts "Created #{Language.count} languages!"

Series.create!([
  {title: "IT", description: "HeadFirst"}
])
puts "Created #{Series.count} series!"

Category.create!([
  {title: "Ruby on rails", description: "We want to teach you the single most valuable skill you can learn in the 21st century. Read the Learn Enough Story to find out more."},
  {title: "Java", description: "Thinking in Java is a complete guide to the Java programming language. The book is very well organized, has plenty of examples and exercises for the reader to practice in each and every chapter. The most important feature about this book is that it covers Java SE5 and as the author states the code is also tested against a release candidate of Java SE6. Fairly new topics like Generics, Concurrency and Annotations are covered so well that it gives the reader fundamental to deep knowledge of each concept."},
  {title: "Mobile", description: "The Mobile Book features the most important things that you need to know as a designer, developer or mobile strategist for your websites."},
  {title: "Android", parent_id: 3 , description: "See what's new with Android - from phones to watches and more. Visit the official site to explore and learn."},
  {title: "iOS", parent_id: 3 , description: "If there is one piece of technology that is ubiquitous in the blind community today, it would have to be the iPhone. Ever since the release of the iPhone 3GS, people with little or no vision have been moving their fingers across a smooth piece of glass and doing things they never thought possible. Whether it's setting calendar appointments, looking at restaurant menus, or reading movie reviews, the iPhone has been a big part of it all."},
  {title: "Windown Phone", parent_id: 3 , description: "Informationvine.com connects you to the best results from across the web. Search & Find Now · Find Relevant Information · Learn More · Quick & Easy Answers"},
  {title: "Web", description: "We develop cross-platform Web app for reading ebooks, and also publish high- quality ebooks, especially textbooks."},
  {title: "PHP", parent_id: 7 , description: "PHP Book includes 250+ functions, 2 indexes, MySQL, and Regular Expressions. Also available: free PDF of the PHP reference book."},
  {title: "Python", parent_id: 7 , description: "Learn python and how to use it to analyze, visualize and present data! On-Demand Courses · 30-Day Guarantee · Lifetime Accessaffordable prices & classes on virtually every topic."},
  {title: "AI", description: "Are you searching for some best books to get acquainted with the basics of AI? Here is a list of 20 free books on Artificial Intelligence."},
  {title: "Design", description: "We asked some of the world's top design schools to share their favorite books. Here's what they ... A history book and design philosophy book in one."},
  {title: "UI", parent_id: 11 , description: "While not a short read, this book is a solid resource for UX and interaction designers at all experience levels and I definitely think it's worth."},
  {title: "UX", parent_id: 11 , description: "Free UX Consultation · SF Bay Area Based · 13 Yrs and 400+ Projects · Award Winning UX Agency Types: UX Strategy, UI Design, Frontend Developement"},
  {title: "Agile", description: "Discover the best Agile Project Management in Best Sellers. Find the top 100 most popular items in Amazon Books Best Sellers."},
])
puts "Created #{Category.count} categories!"

Book.create!([
  {title: "開眼! JavaScript ―言語仕様から学ぶJavaScriptの本質",
    publisher_id: 1, language_id: 1, isbn: "487311621X", series_id: 1},
  {title: "APIデザインケーススタディ ~Rubyの実例から学ぶ。問題に即したデザインと普遍の考え方 (WEB+DB PRESS plus)",
    publisher_id: 1, language_id: 1, isbn: "4774178020", series_id: 1},
  {title: "情報処理教科書 ネットワークスペシャリスト",
    publisher_id: 1, language_id: 1, isbn: "4798145777", series_id: 1},
  {title: "ラズパイマガジン 2016年6月号 日経BPパソコンベストムック",
    publisher_id: 1, language_id: 1, isbn: "B01EH2RX42", series_id: 1},
  {title: "手戻りなしの要件定義 実践マニュアル",
    publisher_id: 1, language_id: 1, isbn: "978-4-8222-7728-4", series_id: 1},
  {title: "達人に学ぶDB設計 徹底指南書 初級者で終わりたくないあなたへ",
    publisher_id: 1, language_id: 1, isbn: "4798124702", series_id: 1},
  {title: "手戻りなしの要件定義 実践マニュアル",
    publisher_id: 1, language_id: 1, isbn: "978-4-8222-7728-4", series_id: 1},
  {title: "SOFT SKILLS ソフトウェア開発者の人生マニュアル",
    publisher_id: 1, language_id: 1, isbn: "978-4822251550", series_id: 1},
  {title: "OpenCV3プログラミングブック",
    publisher_id: 1, language_id: 1, isbn: "978-4-8399-5296-9", series_id: 1},
  {title: "メタプログラミングRuby 第2版 大型本",
    publisher_id: 1, language_id: 1, isbn: "978-4-87311-743-0", series_id: 1},
  {title: "入門 コンピュータ科学 ITを支える技術と理論の基礎知識",
    publisher_id: 1, language_id: 1, isbn: "978-4-04-886957-7", series_id: 1},
  {title: "さらに進化した画像処理ライブラリの定番 OpenCV 3基本プログラミング",
    publisher_id: 1, language_id: 1, isbn: "978-4877833985", series_id: 1},
  {title: "Python機械学習プログラミング 達人データサイエンティストによる理論と実践 (impress top gear)",
    publisher_id: 1, language_id: 1, isbn: "978-4844380603", series_id: 1},
  {title: "Web API: The Good Parts",
    publisher_id: 1, language_id: 1, isbn: "4873116864", series_id: 1},
  {title: "情熱プログラマー ソフトウェア開発者の幸せな生き方",
    publisher_id: 1, language_id: 1, isbn: "4274067939", series_id: 1}
])
puts "Created #{Book.count} books!"

Image.create!([
  {target_id: 1, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/default-book.png")},
  {target_id: 2, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/default-book.png")},
  {target_id: 3, target_type: "Book",
    url: File.open(Rails.root + "public/uploads/image/default-book.png")}
])
puts "Created #{Image.count} images!"

AuthorBook.create!([
  {author_id: 1, book_id: 1},
  {author_id: 1, book_id: 2},
  {author_id: 2, book_id: 3},
  {author_id: 1, book_id: 2},
  {author_id: 2, book_id: 1}
])

Tag.create!([
  {title: "rails"},
  {title: "ruby"},
  {title: "python"},
  {title: "ui"},
  {title: "ux"}
])
puts "Created #{Tag.count} tags!"

BookTag.create!([
  {book_id: 1, tag_id: 1},
  {book_id: 1, tag_id: 2},
  {book_id: 2, tag_id: 2},
  {book_id: 2, tag_id: 3},
  {book_id: 3, tag_id: 1},
  {book_id: 3, tag_id: 4}
])

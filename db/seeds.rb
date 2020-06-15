User.create! name: "Dang Xuan Phuc",
  email: "admin@books4u.com",
  role: "admin",
  staff_code: "20201200",
  remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1591198889/Books4U/mitsuha.jpg",
  password: "admin123",
  password_confirmation: "admin123",
  confirmed_at: Time.zone.now

20.times do |n|
  name = Faker::Name.name
  staff_code = n < 9 ? "2020120#{n+1}" : "202012#{n+1}"
  User.create! name: name,
    email: "user#{n}@gmail.com",
    role: "user",
    staff_code: staff_code,
    password: "A@1234567",
    password_confirmation: "A@1234567",
    confirmed_at: Time.zone.now
end
puts "Created #{User.count} users!"

Publisher.create!([
  {name: "Addison-Wesley Professional",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Duis gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus.
    Aenean sit amet placerat nisi. Quisque at turpis venenatis, imperdiet est id,
    dignissim ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "Pragmatic Bookshelf", description: "Lorem ipsum dolor sit amet,
    consectetur adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis.
    Nullam et ornare purus. Aenean sit amet placerat nisi. Quisque at turpis
    venenatis, imperdiet est id, dignissim ligula. Morbi non neque lacinia,
    tincidunt enim id, venenatis mauris. Pellentesque vitae libero aliquam, f
    aucibus libero vitae, auctor tellus."},
  {name: "Prentice Hall", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Microsoft Press", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Steve McConnell", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Dorset House", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Sams Publishing", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Wrox", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "No Starch Press", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "O'Reilly Media", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Currency", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Harvard Business Review Press", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Project Management Institute", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "オライリージャパン", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "日経BP社", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "マイナビ", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "TAC出版", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "ソシム", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "工学社", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Packt Publishing", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Cambridge University Press", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "The MIT Press", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Pearson", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "McGraw-Hill Education", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Basic Books", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Genever Benning", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Wiley", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Springer-Verlag", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Science Engineering & Math", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "MITP Verlags GmbH & Co. KG", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "Now Publishers Inc", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."},
  {name: "KIT Scientific Publishing", description: "Lorem ipsum dolor sit amet, consectetur
    adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis. Nullam et
    ornare purus. Aenean sit amet placerat nisi. Quisque at turpis venenatis,
    imperdiet est id, dignissim ligula. Morbi non neque lacinia, tincidunt
    enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus
    libero vitae, auctor tellus."}
])
puts "Created #{Publisher.count} publishers!"

Author.create!([
  {name: "Andy Hunt",
    description: "Andy Hunt is a writer of books on software development and chill
    scifi. Hunt co-authored the seminal text 'The Pragmatic Programmer the popular
    'Pragmatic Thinking & Learning, award-winning 'Practices of an Agile Developer,
    a half-dozen other books and many articles. Andy was one of the 17 original
    authors of the Agile Manifesto. He and co-author Dave Thomas founded the
    Pragmatic Bookshelf publishing house, specializing in books for for software
    developers, testers, and managers.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-7.jpg"},
  {name: "Jeff Sutherland",
    description: "Jeff Sutherland: Jeff is the co-creator of Scrum and a leading
    expert on how this way of working has evolved to meet the needs of today's
    business. The framework he developed in 1993 and formalized in 1995 with
    Ken Schwaber has since been adopted by the vast majority of software
    development companies around the world.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-12.jpg"},
  {name: "Robert C. Martin",
    description: "Robert C. Martin has been a programmer since 1970. He is founder of
    Uncle Bob Consulting, LLC, and cofounder with his son Micah Martin of The Clean
    Coders LLC. Martin has published dozens of articles in various trade journals and
    is a regular speaker at international conferences and trade shows. He has
    authored and edited many books.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1591067415/Books4U/image/au-2.1.png"},
  {name: "Steve McConnell",
    description: "Steve McConnell is an award-winning, best selling CEO and author.
    His newest book is 'More Effective Agile: A Roadmap for Software Leaders. His
    first book, 'Code Complete, has been recognized as the best-selling, best-reviewed
    software development book of all time. His books have been translated into 20
    languages and sold more than one million copies worldwide.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-3.jpg"},
  {name: "Herbert Schildt",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-28.jpeg"},
  {name: "Prateek Joshi",
    description: "Prateek Joshi is a published author of 8 books (including a
    #1 best seller), an Artificial Intelligence researcher, and a TEDx speaker.
    He has been featured on Forbes 30 Under 30, CNBC, TechCrunch, Silicon Valley
    Business Journal, and many more publications. He is the founder of Pluto AI,
    a venture-funded Silicon Valley startup building an intelligence platform for
    water facilities. His work in this field has led to patents, demos, and research
    papers at major IEEE conferences. He has been an invited speaker at technology
    and entrepreneurship conferences including TEDx, Global Big Data Conference,
    Machine Learning Developers Conference, and Sensors Expo.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-17.jpg"},
  {name: "Harvard Business Review",
    description: "Harvard Business Review is the leading destination for smart
    management thinking. Through its flagship magazine, 12 international
    licensed editions, books from Harvard Business Review Press, and digital
    content and tools published on HBR.org, Harvard Business Review provides
    professionals around the world with rigorous insights and best practices
    to lead themselves and their organizations more effectively and to make
    a positive impact.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-14.jpg"},
  {name: "Marc Peter Deisenroth",
    description: "Marc Peter Deisenroth is DeepMind Chair in Artificial Intelligence
    at the Department of Computer Science, University College London. Prior to this,
    he was a faculty member in the Department of Computing, Imperial College London.
    His research areas include data-efficient learning, probabilistic modeling, and
    autonomous decision making.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-29.jpg"},
  {name: "Robert Nystrom",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-66.jpg"},
  {name: "Tom DeMarco",
    description: "Tom DeMarco is the author of fifteen books, including novels, business
    books and a collection of short stories. He began his career as a software engineer
    at Bell Telephone Laboratories, working on what was then the world's largest computer.
    His focus began early to turn toward writing, with stops along the way in software
    methods, organizational design, litigation consulting, and even a stint teaching
    undergraduate Ethics at the University of Maine.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-4.1.jpg"},
  {name: "William Shotts",
    description: "William Shotts has been a software professional for more than 30
    years and an avid Linux user for more than 20 years. He has an extensive background
    in software development, including technical support, quality assurance, and
    documentation. He is also the creator of LinuxCommand.org, a Linux education
    and advocacy site featuring news, reviews, and extensive support for using the
    Linux command line.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-6.jpg"},
  {name: "Jonathan Corbet",
    description: "Jonathan Corbet got his first look at the BSD Unix source back
    in 1981, when an instructor at the University of Colorado let him fix the paging
    algorithm. He has been digging around inside every system he could get his hands
    on ever since, working on drivers for VAX, Sun, Ardent, and x86 systems on the way.
    He got his first Linux system in 1993, and has never looked back. Mr. Corbet is
    currently the co-founder and executive editor of Linux Weekly News, he lives in
    Boulder, Colorado with his wife and two children.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-8.jpeg"},
  {name: "Alessandro Rubini",
    description: "Alessandro installed Linux 0.99.14 soon after getting his degree as
    electronic engineer. He then received a Ph.D. in computer science at the University
    of Pavia despite his aversion toward modern technology. He left the University after
    getting his Ph.D. because he didn't want to write articles. He now works as a free
    lancer writing device drivers and, um...articles. He used to be a young hacker before
    his babies were born; he's now an old advocate of Free Software who developed a bias
    for non-PC computer platforms.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-9.jpg"},
  {name: "David M. Geary",
    description: "David M. Geary: A long-time best-selling author with the utmost
    respect for his readers' time, David's books all have a single purpose: To help
    you master a technology as quickly and efficiently as possible. He writes books
    like he writes software by constantly iterating over material and refining
    examples until they reveal the essence of a particular technique. David also
    iterates obsessively over his writing until discussions are succinct and
    crystal clear.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-10.jpg"},
  {name: "Sam Ruby",
    description: "Sam Ruby is president of the Apache Software Foundation, previously
    co-chaired the W3C HTML Working Group, and has made significant contributions to
    many open source projects and standards."},
  {name: "David Bryant Copeland",
    description: "David Bryant Copeland has been a professional programmer since 1995.
    He's the author of Build Awesome Command-Line Applications in Ruby 2 and Rails,
    Angular, Postgres, and Bootstrap. He has worked at LivingSocial and Opower,
    and is the Chief Software Architect at Stitch Fix.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-11.jpg"},
  {name: "Venkat Subramaniam",
    description: "Venkat Subramaniam, founder of Agile Developer, Inc., has trained
    and mentored thousands of software developers in the US, Canada, Europe, and Asia.
    Venkat helps his clients effectively apply and succeed with agile practices on
    their software projects. He is a frequent invited speaker at international
    software conferences and user groups. He's author of .NET Gotchas (O'Reilly),
    coauthor of the 2007 Jolt Productivity award-winning book Practices of an Agile
    Developer (Pragmatic Bookshelf), and author of Programming Groovy (Pragmatic Bookshelf).",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-1.jpg"},
  {name: "JJ Sutherland",
    description: "JJ Sutherland is the CEO of Scrum Inc., a consulting and
    training firm that uses Scrum to rapidly deliver results in companies
    across the globe. He is the author of The Scrum Fieldbook: A Master Class
    on Accelerating Performance, Getting Results, and Defining the Future,
    and coauthor of Scrum: The Art of Doing Twice the Work in Half the Time,
    written with his father, Jeff Sutherland, the co-creator of Scrum.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-13.jpg"},
  {name: "Alex Samuel",
    description: "Alex Samuel graduated from Harvard in 1995 with a degree in physics.
    He worked as a software engineer at BBN before returning to study physics at Caltech
    and the Stanford Linear Accelerator Center. Alex administers the Software Carpentry
    project and works on various other projects, such as optimizations in GCC."},
  {name: "Adrian Kaehler",
    description: "Adrian Kaehler is a senior scientist at Applied Minds
    Corporation. His current research includes topics in machine learning,
    statistical modeling, computer vision and robotics. Adrian received his
    Ph.D. in Theoretical Physics from Columbia university in 1998. Adrian has
    since held positions at Intel Corporation and the Stanford University AI Lab,
    and was a member of the winning Stanley race team in the DARPA Grand Challenge.
    He has a variety of published papers and patents in physics, electrical
    engineering, computer science, and robotics.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-15.jpeg"},
  {name: "Gary Rost Bradski",
    description: "Gary Rost Bradski is a consulting professor in the CS
    department at Stanford University AI Lab where he mentors robotics, machine
    learning and computer vision research. He is also Senior Scientist at Willow
    Garage http://www.willowgarage.com, a recently founded robotics research
    institute/incubator. He has a BS degree in EECS from U.C. Berkeley and a
    PhD from Boston University.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-16.jpg"},
  {name: "Mark Mitchell",
    description: "Mark Mitchell received a bachelor of arts degree in computer science
    from Harvard in 1994 and a master of science degree from Stanford in 1999. His
    research interests centered on computational complexity and computer security. Mark
    has participated substantially in the development of the GNU Compiler Collection,
    and he has a strong interest in developing quality software.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-5.jpg"},
  {name: "Simon J.D. Prince",
    description: "Dr Simon J.D. Prince is a faculty member in the Department of
    Computer Science at University College London. He has taught courses on machine
    vision, image processing, and advanced mathematical methods. He has a diverse
    background in biological and computing sciences and has published papers across
    the fields of computer vision, biometrics, psychology, physiology, medical
    imaging, computer graphics, and HCI.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-18.jpg"},
  {name: "Mark Lutz",
    description: "Mark Lutz is the world leader in Python training, the author of
    Python's earliest and best-selling texts, and a pioneering figure in the Python
    community since 1992."},
  {name: "Wes McKinney",
    description: "Wes McKinney: Since 2007, I have been creating fast, easy-to-use
    data wrangling and statistical computing tools, mostly in the Python programming
    language. I am best known for creating the pandas project and writing the book
    Python for Data Analysis. I am also a contributor to the Apache Arrow, Kudu,
    and Parquet projects within the Apache Software Foundation. I was the co-founder
    and CEO of DataPad. I later spent a couple years leading efforts to bring Python
    and Hadoop together at Cloudera. I'm now working for Two Sigma in New York.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-19.jpg"},
  {name: "John Kelleher",
    description: "John Kelleher is the Academic Leader of the Information, Communication
    and Entertainment research institute at the Technological University Dublin.
    His areas of expertise include artificial intelligence, data analytics and
    machine learning, natural language processing, spatial cognition, and text
    analytics. John has worked in a number of different academic and research
    focused institutes, including Dublin City University, Media Lab Europe, and
    DFKI (the German Centre for Artificial Intelligence Research).",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-20.jpg"},
  {name: "Nayan B. Ruparelia",
    description: "Nayan B. Ruparelia is an entrepreneur in London. He has more
    than thirty years of experience in technology, and from 2007 to 2015 he was
    Chief Technologist at Hewlett Packard UK."},
  {name: "Brendan Tierney",
    description: "Brendan Tierney, Oracle ACE Director, is an independent
    consultant and lectures on Data Mining and Advanced Databases in the Dublin
    Institute of Technology in Ireland. He has 23+ years of extensive experience
    working in the areas of Data Mining, Data Warehousing, Data Architecture and
    Database Design. Brendan has worked on projects in Ireland, UK, across Europe,
    Canada and USA. Brendan is the editor of the UKOUG Oracle Scene magazine and
    deputy chair of the OUG Ireland BI SIG. Brendan is a regular speaker at
    conferences across Europe and the USA and has written technical articles
    for OTN, Oracle Scene, IOUG SELECT Journal and ODTUG Technical Journal."},
  {name: "Jed Brody",
    description: "Jed Brody teaches physics at Emory University. He was a
    Peace Corps volunteer in Benin, West Africa, where he taught high school
    physics and chemistry in French. Physics Today published his essay. He
    contributed to an anthology of Science Fiction by Scientists, and he wrote
    two science fiction novels, The Philodendrist Heresy and The Entropy Heresy.
    He was once pecked in the eye by a bird while doing yoga outside.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-21.jpg"},
  {name: "Ethem Alpaydin",
    description: "Ethem Alpaydin is Professor in the Department of Computer
    Engineering, Özyeğin University, Istanbul Turkey and is a member of the
    Science Academy, Istanbul. He received his PhD from the Ecole Polytechnique
    Fédérale de Lausanne, Switzerland in 1990 and was a postdoc at the International
    Computer Science Institute, Berkeley in 1991. He was a Fulbright scholar in 1997.
    He was a visiting researcher at MIT, USA in 1994, IDIAP, Switzerland in 1998 and
    TU Delft, The Netherlands in 2014.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-22.jpg"},
  {name: "Jonathan Haber",
    description: "Jonathan Haber is an educational researcher, writer and
    recovering entrepreneur working in the field of technology-enabled learning
    and teacher education. His Degree of Freedom One Year BA project, which involved
    trying to learn the equivalent of a BA in just twelve months using only Massive
    Open Online Courses (MOOCs) and other forms of free learning, has been featured
    in The New York Times, The Boston Globe, The Chronicle of Higher Education,
    The Wall Street Journal and other major media sources. His writing on
    education-related topics has also appeared in Slate, EdSurge and other
    publications.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-23.jpg"},
  {name: "Peter J. Denning",
    description: "Peter J. Denning is Distinguished Professor of Computer Science
    at the Naval Postgraduate School, Monterey, California. He is the coauthor of
    The Innovator's Way: Essential Practices for Successful Innovation and Great
    Principles of Computing, both published by the MIT Press."},
  {name: "Rick Stones",
    description: "Rick Stones started programming at school (more years ago than he
    cares to remember) on a 6502-powered BBC micro, which, with the help of a few
    spare parts, continued to function for the next 15 years. He graduated from
    Nottingham University with a degree in Electronic Engineering, but decided
    software was more fun."},
  {name: "A. Aldo Faisal",
    description: "A. Aldo Faisal leads the Brain and Behaviour Lab at Imperial
    College London, where he is faculty at the Departments of Bioengineering and
    Computing and a Fellow of the Data Science Institute. He is the director of the
    20Mio£ UKRI Center for Doctoral Training in AI for Healthcare. Faisal studied
    Computer Science and Physics at the Universität Bielefeld (Germany)."},
  {name: "Cheng Soon Ong",
    description: "Cheng Soon Ong is Principal Research Scientist at the Machine
    Learning Research Group, Data61, Commonwealth Scientific and Industrial
    Research Organisation, Canberra (CSIRO). He is also Adjunct Associate Professor
    at Australian National University. His research focuses on enabling scientific
    discovery by extending statistical machine learning methods."},
  {name: "Michael Hartl",
    description: "Michael Hartl is founder of the educational website
    LearnEnough.com and author of the Ruby on Rails Tutorial, the leading
    introduction to web development with Rails. His prior experience includes
    writing and developing RailsSpace, an extremely obsolete Rails tutorial book,
    and developing Insoshi, a once-popular and now-obsolete social networking
    platform in Ruby on Rails.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-24.jpg"},
  {name: "Russ Olsen",
    description: "Russ Olsen has been building software for more than twenty-five
    years. He has led projects through several generations of programming
    technologies, from FORTRAN to C to C++ to Java, and now Ruby. He has been
    using and teaching Ruby since 2002."},
  {name: "Jay Fields",
    description: "Jay Fields is a software developer for DRW Trading and a
    frequent conference presenter. Jay has a passion for discovering and
    maturing innovative solutions. Jay’s website is available at www.jayfields.com."},
  {name: "Shane Harvie",
    description: "Shane Harvie has delivered software in Agile environments
    in the United States, India, and Australia. He works for DRW Trading in
    Chicago and blogs at www.shaneharvie.com."},
  {name: "Martin Fowler",
    description: "Martin Fowler is Chief Scientist at ThoughtWorks and one of
    the world’s leading experts in the effective design of enterprise software.
    He has pioneered object-oriented development, patterns, agile methodologies,
    domain modeling, UML, and Extreme Programming."},
  {name: "Hal Fulton",
    description: "Hal Fulton first began using Ruby in 1999. In 2001, he started
    work on The Ruby Way, which was the second Ruby book published in English.
    Fulton was an attendee at the very first Ruby conference in 2001 and has
    presented at numerous other Ruby conferences on three continents, including
    the first European Ruby Conference in 2003. He holds two degrees in computer
    science from the University of Mississippi and taught computer science for four
    years. He has worked for more than 25 years with various forms of UNIX and Linux.
    He is now at Simpli.fi in Fort Worth, Texas, where he works primarily in Ruby."},
  {name: "André Arko",
    description: "André Arko first encountered Ruby as a student in 2004, and reading
    the first edition of this book helped him decide to pursue a career as a Ruby
    programmer. He is team lead of Bundler, the Ruby dependency manager, and has
    created or contributes to dozens of other open source projects. He works at
    Cloud City Development as a consultant providing team training and expertise
    on Ruby and Rails as well as developing web applications."},
  {name: "Obie Fernandez",
    description: "Obie Fernandez resides in Mexico City and runs a boutique tech consultancy. He makes his living as an author and by helping clients to build
    kickass web software. Early in his career, he worked on some of the world’s first
    Java enterprise projects and founded Atlanta’s Extreme Programming User Group
    (later Agile Atlanta). At ThoughtWorks and his own agency Hashrocket, he led
    high-risk projects for massive companies like Daimler, John Deere, and Sony
    Ericsson, delivering some of the world’s first successful enterprise Ruby
    on Rails systems.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-25.jpg"},
  {name: "Sandi Metz",
    description: "Sandi Metz has thirty years of experience working on projects
    that survived to grow and change. She now writes code every day as a software
    architect at Duke University, where her team solves real problems for
    customers who have large object-oriented applications that have been evolving
    for more than fifteen years. She has spoken at Ruby Nation and speaks
      regularly at the Gotham Ruby Users Conference.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-26.jpg"},
  {name: "Barrett Clark",
    description: "Barrett Clark is a Rubyist turned polyglot software developer.
    Now at Sabre Labs, an emerging travel technology incubator and research lab,
    Clark works to make meaningful change in the travel industry. He has worked
    extensively with mapping, geolocation, indoor location, and proximity. His
    recent speaking engagements include Mountain West Ruby Conference, API World,
    Lone Star Ruby Conference, RailsConf, and Abstractions.",
    remote_avatar_url: "https://res.cloudinary.com/phucdx/image/upload/v1587973368/Books4U/image/au-27.jpg"},
  {name: "Moheb Costandi",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "田中 哲(Tanaka Akira)",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "Paolo Perrotta",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "J. Glenn Brookshear",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "左門 至峰",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "平田 賀一",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "Jonathan Rasmusson",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "Bert Bates",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "Kathy Sierra",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "Frederick P. Brooks Jr.",
    description: "Frederick P. Brooks Jr., is Kenan Professor of Computer Science at
    the University of North Carolina at Chapel Hill. He was an architect of the IBM
    Stretch and Harvest computers. He was Corporate Project Manager for the System/360,
    including development of the System/360 computer family hardware and the decision
    to switch computer byte size from 6 to 8 bits. He then managed the initial
    development of the Operating System/360 software suite: operating system, 16
    compilers, communications, and utilities."},
  {name: "Don Norman",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {name: "Neil Matthew",
    description: "Neil Matthew has been interested in and has programmed computers since
    1974. A mathematics graduate from the University of Nottingham, Neil is just plain
    keen on programming languages and likes to explore new ways of solving computing
    problems. He’s written systems to program in BCPL, FP (Functional Programming),
    Lisp, Prolog, and a structured BASIC. He even wrote a 6502 microprocessor emulator
    to run BBC microcomputer programs on UNIX systems."},
  {name: "Addy Osmani",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis
    gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus. Aenean sit
    amet placerat nisi. Quisque at turpis venenatis, imperdiet est id, dignissim
    ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris.
    Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."}
])
puts "Created #{Author.count} authors!"

Language.create!([
  {alias: "vi", full_name: "Vietnamese"},
  {alias: "en", full_name: "English"},
  {alias: "jp", full_name: "Japanese"},
  {alias: "dt", full_name: "Dutch"}
])
puts "Created #{Language.count} languages!"

Series.create!([
  {title: "Robert C. Martin Series", description: "Lorem ipsum dolor sit amet,
    consectetur adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis.
    Nullam et ornare purus. Aenean sit amet placerat nisi. Quisque at turpis
    venenatis, imperdiet est id, dignissim ligula. Morbi non neque lacinia,
    tincidunt enim id, venenatis mauris. Pellentesque vitae libero aliquam,
    faucibus libero vitae, auctor tellus."},
  {title: "HBR Insights Series", description: "Lorem ipsum dolor sit amet,
    consectetur adipiscing elit. Duis gravida ipsum vitae libero feugiat mattis.
    Nullam et ornare purus. Aenean sit amet placerat nisi. Quisque at turpis
    venenatis, imperdiet est id, dignissim ligula. Morbi non neque lacinia,
    tincidunt enim id, venenatis mauris. Pellentesque vitae libero aliquam,
    faucibus libero vitae, auctor tellus."},
  {title: "MIT Press Essential Knowledge series", description: "Lorem ipsum dolor
    sit amet, consectetur adipiscing elit. Duis gravida ipsum vitae libero
    feugiat mattis. Nullam et ornare purus. Aenean sit amet placerat nisi.
    Quisque at turpis venenatis, imperdiet est id, dignissim ligula.
    Morbi non neque lacinia, tincidunt enim id, venenatis mauris. Pellentesque
    vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {title: "Addison-Wesley Professional Ruby Series",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Duis gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus.
    Aenean sit amet placerat nisi. Quisque at turpis venenatis, imperdiet est id,
    dignissim ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {title: "Head First",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Duis gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus.
    Aenean sit amet placerat nisi. Quisque at turpis venenatis, imperdiet est id,
    dignissim ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."},
  {title: "Beginner's Guide",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Duis gravida ipsum vitae libero feugiat mattis. Nullam et ornare purus.
    Aenean sit amet placerat nisi. Quisque at turpis venenatis, imperdiet est id,
    dignissim ligula. Morbi non neque lacinia, tincidunt enim id, venenatis mauris. Pellentesque vitae libero aliquam, faucibus libero vitae, auctor tellus."}
])
puts "Created #{Series.count} series!"

Category.create!([
  {title: "Java", description: "Thinking in Java is a complete guide to the Java
    programming language. The book is very well organized, has plenty of examples
    and exercises for the reader to practice in each and every chapter. The most
    important feature about this book is that it covers Java SE5 and as the author
    states the code is also tested against a release candidate of Java SE6. Fairly
    new topics like Generics, Concurrency and Annotations are covered so well that
    it gives the reader fundamental to deep knowledge of each concept.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/java.jpg"},
  {title: "Mobile", description: "The Mobile Book features the most important
    things that you need to know as a designer, developer or mobile strategist
    for your websites.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/mobile.jpg"},
  {title: "Android", parent_id: 2, description: "See what's new with Android
    - from phones to watches and more. Visit the official site to
    explore and learn.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/android.jpg"},
  {title: "iOS", parent_id: 2, description: "If there is one piece of
    technology that is ubiquitous in the blind community today, it would
    have to be the iPhone. Ever since the release of the iPhone 3GS, people
    with little or no vision have been moving their fingers across a smooth
    piece of glass and doing things they never thought possible. Whether
    it's setting calendar appointments, looking at restaurant menus, or reading
    movie reviews, the iPhone has been a big part of it all.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/ios.jpg"},
  {title: "Web", description: "We develop cross-platform Web app for reading
    ebooks, and also publish high- quality ebooks, especially textbooks.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/web.jpg"},
  {title: "PHP", parent_id: 6, description: "PHP Book includes 250+ functions,
    2 indexes, MySQL, and Regular Expressions. Also available: free PDF of the
    PHP reference book.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/php.jpg"},
  {title: "AI", description: "Are you searching for some best books to get
    acquainted with the basics of AI? Here is a list of 20 free books on
    Artificial Intelligence.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/ai.jpg"},
  {title: "Python", parent_id: 7, description: "Learn python and how to use it
    to analyze, visualize and present data! On-Demand Courses · 30-Day
    Guarantee · Lifetime Accessaffordable prices & classes on virtually
    every topic.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/python.jpg"},
  {title: "Design", description: "We asked some of the world's top design
    schools to share their favorite books. Here's what they ... A history
    book and design philosophy book in one.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/design.jpg"},
  {title: "UI", parent_id: 10, description: "While not a short read, this book
    is a solid resource for UX and interaction designers at all experience levels
    and I definitely think it's worth.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/ui.jpg"},
  {title: "UX", parent_id: 10, description: "Free UX Consultation · SF Bay
    Area Based · 13 Yrs and 400+ Projects · Award Winning UX Agency Types: UX
    Strategy, UI Design, Frontend Developement",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/ux.jpg"},
  {title: "Agile", description: "Discover the best Agile Project Management
    in Best Sellers. Find the top 100 most popular items in Amazon Books
    Best Sellers.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/agile.jpg"},
  {title: "Linux", description: "Lorem ipsum dolor sit amet, consectetur adipiscing
    elit. Sed condimentum pretium laoreet. Pellentesque tempus metus justo, nec
    ullamcorper risus suscipit mollis. Phasellus a magna mi.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/linux.jpg"},
  {title: "Other", description: "Lorem ipsum dolor sit amet, consectetur adipiscing
    elit. Sed condimentum pretium laoreet. Pellentesque tempus metus justo, nec
    ullamcorper risus suscipit mollis. Phasellus a magna mi."},
  {title: "Ruby on Rails", parent_id: 6, description: "Lorem ipsum dolor sit amet, consectetur adipiscing
    elit. Sed condimentum pretium laoreet. Pellentesque tempus metus justo, nec
    ullamcorper risus suscipit mollis. Phasellus a magna mi.",
    remote_image_url: "https://res.cloudinary.com/phucdx/image/upload/v1588644365/Books4U/categories/rails.jpg"},
])
puts "Created #{Category.count} categories!"

Book.create!([
  {title: "The Pragmatic Programmer: From Journeyman to Master",
    isbn: "020161622X", publisher_id: 1, rate: 4.5, rate_count: 8,
    language_id: 2, pages: 352,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "1999/10/20",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Practices of an Agile Developer: Working in the Real World",
    isbn: "097451408X", publisher_id: 2, rate: 4.5,
    rate_count: 10, language_id: 2, pages: 209,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/10/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Rediscovering JavaScript: Master ES6, ES7, and ES8",
    isbn: "1680505467", publisher_id: 2, rate: 4.5,
    rate_count: 8, language_id: 2, pages: 288,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2018/06/16",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Clean Coder: A Code of Conduct for Professional Programmers",
    isbn: "0137081073", publisher_id: 3, series_id: 1,
    language_id: 2, pages: 242,rate: 4.5, rate_count: 8,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/06/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Clean Code: A Handbook of Agile Software Craftsmanship",
    isbn: "0132350882", publisher_id: 3, series_id: 1,
    language_id: 2, pages: 464,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2008/08/01",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Clean Architecture: A Craftsman's Guide to Software Structure and Design",
    isbn: "0134494164", publisher_id: 3, series_id: 1,
    language_id: 2, pages: 431, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2017/09/12",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Clean Agile: Back to Basics",
    isbn: "0135781868", publisher_id: 3, rate: 4.5, rate_count: 8,
    series_id: 1, language_id: 2, pages: 240,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2019/09/12",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Clean Coder: A Code of Conduct for Professional Programmers",
    isbn: "0137081073", publisher_id: 3, series_id: 1,
    language_id: 2, pages: 244,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2011/05/13",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Robert C. Martin Clean Code Collection",
    isbn: "9780132350884", publisher_id: 3, series_id: 1,
    language_id: 2, pages: 860,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2011/11/10",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Agile Principles, Patterns, and Practices in C#",
    isbn: "0131857258", publisher_id: 3, series_id: 1,
    language_id: 2, pages: 771,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2006/06/20",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Agile Software Development, Principles, Patterns, and Practices",
    isbn: "0135974445", publisher_id: 23,
    language_id: 2, pages: 552, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/06/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Code Complete: A Practical Handbook of Software Construction, Second Edition",
    isbn: "0735619670", publisher_id: 4,
    language_id: 2, pages: 960,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/06/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "More Effective Agile: A Roadmap for Software Leaders",
    isbn: "1733518215", publisher_id: 5, rate: 4.5,
    rate_count: 8, language_id: 2, pages: 353,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2019/09/17",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Mythical Man-Month: Essays on Software Engineering, Anniversary Edition",
    isbn: "9780201835953", publisher_id: 1,
    language_id: 2, pages: 336, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/06/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Peopleware: Productive Projects and Teams",
    isbn: "0932633439", publisher_id: 6,
    language_id: 2, pages: 245, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/06/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Waltzing with Bears: Managing Risk on Software Projects",
    isbn: "0932633609", publisher_id: 6,
    language_id: 2, pages: 144,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/06/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Advanced Linux Programming",
    isbn: "0735710430", publisher_id: 7,
    language_id: 2, pages: 340,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/06/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Beginning Linux Programming",
    isbn: "0470147628", publisher_id: 8,
    language_id: 2, pages: 817, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2011/04/22",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Linux Command Line, 2nd Edition: A Complete Introduction",
    isbn: "1593279523", publisher_id: 9,
    language_id: 2, pages: 502, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2019/03/05",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Linux Device Drivers: Where the Kernel Meets the Hardware",
    isbn: "0596005903", publisher_id: 10,
    language_id: 2, pages: 638, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2009/02/09",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Core HTML5 Canvas: Graphics, Animation, and Game Development",
    isbn: "0132761610", publisher_id: 3,
    language_id: 2, pages: 752,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/05/14",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Agile Web Development with Rails 6",
    isbn: "1680506706", publisher_id: 2,
    language_id: 2, pages: 496, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/04/13",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Scrum: The Art of Doing Twice the Work in Half the Time",
    isbn: "1680506706", publisher_id: 11,
    language_id: 2, pages: 258, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2014/09/30",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Agile: The Insights You Need from Harvard Business Review",
    isbn: "1633698955", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 142, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/04/21",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Strategic Analytics: The Insights You Need from Harvard Business Review",
    isbn: "163369898X", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 174, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/04/21",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Artificial Intelligence: The Insights You Need from Harvard Business Review",
    isbn: "1633697894", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 182, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2019/08/27",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Blockchain: The Insights You Need from Harvard Business Review",
    isbn: "1633697916", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 176, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2019/08/27",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Coronavirus and Business: The Insights You Need from Harvard Business Review",
    isbn: "1647820464", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 88, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/04/14",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Coronavirus: Leadership and Recovery: The Insights You Need from Harvard Business Review",
    isbn: "1647820499", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 192,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/04/16",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Monopolies and Tech Giants: The Insights You Need from Harvard Business Review",
    isbn: "1633699013", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 192, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/04/21",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Cybersecurity: The Insights You Need from Harvard Business Review",
    isbn: "1633697878", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 166,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2019/08/27",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Climate Change: The Insights You Need from Harvard Business Review",
    isbn: "1633699943", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 176, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/09/22",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Customer Data and Privacy: The Insights You Need from Harvard Business Review",
    isbn: "1633699862", publisher_id: 12, series_id: 2,
    language_id: 2, pages: 160, rate: 4, rate_count: 10,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/09/22",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Agile Practice Guide",
    isbn: "1680506706", publisher_id: 13,
    rate: 4, rate_count: 15,
    language_id: 2, pages: 219,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2017/09/06",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "開眼! JavaScript ―言語仕様から学ぶJavaScriptの本質",
    public_date: "2013/6/19", pages: 192,
    rate: 4, rate_count: 15,
    dimension: "1.5 x 15 x 21 cm", publisher_id: 14,
    language_id: 3, isbn: "487311621X", description: ""},
  {title: "SOFT SKILLS ソフトウェア開発者の人生マニュアル",
    isbn: "4822251551", publisher_id: 15, language_id: 3,
    pages: 456, rate: 4, rate_count: 15,
    dimension: "21 x 15 x 2.6 cm", public_date: "2016/5/20",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "OpenCV 3 プログラミングブック",
    isbn: "4839952965", rate: 4, rate_count: 15,
    publisher_id: 16, language_id: 3, pages: 360,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2015/9/29",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "ネットワークスペシャリスト 合格テキスト 2016年度 (情報処理技術者試験対策) ",
    isbn: "4813265529", rate: 4, rate_count: 10,
    publisher_id: 17, language_id: 3, pages: 496,
    dimension: "21 x 14.8 x 2.5 cm", public_date: "2016/3/7",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "現場のインフラ屋が教える インフラエンジニアになるための教科書",
    isbn: "4802610432", rate: 4, rate_count: 15,
    publisher_id: 18, language_id: 3, pages: 296,
    dimension: "23.2 x 18.2 x 2.2 cm", public_date: "2016/6/24",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "OpenCV3ではじめるWindowsアプリ開発 (I・O BOOKS)",
    isbn: "4777519279", rate: 4.5, rate_count: 8,
    publisher_id: 19, language_id: 3, pages: 207,
    dimension: "20.6 x 14.8 x 1.8 cm", public_date: "2015/12",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Learning OpenCV 3: Computer Vision in C++ with the OpenCV Library",
    isbn: "1491937998", publisher_id: 10,
    language_id: 2, pages: 1026, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/09/14",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "OpenCV with Python By Example",
    isbn: "1785283936", publisher_id: 20,
    language_id: 2, pages: 298, rate: 4.5, rate_count: 8,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2015/09/22",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Computer Vision: Models, Learning, and Inference",
    isbn: "1107011795", publisher_id: 21,
    language_id: 2, pages: 581, rate: 4.5, rate_count: 8,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2012/06/18",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Learning Python: Powerful Object-Oriented Programming",
    isbn: "1449355730", publisher_id: 10,
    language_id: 2, pages: 1649, rate: 4.5, rate_count: 12,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2013/06/13",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Python for Data Analysis: Data Wrangling with Pandas, NumPy, and IPython",
    isbn: "1491957662", publisher_id: 10,
    language_id: 2, pages: 550, rate: 4.5, rate_count: 8,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2017/09/25",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Deep Learning",
    isbn: "9780262537551", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 280, rate: 4.5, rate_count: 8,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2019/08/16",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Cloud Computing",
    isbn: "9780262529099", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 581, rate: 4.5, rate_count: 12,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/05/06",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Data Science",
    isbn: "0262535432", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 282,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2018/06/08",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Quantum Entanglement",
    isbn: "026253844X", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 184, rate: 4.5, rate_count: 12,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/02/24",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Machine Learning: The New AI",
    isbn: "0262529513", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 232, rate: 4, rate_count: 17,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/09/30",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Critical Thinking",
    isbn: "0262538288", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 232, rate: 4.5, rate_count: 12,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/03/13",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Computational Thinking",
    isbn: "0262536560", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 264, rate: 4.5, rate_count: 12,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2019/04/19",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Neuroplasticity",
    isbn: "0262529335", publisher_id: 22, series_id: 3,
    language_id: 2, pages: 194, rate: 4, rate_count: 17,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2016/04/16",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Mathematics for Machine Learning",
    isbn: "110845514X", publisher_id: 21,
    language_id: 2, pages: 198, rate: 4.5, rate_count: 12,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2020/03/02",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Ruby on Rails Tutorial: Learn Web Development with Rails",
    isbn: "0134598628", publisher_id: 1, series_id: 4,
    language_id: 2, pages: 806, rate: 4.5, rate_count: 12,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2016/11/17",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Design Patterns in Ruby",
    isbn: "0321490452", publisher_id: 1, series_id: 4,
    language_id: 2, pages: 306, rate: 4, rate_count: 17,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2007/12/10",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Refactoring: Ruby Edition",
    isbn: "0321603508", publisher_id: 1, series_id: 4,
    language_id: 2, pages: 480, rate: 4.5, rate_count: 8,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2009/10/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Ruby Way: Solutions and Techniques in Ruby Programming",
    isbn: "0321714636", publisher_id: 1, series_id: 4,
    language_id: 2, pages: 817, rate: 4.5, rate_count: 8,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2015/02/11",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Rails 5 Way",
    isbn: "0134657675", publisher_id: 1, series_id: 4,
    language_id: 2, pages: 1084, rate: 4.5, rate_count: 12,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2017/11/17",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Practical Object-Oriented Design in Ruby: An Agile Primer",
    isbn: "0321721330", publisher_id: 1, series_id: 4,
    language_id: 2, pages: 173, rate: 4.5, rate_count: 12,
    dimension: "21 x 14.8 x 2.6 cm", public_date: "2012/09/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Data Visualization Toolkit",
    isbn: "0134464435", publisher_id: 1, series_id: 4,
    language_id: 2, pages: 252, rate: 4.5, rate_count: 8,
    dimension: "23.7 x 18.2 x 2.4 cm", public_date: "2016/08/04",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Head First Java, 2nd Edition",
    isbn: "0596009208", publisher_id: 10, series_id: 5,
    language_id: 2, pages: 688, rate: 4, rate_count: 12,
    dimension: "8 x 1.5 x 9.2 inches", public_date: "2005/22/02",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Java: A Beginner's Guide, Eighth Edition",
    isbn: "1260440214", publisher_id: 24, series_id: 7,
    language_id: 2, pages: 720, rate: 4, rate_count: 12,
    dimension: "7.3 x 1.4 x 9.1 inches", public_date: "2018/11/02",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Java: The Complete Reference, Eleventh Edition",
    isbn: "1260440230", publisher_id: 24,
    language_id: 2, pages: 1248, rate: 4, rate_count: 12,
    dimension: "7.2 x 1.8 x 9 inches", public_date: "2018/12/12",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "The Design of Everyday Things: Revised and Expanded Edition",
    isbn: "9780465050659", publisher_id: 25,
    language_id: 2, pages: 368, rate: 4, rate_count: 12,
    dimension: "5.5 x 1 x 8.3 inches", public_date: "2013/11/05",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Game Programming Patterns",
    isbn: "0990582906", publisher_id: 26,
    language_id: 2, pages: 354, rate: 4, rate_count: 12,
    dimension: "7.5 x 0.8 x 9.2 inches", public_date: "2014/11/02",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Learning JavaScript Design Patterns",
    isbn: "9781449331818", publisher_id: 10,
    language_id: 2, pages: 254, rate: 4, rate_count: 12,
    dimension: "7 x 0.6 x 9.2 inches", public_date: "2012/08/30",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Pragmatic Thinking and Learning: Refactor Your Wetware",
    isbn: "1934356050", publisher_id: 2,
    language_id: 2, pages: 252, rate: 4, rate_count: 12,
    dimension: "7 x 0.6 x 9.2 inches", public_date: "2012/11/05",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
    isbn: "1937785491", publisher_id: 2,
    language_id: 2, pages: 888, rate: 4, rate_count: 12,
    dimension: "7.5 x 1.8 x 9.2 inches", public_date: "2013/06/07",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Pragmatic Unit Testing in Java 8 with JUnit",
    isbn: "1941222595", publisher_id: 2,
    language_id: 2, pages: 236, rate: 4, rate_count: 12,
    dimension: "7.5 x 0.5 x 9.2 inches", public_date: "2015/03/19",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Learn to Program with Minecraft Plugins",
    isbn: "1941222943", publisher_id: 2,
    language_id: 2, pages: 284, rate: 4, rate_count: 12,
    dimension: "7.5 x 0.6 x 9.2 inches", public_date: "2014/11/08",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Software Estimation",
    isbn: "1941222943", publisher_id: 4,
    language_id: 2, pages: 308, rate: 4, rate_count: 12,
    dimension: "7.5 x 0.6 x 9.2 inches", public_date: "2006/02/22",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Rapid Development",
    isbn: "9781556159008", publisher_id: 4,
    language_id: 2, pages: 672, rate: 4, rate_count: 12,
    dimension: "7.4 x 1.6 x 9 inches", public_date: "1996/06/12",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Software Project Survival Guide",
    isbn: "1572316217", publisher_id: 4,
    language_id: 2, pages: 306, rate: 4, rate_count: 12,
    dimension: "7.4 x 0.7 x 9.2 inches", public_date: "1997/10/25",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "A Scrum Book: The Spirit of the Game",
    isbn: "1680506714", publisher_id: 2,
    language_id: 2, pages: 574, rate: 4, rate_count: 12,
    dimension: "7.4 x 0.7 x 9.2 inches", public_date: "209/08/16",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Software in 30 Days",
    isbn: "1118206665", publisher_id: 27,
    language_id: 2, pages: 216, rate: 4, rate_count: 12,
    dimension: "7.3 x 0.7 x 9.2 inches", public_date: "2012/05/01",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Business Object Design and Implementation II",
    isbn: "1852331089", publisher_id: 4,
    language_id: 2, pages: 212, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "1998/12/10",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "C++: The Complete Reference, 4th Edition",
    isbn: "0072226803", publisher_id: 24,
    language_id: 2, pages: 1056, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2002/12/10",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Swing: A Beginner's Guide",
    isbn: "0072263148", publisher_id: 24,
    language_id: 2, pages: 590, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2006/09/29",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Java Programming: A Comprehensive Introduction, First edition",
    isbn: "007802207X", publisher_id: 27,
    language_id: 2, pages: 1184, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2012/07/01",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Artificial Intelligence with Python",
    isbn: "183921953X", publisher_id: 20,
    language_id: 2, pages: 618, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2020/01/31",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Learn OpenCV 4 by Building Projects",
    isbn: "1789341221", publisher_id: 20,
    language_id: 2, pages: 312, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2018/11/30",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "OpenCV By Example",
    isbn: "1785280945", publisher_id: 20,
    language_id: 2, pages: 298, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2016/01/22",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Python Machine Learning Cookbook",
    isbn: "1786464470", publisher_id: 20,
    language_id: 2, pages: 304, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2016/06/23",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Design Patterns für die Spieleprogrammierung",
    isbn: "3958450903", publisher_id: 30,
    language_id: 2, pages: 400, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2015/08/31",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Game Programming Patterns ソフトウェア開発の問題解決メニュー",
    isbn: "4844338900", publisher_id: 15,
    language_id: 3, pages: 304, rate: 4, rate_count: 12,
    dimension: "9.1 x 7.2 x 1.1 inches", public_date: "2016/06/23",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Programowanie gier Wzorce",
    isbn: "8301210370", publisher_id: 31,
    language_id: 2, pages: 304, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.5 x 9.2 inches", public_date: "2020/01/01",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Efficient Reinforcement Learning Using Gaussian Processes",
    isbn: "3866445695", publisher_id: 31,
    language_id: 2, pages: 224, rate: 4, rate_count: 12,
    dimension: "7.1 x 0.5 x 9.4 inches", public_date: "2010/11/22",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "A Survey on Policy Search for Robotics",
    isbn: "1601987021", publisher_id: 20,
    language_id: 2, pages: 160, rate: 4, rate_count: 12,
    dimension: "6.1 x 0.3 x 9.2 inches", public_date: "2013/08/15",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."},
  {title: "Scrum: tweemaal zoveel doen in de helft van de tijd",
    isbn: "9491845373", publisher_id: 32,
    language_id: 4, pages: 253, rate: 4, rate_count: 12,
    dimension: "5.7 x 0.9 x 8.3 inches", public_date: "2014/12/01",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
    dictum imperdiet commodo. Integer nunc sem, mollis vitae tincidunt sed,
    faucibus in est. Proin porta commodo nunc ut sodales. In luctus tempus ex a
    cursus. Sed a semper neque. Vestibulum fringilla augue nunc, sed pellentesque
    urna mattis in. Pellentesque ut lorem arcu."}
])
puts "Created #{Book.count} books!"

Image.create!([
  {target_id: 1, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/1.jpg"},
  {target_id: 1, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/1.1.jpg"},
  {target_id: 2, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/2.jpg"},
  {target_id: 3, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/3.jpg"},
  {target_id: 4, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/4.jpg"},
  {target_id: 5, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/5.jpg"},
  {target_id: 6, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/6.jpg"},
  {target_id: 7, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/7.jpg"},
  {target_id: 8, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/8.jpg"},
  {target_id: 9, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/9.jpg"},
  {target_id: 10, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/10.jpg"},
  {target_id: 10, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/10.1.jpeg"},
  {target_id: 11, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/11.jpg"},
  {target_id: 12, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/12.jpg"},
  {target_id: 13, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/13.jpg"},
  {target_id: 14, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/14.jpg"},
  {target_id: 15, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/15.jpg"},
  {target_id: 16, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/16.jpg"},
  {target_id: 17, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/17.jpg"},
  {target_id: 18, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/18.jpg"},
  {target_id: 19, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/19.jpg"},
  {target_id: 20, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/20.jpg"},
  {target_id: 21, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/21.jpg"},
  {target_id: 22, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/22.jpg"},
  {target_id: 23, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/23.jpg"},
  {target_id: 24, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/24.jpg"},
  {target_id: 25, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/25.jpg"},
  {target_id: 26, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/26.jpg"},
  {target_id: 27, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/27.jpg"},
  {target_id: 28, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/28.jpg"},
  {target_id: 29, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/29.jpg"},
  {target_id: 30, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/30.jpg"},
  {target_id: 31, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/31.jpg"},
  {target_id: 32, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/32.jpg"},
  {target_id: 33, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/33.jpg"},
  {target_id: 34, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/34.jpg"},
  {target_id: 35, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/35.jpg"},
  {target_id: 36, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/36.jpg"},
  {target_id: 37, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/37.jpg"},
  {target_id: 38, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/38.jpg"},
  {target_id: 39, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/39.jpg"},
  {target_id: 40, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/40.jpg"},
  {target_id: 41, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/41.jpg"},
  {target_id: 42, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/42.jpg"},
  {target_id: 43, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/43.jpg"},
  {target_id: 44, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/44.jpg"},
  {target_id: 45, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/45.jpg"},
  {target_id: 46, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/46.jpg"},
  {target_id: 47, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/47.jpg"},
  {target_id: 48, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/48.jpg"},
  {target_id: 49, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/49.jpg"},
  {target_id: 50, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/50.jpg"},
  {target_id: 51, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/51.jpg"},
  {target_id: 52, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/52.jpg"},
  {target_id: 53, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/53.jpg"},
  {target_id: 54, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/54.jpg"},
  {target_id: 55, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/55.jpg"},
  {target_id: 56, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/56.jpg"},
  {target_id: 57, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/57.jpg"},
  {target_id: 58, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/58.jpg"},
  {target_id: 59, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/59.jpg"},
  {target_id: 60, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/60.jpg"},
  {target_id: 61, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/61.jpg"},
  {target_id: 62, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591020812/Books4U/image/62.jpg"},
  {target_id: 63, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591021590/Books4U/image/63.jpg"},
  {target_id: 64, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1588236078/Books4U/image/64.jpg"},
  {target_id: 65, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591022505/Books4U/image/65.jpg"},
  {target_id: 66, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591022505/Books4U/image/66.jpg"},
  {target_id: 67, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591025124/Books4U/image/67.jpg"},
  {target_id: 68, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591025100/Books4U/image/68.jpg"},
  {target_id: 69, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591025100/Books4U/image/69.jpg"},
  {target_id: 70, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591025100/Books4U/image/70.jpg"},
  {target_id: 71, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591025100/Books4U/image/71.jpg"},
  {target_id: 72, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/72.jpg"},
  {target_id: 73, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/73.jpg"},
  {target_id: 74, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/74.jpg"},
  {target_id: 75, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/75.jpg"},
  {target_id: 76, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/76.jpg"},
  {target_id: 77, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/77.jpg"},
  {target_id: 78, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/78.jpg"},
  {target_id: 79, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/79.jpg"},
  {target_id: 80, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/80.jpg"},
  {target_id: 81, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/81.jpg"},
  {target_id: 82, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/82.jpg"},
  {target_id: 83, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/83.jpg"},
  {target_id: 84, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591063808/Books4U/image/84.jpg"},
  {target_id: 85, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591075405/Books4U/image/85.jpg"},
  {target_id: 86, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591075406/Books4U/image/86.jpg"},
  {target_id: 87, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591075405/Books4U/image/87.jpg"},
  {target_id: 88, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591075642/Books4U/image/88.jpg"},
  {target_id: 89, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591075642/Books4U/image/89.jpg"},
  {target_id: 90, target_type: "Book",
    remote_url_url: "https://res.cloudinary.com/phucdx/image/upload/v1591075642/Books4U/image/90.jpg"}
])
puts "Created #{Image.count} images!"

AuthorBook.create!([
  {author_id: 1, book_id: 1},
  {author_id: 1, book_id: 2},
  {author_id: 2, book_id: 23},
  {author_id: 3, book_id: 4},
  {author_id: 3, book_id: 5},
  {author_id: 3, book_id: 6},
  {author_id: 3, book_id: 7},
  {author_id: 3, book_id: 8},
  {author_id: 3, book_id: 9},
  {author_id: 3, book_id: 10},
  {author_id: 3, book_id: 11},
  {author_id: 4, book_id: 12},
  {author_id: 4, book_id: 13},
  {author_id: 5, book_id: 63},
  {author_id: 5, book_id: 64},
  {author_id: 7, book_id: 24},
  {author_id: 7, book_id: 25},
  {author_id: 7, book_id: 26},
  {author_id: 7, book_id: 27},
  {author_id: 7, book_id: 28},
  {author_id: 7, book_id: 29},
  {author_id: 7, book_id: 30},
  {author_id: 7, book_id: 31},
  {author_id: 7, book_id: 32},
  {author_id: 7, book_id: 33},
  {author_id: 6, book_id: 42},
  {author_id: 8, book_id: 54},
  {author_id: 9, book_id: 85},
  {author_id: 9, book_id: 86},
  {author_id: 9, book_id: 87},
  {author_id: 10, book_id: 15},
  {author_id: 10, book_id: 16},
  {author_id: 11, book_id: 19},
  {author_id: 12, book_id: 20},
  {author_id: 13, book_id: 20},
  {author_id: 14, book_id: 21},
  {author_id: 15, book_id: 22},
  {author_id: 16, book_id: 22},
  {author_id: 17, book_id: 2},
  {author_id: 17, book_id: 3},
  {author_id: 18, book_id: 23},
  {author_id: 19, book_id: 17},
  {author_id: 13, book_id: 34},
  {author_id: 46, book_id: 35},
  {author_id: 47, book_id: 36},
  {author_id: 48, book_id: 37},
  {author_id: 49, book_id: 38},
  {author_id: 50, book_id: 39},
  {author_id: 51, book_id: 39},
  {author_id: 52, book_id: 40},
  {author_id: 20, book_id: 41},
  {author_id: 21, book_id: 41},
  {author_id: 22, book_id: 17},
  {author_id: 23, book_id: 43},
  {author_id: 24, book_id: 44},
  {author_id: 25, book_id: 45},
  {author_id: 26, book_id: 46},
  {author_id: 27, book_id: 47},
  {author_id: 25, book_id: 48},
  {author_id: 28, book_id: 48},
  {author_id: 19, book_id: 49},
  {author_id: 30, book_id: 50},
  {author_id: 31, book_id: 51},
  {author_id: 32, book_id: 52},
  {author_id: 26, book_id: 53},
  {author_id: 33, book_id: 18},
  {author_id: 34, book_id: 54},
  {author_id: 35, book_id: 54},
  {author_id: 36, book_id: 55},
  {author_id: 37, book_id: 56},
  {author_id: 38, book_id: 57},
  {author_id: 39, book_id: 57},
  {author_id: 40, book_id: 57},
  {author_id: 41, book_id: 58},
  {author_id: 42, book_id: 58},
  {author_id: 43, book_id: 59},
  {author_id: 44, book_id: 60},
  {author_id: 45, book_id: 61},
  {author_id: 53, book_id: 62},
  {author_id: 54, book_id: 62},
  {author_id: 55, book_id: 14},
  {author_id: 56, book_id: 65},
  {author_id: 57, book_id: 66},
  {author_id: 58, book_id: 67},
  {author_id: 1, book_id: 68},
  {author_id: 1, book_id: 69},
  {author_id: 1, book_id: 70},
  {author_id: 1, book_id: 71},
  {author_id: 4, book_id: 72},
  {author_id: 4, book_id: 73},
  {author_id: 4, book_id: 74},
  {author_id: 2, book_id: 75},
  {author_id: 2, book_id: 76},
  {author_id: 2, book_id: 77},
  {author_id: 5, book_id: 78},
  {author_id: 5, book_id: 79},
  {author_id: 5, book_id: 80},
  {author_id: 6, book_id: 81},
  {author_id: 6, book_id: 82},
  {author_id: 6, book_id: 83},
  {author_id: 6, book_id: 84},
  {author_id: 8, book_id: 85},
  {author_id: 8, book_id: 86},
  {author_id: 8, book_id: 87},
  {author_id: 8, book_id: 18},
  {author_id: 10, book_id: 88},
  {author_id: 10, book_id: 89},
  {author_id: 2, book_id: 90}
])

BookCategory.create!([
  {category_id: 14, book_id: 1},
  {category_id: 14, book_id: 2},
  {category_id: 12, book_id: 2},
  {category_id: 5, book_id: 3},
  {category_id: 10, book_id: 3},
  {category_id: 11, book_id: 3},
  {category_id: 14, book_id: 4},
  {category_id: 14, book_id: 5},
  {category_id: 14, book_id: 6},
  {category_id: 12, book_id: 7},
  {category_id: 14, book_id: 8},
  {category_id: 14, book_id: 9},
  {category_id: 14, book_id: 10},
  {category_id: 5, book_id: 11},
  {category_id: 12, book_id: 11},
  {category_id: 14, book_id: 12},
  {category_id: 12, book_id: 13},
  {category_id: 14, book_id: 14},
  {category_id: 14, book_id: 15},
  {category_id: 14, book_id: 16},
  {category_id: 13, book_id: 17},
  {category_id: 13, book_id: 18},
  {category_id: 13, book_id: 19},
  {category_id: 13, book_id: 20},
  {category_id: 5, book_id: 21},
  {category_id: 5, book_id: 22},
  {category_id: 12, book_id: 22},
  {category_id: 14, book_id: 23},
  {category_id: 12, book_id: 24},
  {category_id: 14, book_id: 25},
  {category_id: 8, book_id: 26},
  {category_id: 7, book_id: 26},
  {category_id: 14, book_id: 26},
  {category_id: 14, book_id: 27},
  {category_id: 14, book_id: 28},
  {category_id: 14, book_id: 29},
  {category_id: 14, book_id: 30},
  {category_id: 14, book_id: 31},
  {category_id: 14, book_id: 32},
  {category_id: 14, book_id: 33},
  {category_id: 12, book_id: 34},
  {category_id: 5, book_id: 35},
  {category_id: 10, book_id: 35},
  {category_id: 11, book_id: 35},
  {category_id: 14, book_id: 35},
  {category_id: 14, book_id: 36},
  {category_id: 8, book_id: 37},
  {category_id: 14, book_id: 37},
  {category_id: 14, book_id: 37},
  {category_id: 14, book_id: 38},
  {category_id: 14, book_id: 39},
  {category_id: 8, book_id: 40},
  {category_id: 7, book_id: 40},
  {category_id: 14, book_id: 40},
  {category_id: 7, book_id: 41},
  {category_id: 14, book_id: 41},
  {category_id: 8, book_id: 42},
  {category_id: 7, book_id: 42},
  {category_id: 7, book_id: 43},
  {category_id: 8, book_id: 44},
  {category_id: 8, book_id: 45},
  {category_id: 7, book_id: 45},
  {category_id: 8, book_id: 46},
  {category_id: 7, book_id: 46},
  {category_id: 7, book_id: 47},
  {category_id: 7, book_id: 48},
  {category_id: 7, book_id: 49},
  {category_id: 7, book_id: 50},
  {category_id: 7, book_id: 51},
  {category_id: 7, book_id: 52},
  {category_id: 7, book_id: 53},
  {category_id: 7, book_id: 54},
  {category_id: 15, book_id: 55},
  {category_id: 15, book_id: 56},
  {category_id: 15, book_id: 57},
  {category_id: 15, book_id: 58},
  {category_id: 15, book_id: 59},
  {category_id: 12, book_id: 60},
  {category_id: 15, book_id: 60},
  {category_id: 5, book_id: 61},
  {category_id: 15, book_id: 61},
  {category_id: 1, book_id: 62},
  {category_id: 1, book_id: 63},
  {category_id: 1, book_id: 64},
  {category_id: 9, book_id: 65},
  {category_id: 9, book_id: 66},
  {category_id: 9, book_id: 67},
  {category_id: 14, book_id: 68},
  {category_id: 6, book_id: 69},
  {category_id: 1, book_id: 70},
  {category_id: 1, book_id: 71},
  {category_id: 14, book_id: 72},
  {category_id: 14, book_id: 73},
  {category_id: 14, book_id: 74},
  {category_id: 14, book_id: 75},
  {category_id: 14, book_id: 76},
  {category_id: 14, book_id: 77},
  {category_id: 14, book_id: 78},
  {category_id: 1, book_id: 79},
  {category_id: 1, book_id: 80},
  {category_id: 7, book_id: 81},
  {category_id: 8, book_id: 81},
  {category_id: 14, book_id: 82},
  {category_id: 14, book_id: 83},
  {category_id: 8, book_id: 84},
  {category_id: 9, book_id: 85},
  {category_id: 14, book_id: 86},
  {category_id: 14, book_id: 87},
  {category_id: 14, book_id: 88},
  {category_id: 14, book_id: 89},
  {category_id: 14, book_id: 90}
])

Tag.create!([
  {title: "JavaScript"},
  {title: "Git"},
  {title: "Android"},
  {title: "CSS"},
  {title: "HTML5"},
  {title: "Node.js"},
  {title: "ReactJS"},
  {title: "Big Data"},
  {title: "C#"},
  {title: "Bootstrap"},
  {title: "Java"},
  {title: "PHP"},
  {title: "AngularJS"},
  {title: "Deep Learning"},
  {title: "Python"},
  {title: "jQuery"},
  {title: "Programming"},
  {title: "Artificial Intelligence"},
  {title: "Linux"},
  {title: "Machine Learning"},
  {title: "Blockchain"},
  {title: "VueJS"},
  {title: "Ruby on Rails"},
  {title: "Ruby"},
  {title: "Agile"},
  {title: "Scrum"},
  {title: "Business"},
  {title: "Internet Security"},
  {title: "Open CV"},
  {title: "C++"},
  {title: "Computer Vision"},
  {title: "PostgreSQL"}
])
puts "Created #{Tag.count} tags!"

BookTag.create!([
  {book_id: 1, tag_id: 17},
  {book_id: 2, tag_id: 25},
  {book_id: 3, tag_id: 1},
  {book_id: 4, tag_id: 17},
  {book_id: 5, tag_id: 17},
  {book_id: 5, tag_id: 25},
  {book_id: 6, tag_id: 17},
  {book_id: 7, tag_id: 17},
  {book_id: 7, tag_id: 25},
  {book_id: 8, tag_id: 17},
  {book_id: 9, tag_id: 17},
  {book_id: 10, tag_id: 9},
  {book_id: 10, tag_id: 25},
  {book_id: 11, tag_id: 17},
  {book_id: 11, tag_id: 25},
  {book_id: 12, tag_id: 17},
  {book_id: 13, tag_id: 17},
  {book_id: 13, tag_id: 25},
  {book_id: 14, tag_id: 17},
  {book_id: 15, tag_id: 17},
  {book_id: 16, tag_id: 17},
  {book_id: 17, tag_id: 17},
  {book_id: 17, tag_id: 19},
  {book_id: 18, tag_id: 17},
  {book_id: 18, tag_id: 19},
  {book_id: 19, tag_id: 19},
  {book_id: 20, tag_id: 19},
  {book_id: 21, tag_id: 5},
  {book_id: 21, tag_id: 17},
  {book_id: 22, tag_id: 23},
  {book_id: 22, tag_id: 25},
  {book_id: 23, tag_id: 25},
  {book_id: 23, tag_id: 26},
  {book_id: 24, tag_id: 25},
  {book_id: 24, tag_id: 27},
  {book_id: 25, tag_id: 17},
  {book_id: 25, tag_id: 27},
  {book_id: 26, tag_id: 18},
  {book_id: 26, tag_id: 27},
  {book_id: 27, tag_id: 21},
  {book_id: 27, tag_id: 27},
  {book_id: 28, tag_id: 27},
  {book_id: 29, tag_id: 27},
  {book_id: 30, tag_id: 27},
  {book_id: 31, tag_id: 27},
  {book_id: 31, tag_id: 28},
  {book_id: 32, tag_id: 27},
  {book_id: 33, tag_id: 27},
  {book_id: 34, tag_id: 25},
  {book_id: 35, tag_id: 1},
  {book_id: 36, tag_id: 17},
  {book_id: 37, tag_id: 15},
  {book_id: 37, tag_id: 29},
  {book_id: 38, tag_id: 28},
  {book_id: 39, tag_id: 17},
  {book_id: 40, tag_id: 29},
  {book_id: 41, tag_id: 28},
  {book_id: 41, tag_id: 30},
  {book_id: 42, tag_id: 15},
  {book_id: 42, tag_id: 29},
  {book_id: 43, tag_id: 31},
  {book_id: 44, tag_id: 15},
  {book_id: 44, tag_id: 17},
  {book_id: 45, tag_id: 15},
  {book_id: 46, tag_id: 14},
  {book_id: 46, tag_id: 20},
  {book_id: 47, tag_id: 20},
  {book_id: 48, tag_id: 20},
  {book_id: 49, tag_id: 20},
  {book_id: 50, tag_id: 18},
  {book_id: 50, tag_id: 20},
  {book_id: 51, tag_id: 20},
  {book_id: 52, tag_id: 20},
  {book_id: 53, tag_id: 20},
  {book_id: 54, tag_id: 20},
  {book_id: 55, tag_id: 23},
  {book_id: 55, tag_id: 24},
  {book_id: 56, tag_id: 24},
  {book_id: 57, tag_id: 24},
  {book_id: 58, tag_id: 17},
  {book_id: 58, tag_id: 24},
  {book_id: 59, tag_id: 23},
  {book_id: 59, tag_id: 24},
  {book_id: 60, tag_id: 24},
  {book_id: 60, tag_id: 25},
  {book_id: 61, tag_id: 1},
  {book_id: 61, tag_id: 23},
  {book_id: 61, tag_id: 32},
  {book_id: 62, tag_id: 11},
  {book_id: 63, tag_id: 11},
  {book_id: 64, tag_id: 11},
  {book_id: 67, tag_id: 11},
  {book_id: 67, tag_id: 1},
  {book_id: 68, tag_id: 17},
  {book_id: 69, tag_id: 24},
  {book_id: 70, tag_id: 11},
  {book_id: 71, tag_id: 14},
  {book_id: 72, tag_id: 17},
  {book_id: 73, tag_id: 17},
  {book_id: 74, tag_id: 17},
  {book_id: 75, tag_id: 26},
  {book_id: 76, tag_id: 26},
  {book_id: 77, tag_id: 17},
  {book_id: 78, tag_id: 30},
  {book_id: 79, tag_id: 11},
  {book_id: 80, tag_id: 11},
  {book_id: 81, tag_id: 15},
  {book_id: 81, tag_id: 18},
  {book_id: 82, tag_id: 29},
  {book_id: 82, tag_id: 30},
  {book_id: 83, tag_id: 29},
  {book_id: 84, tag_id: 15},
  {book_id: 85, tag_id: 17},
  {book_id: 86, tag_id: 17},
  {book_id: 87, tag_id: 17},
  {book_id: 88, tag_id: 17},
  {book_id: 89, tag_id: 17},
  {book_id: 90, tag_id: 26}
])

Book.all.each do |book|
  BookItem.create! book_id: book.id, location: "Sequence number 2 on the left.",
    state: :ready, description: "New books, not damaged."
end

Blog.create!([
  {user_id: 1,
    title: "CAESAR'S LAST BREATH",
    description: "Decoding the Secrets of the Air Around Us",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 1,
    title: "A MIND AT PLAY: HOW CLAUDE SHANNON INVENTED THE INFORMATION AGE",
    description: "Of the free internet and its discontents, who are many and powerful. ",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 1,
    title: "THE DARKENING WEB: THE WAR FOR CYBERSPACE",
    description: 'The life of the man called "the father of information theory"',
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 1,
    title: "EVERYTHING ALL AT ONCE: HOW NERDS SOLVE PROBLEMS",
    description: "Decoding the Secrets of the Air Around Us",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 1,
    title: "WHY: WHAT MAKES US CURIOUS?",
    description: "The concept of curiosity is a tough nut to crack. Livio is not shy about admitting its difficulties, and he makes an admirable effort to explain complex and still-not-well-understood ideas",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 2,
    title: "LOREM IPSUM DOLOR SIT AMET",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam.",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 2,
    title: "LOREM IPSUM DOLOR SIT AMET",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam.",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 3,
    title: "LOREM IPSUM DOLOR SIT AMET",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam.",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 4,
    title: "LOREM IPSUM DOLOR SIT AMET",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam.",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 5,
    title: "LOREM IPSUM DOLOR SIT AMET",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam.",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 5,
    title: "LOREM IPSUM DOLOR SIT AMET",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam.",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1},
  {user_id: 6,
    title: "LOREM IPSUM DOLOR SIT AMET",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam.",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna
    orci, viverra sit amet lectus vitae, vulputate mollis diam. Praesent auctor,
    tellus quis mollis lobortis, enim magna gravida tellus, eu congue orci tellus
    sit amet ex. Nunc in tincidunt urna. Orci varius natoque penatibus et magnis
    dis parturient montes, nascetur ridiculus mus. Nam quis velit non nunc hendrerit
    aliquet. Aliquam sagittis arcu in arcu iaculis, ut vulputate eros ultricies.
    Praesent tempus dapibus est a tincidunt. In eu dui mi.",
    status: 1}
])

BlogBook.create!([
  {blog_id: 1, book_id: 1},
  {blog_id: 2, book_id: 2},
  {blog_id: 3, book_id: 3},
  {blog_id: 4, book_id: 4},
  {blog_id: 4, book_id: 5},
  {blog_id: 4, book_id: 6},
  {blog_id: 4, book_id: 7},
  {blog_id: 5, book_id: 8},
  {blog_id: 5, book_id: 9},
  {blog_id: 2, book_id: 10}
])

Announcement.create!([
  {admin_id: 1, title: "Books4U introduced the Trending posts feature",
    content: "Books4U has just added new feature called Trending posts.
    When posts reach the number of views, votes, clips, comments at a certain
    level, they will be automatically tagged by Books4U system as Trending."},
  {admin_id: 1, title: "Books4U introduced the RSS Feed feature",
    content: "Books4U has just added the RSS Feed feature, allowing you to
    receive news feeds through RSS Feed Readers.The address for receiving RSS
    feeds on Books4U is https://books4u/rss, which you can see at RESOURCES in
    the footer at the bottom of the page."}
])

Ebook.create!([
  {format: "pdf", book_id: 1,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/1.pdf"},
  {format: "pdf", book_id: 2,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/2.pdf"},
  {format: "pdf", book_id: 3,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/3.pdf"},
  {format: "pdf", book_id: 4,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/4.pdf"},
  {format: "pdf", book_id: 5,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/5.pdf"},
  {format: "pdf", book_id: 8,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/8.pdf"},
  {format: "pdf", book_id: 9,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/9.pdf"},
  {format: "pdf", book_id: 12,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/12.pdf"},
  {format: "pdf", book_id: 15,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/15.pdf"},
  {format: "pdf", book_id: 17,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/17.pdf"},
  {format: "pdf", book_id: 18,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/18.pdf"},
  {format: "pdf", book_id: 19,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/19.pdf"},
  {format: "pdf", book_id: 20,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/20.pdf"},
  {format: "pdf", book_id: 34,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/34.pdf"},
  {format: "pdf", book_id: 45,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/45.pdf"},
  {format: "pdf", book_id: 50,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/50.pdf"},
  {format: "pdf", book_id: 55,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/55.pdf"},
  {format: "pdf", book_id: 56,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/56.pdf"},
  {format: "pdf", book_id: 57,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/57.pdf"},
  {format: "pdf", book_id: 58,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1588236143/Books4U/ebooks/58.pdf"},
  {format: "pdf", book_id: 89,
    link: "https://res.cloudinary.com/phucdx/image/upload/v1591244157/Books4U/ebooks/89.pdf"}
])
puts "Created #{Ebook.count} ebooks!"

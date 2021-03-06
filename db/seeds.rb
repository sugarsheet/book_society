require 'open-uri'
require 'nokogiri'

Review.destroy_all
RecommendedBook.destroy_all
Book.destroy_all
Author.destroy_all
User.destroy_all


puts 'Creating users...'

user_1_anne_lepetit = User.new(email: "user1@gmail.com", password: "123456", first_name: "Anne", last_name:"Lepetit")
user_1_anne_lepetit.save!
file = URI.open("https://pbs.twimg.com/profile_images/1080113281715617792/Ct6pFcZl_400x400.jpg")
user_1_anne_lepetit.photo.attach(io: file, filename: "#{user_1_anne_lepetit.email}.jpg", content_type: 'image/jpg')


user_2_audrey_lemoine = User.new(email: "user2@gmail.com", password: "123456", first_name: "Audrey", last_name:"Le Moine")
user_2_audrey_lemoine.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718824/wfwjfw_xhiktf.jpg")
user_2_audrey_lemoine.photo.attach(io: file, filename: "#{user_2_audrey_lemoine.email}.jpg", content_type: 'image/jpg')


user_3_eliane_tang = User.new(email: "user3@gmail.com", password: "123456", first_name: "Eliane", last_name:"Tang")
user_3_eliane_tang.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717958/IMG_8284_pf30vd.jpg")
user_3_eliane_tang.photo.attach(io: file, filename: "#{user_3_eliane_tang.email}.jpg", content_type: 'image/jpg')

user_4_marcelo_giovannetti = User.new(email: "user4@gmail.com", password: "123456", first_name: "Marcelo", last_name:"Giovannetti")
user_4_marcelo_giovannetti.save!
file = URI.open("https://3.bp.blogspot.com/-eV-T3ODTb6w/TbKDUcAASjI/AAAAAAAAJh0/JkU0qOIPo8A/s1600/Anthony_Perkins2.jpg")
user_4_marcelo_giovannetti.photo.attach(io: file, filename: "#{user_4_marcelo_giovannetti.email}.jpg", content_type: 'image/jpg')

user_5_grace_lee = User.new(email: "user5@gmail.com", password: "123456", first_name: "Grace", last_name:"Lee")
user_5_grace_lee.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718049/Gemma-chan1_ylawhz.jpg")
user_5_grace_lee.photo.attach(io: file, filename: "#{user_5_grace_lee.email}.jpg", content_type: 'image/jpg')

user_6_jiwon_eun = User.new(email: "user6@gmail.com", password: "123456", first_name: "Ji-won", last_name:"Eun")
user_6_jiwon_eun.save!
file = URI.open("https://avatars.githubusercontent.com/u/77082706?v=4")
user_6_jiwon_eun.photo.attach(io: file, filename: "#{user_6_jiwon_eun.email}.jpg", content_type: 'image/jpg')

user_7_mathieu_chaplain = User.new(email: "user7@gmail.com", password: "123456", first_name: "Mathieu", last_name:"Chaplain")
user_7_mathieu_chaplain.save!
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1617571633/aw6cirb2tut59huiyvcm.jpg")
user_7_mathieu_chaplain.photo.attach(io: file, filename: "#{user_7_mathieu_chaplain.email}.jpg", content_type: 'image/jpg')

user_8_johann_bzaih = User.new(email: "user8@gmail.com", password: "123456", first_name: "Johann", last_name:"Bzaih")
user_8_johann_bzaih.save!
file = URI.open("https://avatars.githubusercontent.com/u/66303954?v=4")
user_8_johann_bzaih.photo.attach(io: file, filename: "#{user_8_johann_bzaih.email}.jpg", content_type: 'image/jpg')

user_9_lili_ahenkan = User.new(email: "user9@gmail.com", password: "123456", first_name: "Lili", last_name:"Ahenkan")
user_9_lili_ahenkan.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622759340/flex_whpkum.jpg")
user_9_lili_ahenkan.photo.attach(io: file, filename: "#{user_9_lili_ahenkan.email}.jpg", content_type: 'image/jpg')

puts 'Finished!'


puts 'Creating authors...'
james_clear = Author.new(first_name: "James", last_name:"Clear", bio: "James Clear is an author and speaker focused on habits, decision-making, and continuous improvement.")
james_clear.save!

david_hawkins = Author.new(first_name: "David", last_name:"Hawkins", bio: "He is renowned as a pioneering researcher in the field of consciousness, as well as author, lecturer, clinician, physician, and scientist.")
david_hawkins.save!

hermann_hesse = Author.new(first_name: "Hermann", last_name:"Hesse", bio: "As a Western man profoundly affected by the mysticism of Eastern thought, he wrote many novels, stories, and essays that bear a vital spiritual force that has captured the imagination and loyalty of many generations of readers. In 1946, he won the Nobel Prize for Literature for The Glass Bead Game.")
hermann_hesse.save!

mark_manson = Author.new(first_name: "Mark", last_name:"Manson", bio: "is an American self-help author and blogger. As of 2019 he had authored three books.")
mark_manson.save!

marcus_aurelius = Author.new(first_name: "Marcus", last_name:"Aurelius", bio: "Marcus Aurelius was Emperor of Rome from 161 to 180. He ruled with Lucius Verus as co-emperor from 161 until Verus' death in 169. Marcus Aurelius was the last of the so-called Five Good Emperors. He was a practitioner of Stoicism, and his untitled writing, commonly known as Meditations, is the most significant source of the modern understanding of ancient Stoic philosophy, and although it is not as well-known as Plato's Dialogues or Aristotle's Nicomachean Ethics, the Meditations is nevertheless considered by many commentators one of the greatest works of philosophy.")
marcus_aurelius.save!

jk_rowling = Author.new(first_name: "JK", last_name:"Rowling", bio: "Joanne wanted to be a writer from an early age. She wrote her first book at the age of six ??? a story about a rabbit, called ???Rabbit???. At just eleven, she wrote her first novel ??? about seven cursed diamonds and the people who owned them.")
jk_rowling.save!

barack_obama = Author.new(first_name: "Barack", last_name:"Obama", bio: "Barack Obama was the 44th president of the United States, elected in November 2008 and holding office for two terms. He is the author of two previous New York Times bestselling books, Dreams from My Father and The Audacity of Hope, and the recipient of the 2009 Nobel Peace Prize. He lives in Washington, D.C., with his wife, Michelle. They have two daughters, Malia and Sasha.")
barack_obama.save!

barbara_oakley = Author.new(first_name: "Barbara", last_name:"Oakley", bio: "Barbara Ann Oakley is an American professor of engineering at Oakland University and McMaster University whose online courses on learning are some of the most popular MOOC classes in the world. She is involved in multiple areas of research, ranging from STEM education, to learning practices.")
barbara_oakley.save!

nikola_tesla = Author.new(first_name: "Nikola", last_name:"Tesla", bio: "Nikola Tesla was a Serbian-American inventor, electrical engineer, mechanical engineer, and futurist best known for his contributions to the design of the modern alternating current electricity supply system.")
nikola_tesla.save!

darrell_huff = Author.new(first_name: "Darrell", last_name:"Huff", bio: "Darrell Huff was an American writer and is best known as the author of How to Lie with Statistics (1954), the best-selling statistics book of the second half of the twentieth century and for his use of statistics as a tobacco lobbyist.")
darrell_huff.save!

george_clason = Author.new(first_name: "George", last_name:"Clason", bio: "George S.Clason was an American author. He is most often associated with his book The Richest Man in Babylon which was first published in 1926.")
george_clason.save!

phil_knight = Author.new(first_name: "Phil", last_name:"Knight", bio: "In 1962, fresh out of business school, Phil Knight borrowed $50 from his father and created a company with a simple mission: import high-quality, low-cost athletic shoes from Japan.")
phil_knight.save!

david_allen = Author.new(first_name: "David", last_name:"Allen", bio: "David Allen is an American productivity consultant best known for the creation of a time management method called Getting Things Done.")
david_allen.save!

christopher_burkett = Author.new(first_name: "Christopher", last_name:"Burkett", bio: "Fine Art Photographer.")
christopher_burkett.save!

thomas_sterner = Author.new(first_name: "Thomas", last_name:"Sterner", bio: "Founder and CEO of The Practicing Mind Institute. As a successful entrepreneur he is considered an expert in Present Moment Functioning or PMF tm. He is a popular and in demand speaker who works with high performance individuals including, athletes, industry groups and individuals, helping them to operate effectively within high stress situations so that they can break through to new levels of mastery.")
thomas_sterner.save!

malcolm_gladwell = Author.new(first_name: "Malcolm", last_name:"Gladwell", bio: "Malcolm Gladwell is the author of five New York Times bestsellers: The Tipping Point,Blink, Outliers,What the Dog Saw, and David and Goliath.")
malcolm_gladwell.save!

alisa_vitti = Author.new(first_name: "Alisa", last_name:"Vitti", bio: "Alisa Vitti, functional nutritionist and women???s hormone expert.")
alisa_vitti.save!

puts 'Finished!'


puts 'Creating books...'
atomic_habits = Book.new(title: "Atomic Habits", description:"People think that when you want to change your life, you need to think big. But world-renowned habits expert James Clear has discovered another way. He knows that real change comes from the compound effect of hundreds of small decisions: doing two push-ups a day, waking up five minutes early, or holding a single short phone call.", isbn: "9780735211292")
atomic_habits.author = james_clear
atomic_habits.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718215/atomic_yz4xfk.jpg")
atomic_habits.photo.attach(io: file, filename: "#{atomic_habits.title}.jpg", content_type: 'image/jpg')

mind_numbers = Book.new(title: "A mind for Numbers", description:"Dr. Oakley lets us in on the secrets to learning effectively???secrets that even dedicated and successful students wish they???d known earlier. Contrary to popular belief, math requires creative, as well as analytical, thinking.", isbn: "9780399165245")
mind_numbers.author = barbara_oakley
mind_numbers.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718136/mind_jlu0ow.jpg")
mind_numbers.photo.attach(io: file, filename: "#{mind_numbers.title}.jpg", content_type: 'image/jpg')

letting_go = Book.new(title: "Letting go", description:"Hard Times is unusual in several ways. It is by far the shortest of Dickens's novels, barely a quarter of the length of those written immediately before and after it.[1] Also, unlike all but one of his other novels, Hard Times has neither a preface nor illustrations. Moreover, it is his only novel not to have scenes set in London.[1] Instead the story is set in the fictitious Victorian industrial Coketown, a generic Northern English mill-town, in some ways similar to Manchester, though smaller. Coketown may be partially based on 19th-century Preston.", isbn: "9781401945015")
letting_go.author = david_hawkins
letting_go.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717717/lettinggo_chqcat.png")
letting_go.photo.attach(io: file, filename: "#{letting_go.title}.jpg", content_type: 'image/jpg')

steppenwolf = Book.new(title: "Steppenwolf", description:"The novel was named after the German name for the steppe wolf. The story in large part reflects a profound crisis in Hesse's spiritual world during the 1920s. Steppenwolf is a poetical self-portrait of a man who felt himself to be half-human and half-wolf. This Faust-like and magical story is evidence of Hesse's searching philosophy and extraordinary sense of humanity as he tells of the humanization of a middle-aged misanthrope. ", isbn: "9783518188125")
steppenwolf.author = hermann_hesse
steppenwolf.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718256/hermann_lqhg4i.jpg")
steppenwolf.photo.attach(io: file, filename: "#{steppenwolf.title}.jpg", content_type: 'image/jpg')

give_fuck = Book.new(title: "The Subtle Art of Not Giving a F*ck", description:"The book is a reaction to the self-help industry and what Manson saw as a culture of mindless positivity that is not practical or helpful for most people. Manson uses many of his own personal experiences to illustrate how life's struggles often give it more meaning, which, he argues, is a better approach than constantly trying to be happy.", isbn: "	9780062457714")
give_fuck.author = mark_manson
give_fuck.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717622/manson_uelkir.png")
give_fuck.photo.attach(io: file, filename: "#{give_fuck.title}.jpg", content_type: 'image/jpg')

meditations = Book.new(title: "Meditations", description:"New York Times best-selling author Neil Gaiman's transcendent series The Sandman is often hailed as the definitive Vertigo title and one of the finest achievements in graphic storytelling. Gaiman created an unforgettable tale of the forces that exist beyond life and death by weaving ancient mythology, folklore and fairy tales with his own distinct narrative vision. ", isbn: "8601200479058")
meditations.author = marcus_aurelius
meditations.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717399/Meditations_vhifdt.png")
meditations.photo.attach(io: file, filename: "#{meditations.title}.jpg", content_type: 'image/jpg')

promised_land = Book.new(title: "A promised Land", description:"A riveting, deeply personal account of history in the making???from the president who inspired us to believe in the power of democracy.", isbn: "9781524763169")
promised_land.author = barack_obama
promised_land.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717532/obama_rall9v.png")
promised_land.photo.attach(io: file, filename: "#{promised_land.title}.jpg", content_type: 'image/jpg')

harry_potter = Book.new(title: "Harry Potter and the Sorcerer's Stone", description:"It follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry's parents, but failed to kill Harry when he was just 15 months old.", isbn: "9780140136296")
harry_potter.author = jk_rowling
harry_potter.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718317/HP_yrydc2.jpg")
harry_potter.photo.attach(io: file, filename: "#{harry_potter.title}.jpg", content_type: 'image/jpg')

lie_statistics = Book.new(title: "How to Lie with Statistics", description:"The book is a brief, breezy illustrated volume outlining the misuse of statistics and errors in the interpretation of statistics, and how these errors may create incorrect conclusions.", isbn: "9780439362139")
lie_statistics.author = darrell_huff
lie_statistics.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717442/lie-statistics_mmvfyl.png")
lie_statistics.photo.attach(io: file, filename: "#{lie_statistics.title}.jpg", content_type: 'image/jpg')

nikola_biography = Book.new(title: "My Inventions: the autobiography of Nikola Tesla", description:"Nikola Tesla (1857-1943) was a revolutionary Serbian scientist who forever changed the scientific fields of electricity and magnetism. His research laid much of the groundwork for modern electrical and communication systems, and his impressive accomplishments include development of the alternating-current electrical system, radio, the Tesla coil transformer, wireless transmission, and fluorescent lighting.", isbn: "9781612930930")
nikola_biography.author = nikola_tesla
nikola_biography.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622761322/tesla_yqx4iy.jpg")
nikola_biography.photo.attach(io: file, filename: "#{nikola_biography.title}.jpg", content_type: 'image/jpg')

man_babylon = Book.new(title: "The Richest Man in Babylon", description:"Through these entertaining tales of merchants, tradesmen, and herdsmen, you'll learn how to keep more out what you earn; get out of debt; put your money to work; attract good luck; choose wise investments; and safeguard a lasting fortune.", isbn: "9781508524359")
man_babylon.author = george_clason
man_babylon.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717748/babylon_atiq6e.png")
man_babylon.photo.attach(io: file, filename: "#{man_babylon.title}.jpg", content_type: 'image/jpg')

shoe_dog = Book.new(title: "Shoe Dog: A Memoir by the Creator of Nike", description:"The memoir chronicles the history of Nike from its early struggles to its evolution into one of the world's most recognized and profitable companies. It also highlights certain parts of Phil Knight's life.", isbn: "9781471146725")
shoe_dog.author = phil_knight
shoe_dog.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717661/nike_ljo0a6.png")
shoe_dog.photo.attach(io: file, filename: "#{shoe_dog.title}.jpg", content_type: 'image/jpg')

productivity = Book.new(title: "Getting Things Done: The Art of Stress-Free Productivity", description:"Allen's premise is simple: our productivity is directly proportional to our ability to relax. Only when our minds are clear and our thoughts are organized can we achieve effective productivity and unleash our creative potential.", isbn: "9780142000281")
productivity.author = david_allen
productivity.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622717577/thingsdone_ehwdfb.png")
productivity.photo.attach(io: file, filename: "#{productivity.title}.jpg", content_type: 'image/jpg')

flo = Book.new(title: "In the Flo", description:"In the FLO presents a revolutionary 4-week solution to manage your energy and time according to your female biochemistry. By working with each phase, you???ll support your hormones, unlock peak creativity and performance, and avoid burnout. You???ll know exactly when to eat certain foods, clear your social calendar, or ask for a raise.", isbn: "9780062870490")
flo.author = alisa_vitti
flo.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718622/flo_tvzryj.jpg")
flo.photo.attach(io: file, filename: "#{flo.title}.jpg", content_type: 'image/jpg')

practicing_mind = Book.new(title: "The Practicing Mind", description:"In those times when we want to acquire a new skill or face a formidable challenge we hope to overcome, what we need most are patience, focus, and discipline, traits that seem elusive or difficult to maintain.", isbn: "9780977657209")
practicing_mind.author = thomas_sterner
practicing_mind.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718686/sterner_erkomv.jpg")
practicing_mind.photo.attach(io: file, filename: "#{practicing_mind.title}.jpg", content_type: 'image/jpg')

outliers = Book.new(title: "Outliers: The Story of Success", description:"Gladwell's book states early that success doesn't happen in a vacuum. It isn't based on intelligence, but on a variety of factors, and he uses multiple examples to demonstrate that we as a nation could have many more successful people in our country if we were to accept that it takes a village to make successes out of our children. In fact, he shows that hard work and opportunity in almost all cases are more important than intelligence.", isbn: "9780316196956")
outliers.author = malcolm_gladwell
outliers.save!
file = URI.open("https://res.cloudinary.com/drojktwel/image/upload/v1622718730/jiji_bgscek.jpg")
outliers.photo.attach(io: file, filename: "#{outliers.title}.jpg", content_type: 'image/jpg')


puts 'Finished!'



puts 'Creating reviews...'

jiwon_eun_review_meditations = Review.new(content: "It might have been written centuries ago, however it is still valid today. If you are interested in Stoicism, this book is for you. ", rating:5, top: true)
jiwon_eun_review_meditations.user = user_6_jiwon_eun
jiwon_eun_review_meditations.book = meditations
jiwon_eun_review_meditations.save!

jiwon_eun_review_practicing_mind = Review.new(content: "This book should be required reading in school. I am now part of a select group of people who are changing their lives for the better and many of them have read this book and rank it #1 in their collection.
It is well written, simple and straightforward. Easy but profound. Succinct but informative. From the first few pages you are absorbed, fascinated and filled with hope, then certainty: I WILL overcome this Resistance, this senseless fear.
Are you anxious? Depressed? Do you tend to do nothing? To waste time? T.Sterner demystifies, explains and destroys this resistance with concrete keys to overcome it. I strongly recommend it: you owe it to yourself.", rating: 5, top: true)
jiwon_eun_review_practicing_mind.user = user_6_jiwon_eun
jiwon_eun_review_practicing_mind.book = practicing_mind
jiwon_eun_review_practicing_mind.save!

jiwon_eun_review_lie_statistics = Review.new(content: "For anyone looking to better understand the tricks used by the media and marketing professionals, this is a great resource. No math required, this was written for the layperson. It's a quick and easy read. It is like putting on a pair of glasses that allow you to suddenly see clearly what you had never realised was blurred.", rating: 5, top: true)
jiwon_eun_review_lie_statistics.user = user_6_jiwon_eun
jiwon_eun_review_lie_statistics.book = lie_statistics
jiwon_eun_review_lie_statistics.save!

jiwon_eun_review_atomic_habits = Review.new(content: "The impact a 1% improvement per day can make may appear negligible at first, but Clear makes a compelling argument that in the case of habits, thinking small produces the biggest results over time. Habits are the compound interest of self-improvement.", rating: 5, top: true)
jiwon_eun_review_atomic_habits.user = user_6_jiwon_eun
jiwon_eun_review_atomic_habits.book = atomic_habits
jiwon_eun_review_atomic_habits.save!

jiwon_eun_review_give_fuck = Review.new(content: "The only redeeming value here is that it gives you a glimpse into the mind of a Narcissist. The writing is, at best, at a Middle School level and the depth of content is yet another level below that. It???s so shallow that it???s laughable.", rating: 1, top: true)
jiwon_eun_review_give_fuck.user = user_6_jiwon_eun
jiwon_eun_review_give_fuck.book = give_fuck
jiwon_eun_review_give_fuck.save!

marcelo_review_flo = Review.new(content: "My girlfriend asked me to order this for her and it changed her life! She is no longer taking pills for her period pains! Her skin is so much better now. And she has more energy. I didn't read this , but what's inside is a must read for all women! I was glad to support her with this.", rating: 5, top: true)
marcelo_review_flo.user = user_4_marcelo_giovannetti
marcelo_review_flo.book = flo
marcelo_review_flo.save!

jiwon_eun_review_flo = Review.new(content: "Even if you only read the chapter on nutrition and adjusting your diet to fit your cycle, this book is worth its weight in gold!", rating: 4, top: true)
jiwon_eun_review_flo.user = user_6_jiwon_eun
jiwon_eun_review_flo.book = flo
jiwon_eun_review_flo.save!

jiwon_eun_review_productivity = Review.new(content: "Great book, the method tested over several months allows undeniable progress in terms of organization and saves a considerable amount of time and lowers the stress level. However, as is often the case with American personal development books, there is a lot of time-wasting bla-bla when the content could be synthesized with 30% less sugarcoating.
In general, this is not annoying, however when the goal of the book is to save time..
", rating: 3, top: true)
jiwon_eun_review_productivity.user = user_6_jiwon_eun
jiwon_eun_review_productivity.book = productivity
jiwon_eun_review_productivity.save!

grace_lee_review_mind_numbers = Review.new(content: "It is a practical book that reflects the best knowledge about how our brains process things ??? both logically and creatively, from the details up AND from the ideas down. I strongly recommend it to anyone who wants to learn better.", rating: 4, top: true)
grace_lee_review_mind_numbers.user = user_5_grace_lee
grace_lee_review_mind_numbers.book = mind_numbers
grace_lee_review_mind_numbers.save!

grace_lee_review_shoe_dog = Review.new(content: "Shoe Dog is superbly written, and you???ll enjoy it if you just read it as a story. But if you???re in business, and especially if you???re starting a business and wanting to make it grow, this book should be on your must-read list.", rating: 5, top: true)
grace_lee_review_shoe_dog.user = user_5_grace_lee
grace_lee_review_shoe_dog.book = shoe_dog
grace_lee_review_shoe_dog.save!

grace_lee_review_flo = Review.new(content: "Very insightful and a different view of how to eat, work out, and plan your schedule based on menstrual cycle. I've been following the tips on this book and I've been feeling great.", rating: 5, top: true)
grace_lee_review_flo.user = user_5_grace_lee
grace_lee_review_flo.book = flo
grace_lee_review_flo.save!

mathieu_chaplain_promised_land = Review.new(content: "If Obama tells his story as POTUS, there is also Barack, the husband and father. There is an intimate side (not negligible) to this story showing us a man like any other, worried about his wife's well-being, concerned about the preservation of his two little girls' childhood; a man respectful of the institutions he tries to serve as best he can with his doubts and convictions, aware of his limits.
This book required no less than three translators who must be congratulated for the final result: serious, documented, precise, technical, and accessible at the same time.", rating: 4, top: true)
mathieu_chaplain_promised_land.user = user_7_mathieu_chaplain
mathieu_chaplain_promised_land.book = promised_land
mathieu_chaplain_promised_land.save!

marcelo_review_promised_land = Review.new(content: "I enjoyed reliving with Barack Obama all those years (the Arab springs, the ruin of Greece, the fall of Hosni Mubarak, the wars in Iraq and Afghanistan, Iran, Israel and Palestine, the death of Osama Bin Laden etc.) and his meetings with the various heads of state (Sarkozy, Merkel, Putin). Yes, this promised land is fascinating to read and I must admit that my admiration for the man, his humanity, his open-mindedness, his courage, have been reinforced.", rating: 5, top: true)
marcelo_review_promised_land.user = user_4_marcelo_giovannetti
marcelo_review_promised_land.book = promised_land
marcelo_review_promised_land.save!

grace_lee_promised_land = Review.new(content: "His book of memoirs, intelligent, lucid, caresses no one in the direction of the hair; he himself does not give in to the siren song of self-satisfaction... on the contrary!", rating: 5, top: true)
grace_lee_promised_land.user = user_5_grace_lee
grace_lee_promised_land.book = promised_land
grace_lee_promised_land.save!

grace_lee_practicing_mind = Review.new(content: "Whether you are an entrepreneur, a writer, a painter.. Read this book! It decodes what blocks all of us from achieving the goals we really care about.", rating: 5, top: true)
grace_lee_practicing_mind.user = user_5_grace_lee
grace_lee_practicing_mind.book = practicing_mind
grace_lee_practicing_mind.save!

audrey_lemoine_review_give_fuck = Review.new(content: "Save yourself some money and time. The only valuable lesson in this book is figure out the things that really matter, and not waste your time/energy getting upset about things that don't. There, done. Now you don't have to listen to a drunk dude rant about his explanation of buddhism and why he's so awesome.", rating:1, top: true)
audrey_lemoine_review_give_fuck.user = user_2_audrey_lemoine
audrey_lemoine_review_give_fuck.book = give_fuck
audrey_lemoine_review_give_fuck.save!

audrey_lemoine_flo = Review.new(content: "I came across this book while listening to a podcast. Every woman should read this book. It explains our biology so well in a beautiful way and helps be more in tune with our body and mind.", rating: 5, top: true)
audrey_lemoine_flo.user = user_2_audrey_lemoine
audrey_lemoine_flo.book = flo
audrey_lemoine_flo.save!

audrey_lemoine_shoe_dog = Review.new(content: "I enjoyed this very sincere account of the author and businessman who describes his adventure by always putting forward the human aspect. One is carried away by the story which is sometimes funny, very moving at the end and always interesting. I highly recommend this reading.", rating: 5, top: true)
audrey_lemoine_shoe_dog.user = user_2_audrey_lemoine
audrey_lemoine_shoe_dog.book = shoe_dog
audrey_lemoine_shoe_dog.save!

audrey_lemoine_promised_land = Review.new(content: "I learned a lot from this well written and insightful book, especially about the complex decision-making process concerning key domestic and foreign issues. I cannot help but add that reading this book reminded me how important it is to have political leaders with positive qualities such as honesty, integrity, compassion, competence, and willingness to put country over personal interest.", rating: 4, top: true)
audrey_lemoine_promised_land.user = user_2_audrey_lemoine
audrey_lemoine_promised_land.book = promised_land
audrey_lemoine_promised_land.save!

audrey_lemoine_outliers = Review.new(content: "Have you ever wondered why some people prevail and live remarkably successful lives while others fail to reach their full potential?
Malcolm Gladwell explores the different factors that decide the difference between successful and unsuccessful people. We learn what rock stars, geniuses and computer programmers have in common.", rating: 4, top: true)
audrey_lemoine_outliers.user = user_2_audrey_lemoine
audrey_lemoine_outliers.book = outliers
audrey_lemoine_outliers.save!

anne_review_give_fuck = Review.new(content: "It s a very surface level look at Stoicism and western Buddhism. It has some good things to say, and it's a decent introduction to some great concepts, but it's pretty cringe and misogynistic.", rating:2, top: true)
anne_review_give_fuck.user = user_1_anne_lepetit
anne_review_give_fuck.book = give_fuck
anne_review_give_fuck.save!

eliane_tang_review_meditations = Review.new(content: "It stands the test of time and is required reading in our social media age, where we mistakenly place importance on likes, clicks, and shares. Meditations provides practical information for those wishing to have a successful and fulfilling life.", rating:4, top: true)
eliane_tang_review_meditations.user = user_3_eliane_tang
eliane_tang_review_meditations.book = meditations
eliane_tang_review_meditations.save!

eliane_tang_review_atomic_habits = Review.new(content: "I will recommend this book for anyone who is eager to understand why habits are formed and how to nurture good habits and avoid bad ones.", rating:4, top: true)
eliane_tang_review_atomic_habits.user = user_3_eliane_tang
eliane_tang_review_atomic_habits.book = atomic_habits
eliane_tang_review_atomic_habits.save!

eliane_tang_productivity = Review.new(content: "The analysis of project management and the definition of projects is interesting, and most of the methods mentioned are relatively simple to implement. Too bad the author is of the 'say in 300 pages what you could say in 100 pages' school. Way too many frills.", rating:4, top: true)
eliane_tang_productivity.user = user_3_eliane_tang
eliane_tang_productivity.book = productivity
eliane_tang_productivity.save!

mathieu_chaplain_review_atomic_habits = Review.new(content: "I bought this book as I listened to an interview with James Clear on a podcast and found him interesting. His book, however was disappointing. It follows the typical self-help formula of common sense and old ideas combined with overly simplistic charts and celebrity anecdotes to remind you of what you already know.", rating: 3, top: true)
mathieu_chaplain_review_atomic_habits.user = user_7_mathieu_chaplain
mathieu_chaplain_review_atomic_habits.book = atomic_habits
mathieu_chaplain_review_atomic_habits.save!

mathieu_chaplain_review_meditations = Review.new(content: "There is no reason to feel unhappy, unfulfilled, or unappreciated and Meditations by Marcus Aurelius offers advice to anyone who is looking for self help, self love, and a rational way of directing life.", rating: 4, top: true)
mathieu_chaplain_review_meditations.user = user_7_mathieu_chaplain
mathieu_chaplain_review_meditations.book = meditations
mathieu_chaplain_review_meditations.save!

marcelo_review_steppenwolf = Review.new(content: "If you are an artist, introvert, or simply a deep thinker, this book is for you. Hesse articulates parts of my identity I never knew were there simply because I did not have his language to explain them to me.", rating: 4, top: true)
marcelo_review_steppenwolf.user = user_4_marcelo_giovannetti
marcelo_review_steppenwolf.book = steppenwolf
marcelo_review_steppenwolf.save!

marcelo_review_nike = Review.new(content: "Phil Knight had been an unfamiliar name to me before I picked up this memoir. He proves the American Dream is still alive. It's not nearly as straightforward or as black or white as one may imagine, but the opportunity is here!", rating: 4, top: true)
marcelo_review_nike.user = user_4_marcelo_giovannetti
marcelo_review_nike.book = shoe_dog
marcelo_review_nike.save!

marcelo_review_practicing_mind = Review.new(content: "In summary, if you have a creative, artistic, or business project that is close to your heart, and you are under the influence of a powerful self-sabotage, I recommend this extraordinary book that allowed me to refocus and renew my goal.", rating: 5, top: true)
marcelo_review_practicing_mind.user = user_4_marcelo_giovannetti
marcelo_review_practicing_mind.book = practicing_mind
marcelo_review_practicing_mind.save!

mathieu_chaplain_steppenwolf = Review.new(content: "It's a quick, easy read, and it includes many poetic passages, but it strikes me as philosophy or psychology lite. I recommend it to young intellectuals and artists.", rating: 4, top: true)
mathieu_chaplain_steppenwolf.user = user_7_mathieu_chaplain
mathieu_chaplain_steppenwolf.book = steppenwolf
mathieu_chaplain_steppenwolf.save!

mathieu_chaplain_give_fuck = Review.new(content: "Purchased it after reading all the positive reviews. Overrated and disappointing. ", rating: 1, top: true)
mathieu_chaplain_give_fuck.user = user_7_mathieu_chaplain
mathieu_chaplain_give_fuck.book = give_fuck
mathieu_chaplain_give_fuck.save!

anne_lepetit_review_meditations = Review.new(content: "I read the original of Meditations in Latin many years ago. This annotated edition is excellent for its expansion of historical context and detail. Marcus Aurelius???s ponderings are timeless and provide solace as well as human continuity from a vanished age.", rating: 4, top: true)
anne_lepetit_review_meditations.user = user_1_anne_lepetit
anne_lepetit_review_meditations.book = meditations
anne_lepetit_review_meditations.save!

johann_bzaih_give_fuck = Review.new(content: "If you find yourself addicted to social media, feel obliged to keep up with the Joneses, or think that celebrities are amazing role models and you want to change but don't know how, this book might help ground you. Otherwise I recommend giving it a pass - you probably know most of this stuff already and there are much funnier (and deeper) books out there if you're just looking for an entertaining writer who tells stories about their life while dropping a lot of f-bombs.", rating: 2, top: true)
johann_bzaih_give_fuck.user = user_8_johann_bzaih
johann_bzaih_give_fuck.book = give_fuck
johann_bzaih_give_fuck.save!

johann_bzaih_harry_potter = Review.new(content: "JK Rowling wrote a masterpiece and everyone will fall in love with the wizarding world. The Harry Potter books are a must for any fantasy, magical readers.", rating: 5, top: true)
johann_bzaih_harry_potter.user = user_8_johann_bzaih
johann_bzaih_harry_potter.book = harry_potter
johann_bzaih_harry_potter.save!

lili_nikola_tesla = Review.new(content: "Nikola Tesla is credited by many as the inventor of radio and should have received most of the credit for the development of modern electricity. Yet there is considerable confusion about his technical contributions and even more about his personal life. This book flows well and is an enjoyable quick read.", rating: 4, top: true)
lili_nikola_tesla.user = user_9_lili_ahenkan
lili_nikola_tesla.book = nikola_biography
lili_nikola_tesla.save!

johann_bzaih_shoe_dog = Review.new(content: "A book to read at all costs, to learn more about the creation of this empire that is Nike. Beautiful anecdotes, a life full of risk-taking and strokes of genius!", rating: 5, top: true)
johann_bzaih_shoe_dog.user = user_8_johann_bzaih
johann_bzaih_shoe_dog.book = shoe_dog
johann_bzaih_shoe_dog.save!

johann_bzaih_productivity = Review.new(content: "The GTD method is very understandable and easy to practice. It's changing my life. Love it. I recommend this book to anyone who wants to improve their life quality and achieve their goals.", rating: 5, top: true)
johann_bzaih_productivity.user = user_8_johann_bzaih
johann_bzaih_productivity.book = productivity
johann_bzaih_productivity.save!

eliane_tang_review_letting_go = Review.new(content: "This book changed my life and offers a process to free yourself from negative thinking that works.", rating: 5, top: true)
eliane_tang_review_letting_go.user = user_3_eliane_tang
eliane_tang_review_letting_go.book = letting_go
eliane_tang_review_letting_go.save!

eliane_tang_review_outliers = Review.new(content: "Malcolm Gladwell takes a deep dive into the rarely examined factors that give an edge to one set of gifted individuals over a similarly gifted set. Sometimes the factors are beyond the control of people, such as a team of hockey players who were born within a set few months of the year versus those athletes born in other months.", rating: 3, top: true)
eliane_tang_review_outliers.user = user_3_eliane_tang
eliane_tang_review_outliers.book = outliers
eliane_tang_review_outliers.save!

eliane_tang_review_nikola_tesla = Review.new(content: "I highly recommend this book for the insight it gives into the fascinating and prolific mind of one of the greatest and most unique figures of the 20th century whose inventions shaped our world.
", rating: 5, top: true)
eliane_tang_review_nikola_tesla.user = user_3_eliane_tang
eliane_tang_review_nikola_tesla.book = nikola_biography
eliane_tang_review_nikola_tesla.save!

eliane_tang_review_lie_statistics = Review.new(content: "The well-versed reader in stats will not find any new info but will still be pleased by the book's artful presentation of known ideas. Readers who are not so well-versed in stats should consider this book required reading because it succinctly explains how the information we consume every day may have been manipulated - intentionally or otherwise - to give us false impressions.", rating: 5, top: true)
eliane_tang_review_lie_statistics.user = user_3_eliane_tang
eliane_tang_review_lie_statistics.book = lie_statistics
eliane_tang_review_lie_statistics.save!

eliane_tang_promised_land = Review.new(content: "It is very interesting and exciting to read, but it is a big book: 890 pages! Not having all the necessary knowledge in economy or history or simply American civilization, I was a bit lost.", rating: 5, top: true)
eliane_tang_promised_land.user = user_3_eliane_tang
eliane_tang_promised_land.book = promised_land
eliane_tang_promised_land.save!

lili_practicing_mind = Review.new(content: "Excellent read, useful and good insights on how to be more effective. Recommended but one of this author's books is enough.", rating: 4, top: true)
lili_practicing_mind.user = user_9_lili_ahenkan
lili_practicing_mind.book = practicing_mind
lili_practicing_mind.save!

anne_harry_potter = Review.new(content: "I would definitely recommend this book because it keeps you reading without ever wanting to put the book down. By the end of the book you come to love the characters and you want to read more. You won't be disappointed because the second book in the series, Harry Potter and the Chamber of Secrets is just as great!", rating: 5, top: true)
anne_harry_potter.user = user_1_anne_lepetit
anne_harry_potter.book = harry_potter
anne_harry_potter.save!

puts 'Finished!'



for i in (1..6)
  sleep 0.5
  url = "http://www.revish.com/search/reviews/?minrating=4&offset=#{i*10}"
  html = Nokogiri::HTML(open(url).read)
  links = html.search(".searchresult h4 a")
  links.each_with_index do |res, index|
    puts "#{index.fdiv(links.count) * 100}%"
    book_comments = []
    review_url = 'http://www.revish.com' + res.attributes['href'].value
    review_html = Nokogiri::HTML(open(review_url).read)
    '------------------ BOOK TITLE -------------------'
    book_title = review_html.search("#content h2 a").text
    '------------------ BOOK DESCRIPTION -------------------'
    if review_html.search("#review p").first
      book_description = review_html.search("#review p").first.text
    end
    '----------------- ISBN ----------------'
    if review_html.search("#bookdata ul li").first
      book_isbn = review_html.search("#bookdata ul li").first.text
    end
    '----------------- BOOK COVER ------------------'
    if review_html.search("#bookdata .photo").first
      book_cover = review_html.search("#bookdata .photo").first.attributes['src'].value
    end
    '------------------ AUTHOR --------------------'
    author = review_html.search("#content .item .fn").text.split("by ")[1]
    if author
      a = author.split(" ")
      first_name = a[0]
      last_name = a[1]
    end
    '---------------- USER NICKNAME -------------------'
    if review_html.search(".reviewer a")
      user_nickname = review_html.search(".reviewer a").text
      user_avatar = review_html.search(".usericon.logo").first.attributes['src'].value
      user_avatar_url = /http/.match?(user_avatar) ? user_avatar : "http://www.revish.com#{user_avatar}"
    end
    '------------------ REVIEW -------------------'
    review_html.search(".comments dd").each do |comment|
      c = comment.text.gsub('\n\n', '')
      book_comments << c
    end
    book_comments.first

    unless book_title.nil? || book_description.nil? || book_isbn.nil? || book_cover.nil? || author.nil? || user_nickname.nil? || book_comments.empty?

    ratings = [1, 2, 3, 4, 5]
    top = [true, false]

    user = User.new(email: "user#{rand}@gmail.com", password: "123456", first_name: "#{user_nickname}", last_name:"")
    user.save!
    file = URI.open(user_avatar_url)
    user.photo.attach(io: file, filename: "#{user.email}.jpg", content_type: 'image/jpg')

    author = Author.new(first_name: "#{first_name}", last_name:"#{last_name}", bio: "")
    author.save!

    book = Book.new(title: "#{book_title}", description:"#{book_description}", isbn: "#{book_isbn}", author: author)
    book.save!
    file = URI.open(book_cover)
    book.photo.attach(io: file, filename: 'book_title.jpg', content_type: 'image/jpg')

    review = Review.new(content: book_comments.first, rating:"#{ratings.sample}", top: top.sample, user: user, book: book)
    review.save!
    end
  end
end

'---------- FAKE MATCHING -----------'

ratings = [1, 2, 3, 4, 5]
top = [true, false]
r_book = Book.find_by title: 'My Inventions: the autobiography of Nikola Tesla'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book.id)

book_reviewed1 = Book.find_by title: 'The Richest Man in Babylon'
review_1_user1 = Review.create(content: 'The ancient Babylonians were the first people to discover the universal laws of prosperity. In his classic bestseller, "The Richest Man in Babylon," George S. Clason reveals their secrets for creating, growing, and preserving wealth.', rating:"#{ratings.sample}", top: top.sample, user: user_1_anne_lepetit, book: book_reviewed1)

book_reviewed2 = Book.find_by title: 'Meditations'
review_2_user1 = Review.create(content: 'The essence of perennial Stoic wisdom in aphorisms of stunning insight and simplicity. Book offers thoroughly contemporary and pragmatic reflections on how best to live with serenity and joy.', rating:"#{ratings.sample}", top: top.sample, user: user_6_jiwon_eun, book: book_reviewed2)

book_reviewed3 = Book.find_by title: 'A mind for Numbers'
review_3_user1 = Review.create(content: 'Contrary to popular belief, math requires creative, as well as analytical, thinking. Most people think that there???s only one way to do a problem, when in actuality, there are often a number of different solutions???you just need the creativity to see them.', rating:"#{ratings.sample}", top: top.sample, user: user_1_anne_lepetit, book: book_reviewed3)

r_book_1_user1 = Book.find_by title: 'How to Lie with Statistics'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_1_user1.id)

r_book_2_user1 = Book.find_by title: 'A promised Land'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_2_user1.id)

r_book_3_user1 = Book.find_by title: 'Steppenwolf'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_3_user1.id)

r_book_4_user1 = Book.find_by title: 'Getting Things Done: The Art of Stress-Free Productivity'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_4_user1.id)

r_book_5_user1 = Book.find_by title: 'Outliers: The Story of Success'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_5_user1.id)

r_book_6_user1 = Book.find_by title: 'Shoe Dog: A Memoir by the Creator of Nike'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_6_user1.id)

r_book_7_user1 = Book.find_by title: 'In the Flo'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_7_user1.id)

r_book_8_user1 = Book.find_by title: 'The Practicing Mind'
reco_book = RecommendedBook.create(user_id: user_1_anne_lepetit.id, book_id: r_book_8_user1.id)

'------------------ finished -------------------'

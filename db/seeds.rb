require 'open-uri'
require 'nokogiri'

Review.destroy_all
Book.destroy_all
Author.destroy_all
User.destroy_all


puts 'Creating users...'
user_1_john_irving = User.new(email: "user1@gmail.com", password: "123456", first_name: "John", last_name:"Irving")
user_1_john_irving.save!

user_2_tori_amos = User.new(email: "user2@gmail.com", password: "123456", first_name: "Tori", last_name:"Amos")
user_2_tori_amos.save!

user_3_herbie_hancock = User.new(email: "user3@gmail.com", password: "123456", first_name: "Herbie", last_name:"Hancock")
user_3_herbie_hancock.save!

user_4_jack_dorsey = User.new(email: "user4@gmail.com", password: "123456", first_name: "Jack", last_name:"Dorsey")
user_4_jack_dorsey.save!

user_5_james_lebron = User.new(email: "user5@gmail.com", password: "123456", first_name: "James", last_name:"LeBron")
user_5_james_lebron.save!

user_6_tim_cook = User.new(email: "user6@gmail.com", password: "123456", first_name: "Tim", last_name:"Cook")
user_6_tim_cook.save!

user_7_mister_king = User.new(email: "user7@gmail.com", password: "123456", first_name: "mister", last_name:"King")
user_7_mister_king.save!

puts 'Finished!'


puts 'Creating authors...'
charles_dickens = Author.new(first_name: "Charles", last_name:"Dickens", bio: "(1812–1870). Charles Dickens was a British author who penned beloved classics such as ‘Hard Times,' 'A Christmas Carol,' 'David Copperfield' and 'Great Expectations.'")
charles_dickens.save!

john_lewis = Author.new(first_name: "John", last_name:"Lewis", bio: "(1940–2020). He was the chairman of the Student Nonviolent Coordinating Committee (SNCC) from 1963 to 1966. Lewis was one of the 'Big Six' leaders of groups who organized the 1963 March on Washington. He fulfilled many key roles in the civil rights movement and its actions to end legalized racial segregation in the United States.")
john_lewis.save!

paulo_coelho = Author.new(first_name: "Paulo", last_name:"Coelho", bio: "(1947–...). Paulo Coelho was born in Rio de Janeiro, Brazil, in August 1947. Before he became internationally known and a worldwide bestseller, he had to overcome many obstacles. ... Later, Paulo joined forces with rock star Raul Seixas and together they composed songs that revolutionized Brazilian rock music.")
paulo_coelho.save!

neil_gaiman = Author.new(first_name: "Neil", last_name:"Gaiman", bio: "(1960–...). Neil Gaiman, in full Neil Richard Gaiman, (born November 10, 1960, Portchester, Hampshire, England), British writer who earned critical praise and popular success with richly imagined fantasy tales that frequently featured a darkly humorous tone. Gaiman grew up in Sussex and attended Whitgift School in Croydon.")
neil_gaiman.save!

puts 'Finished!'



puts 'Creating books...'
great_expectations = Book.new(title: "Great Expectations", description:"Great Expectations, novel by Charles Dickens, first published serially in All the Year Round in 1860–61 and issued in book form in 1861. The classic novel was one of its author’s greatest critical and popular successes. It chronicles the coming of age of the orphan Pip while also addressing such issues as social class and human worth.", isbn: "9781503275188")
great_expectations.author = charles_dickens
great_expectations.save!

hard_times = Book.new(title: "Hard Times", description:"Hard Times is unusual in several ways. It is by far the shortest of Dickens's novels, barely a quarter of the length of those written immediately before and after it.[1] Also, unlike all but one of his other novels, Hard Times has neither a preface nor illustrations. Moreover, it is his only novel not to have scenes set in London.[1] Instead the story is set in the fictitious Victorian industrial Coketown, a generic Northern English mill-town, in some ways similar to Manchester, though smaller. Coketown may be partially based on 19th-century Preston.", isbn: "9781853262326")
hard_times.author = charles_dickens
hard_times.save!

march_trilogy = Book.new(title: "March (Trilogy)", description:"The March trilogy is an autobiographical black and white graphic novel trilogy about the Civil rights movement, told through the perspective of civil rights leader and U.S. Congressman John Lewis. The series is written by Lewis and Andrew Aydin, and illustrated and lettered by Nate Powell. The first volume, March: Book One, was published in August 2013, by Top Shelf Productions.[1] and the second volume, March: Book Two, was published in January 2015, with both volumes receiving positive reviews. March: Book Three was published in August 2016 along with a slipcase edition of the March trilogy.", isbn: "9781603093958")
march_trilogy.author = john_lewis
march_trilogy.save!

the_alchemist = Book.new(title: "The Alchemist", description:"The Alchemist follows the journey of an Andalusian shepherd boy named Santiago. Believing a recurring dream to be prophetic, he asks a Gypsy fortune teller in the nearby town about its meaning. The woman interprets the dream as a prophecy telling the boy that he will discover a treasure at the Egyptian pyramids.", isbn: "9780722532935")
the_alchemist.author = paulo_coelho
the_alchemist.save!

the_sandman = Book.new(title: "The Sandman", description:"New York Times best-selling author Neil Gaiman's transcendent series The Sandman is often hailed as the definitive Vertigo title and one of the finest achievements in graphic storytelling. Gaiman created an unforgettable tale of the forces that exist beyond life and death by weaving ancient mythology, folklore and fairy tales with his own distinct narrative vision. ", isbn: "8601200479058")
the_sandman.author = neil_gaiman
the_sandman.save!

puts 'Finished!'



puts 'Creating reviews...'
john_irving_review_great_expectations = Review.new(content: "That Pip imagines the cruel Miss Havisham is his benefactor, when all the while it is the good-hearted escaped convict Magwitch, is absolutely convincing, yet stunning. A salient point of the novel is how disappointing Pip is. He does not live up to his own expectations or ours", rating:5, top: true)
john_irving_review_great_expectations.user = user_1_john_irving
john_irving_review_great_expectations.book = great_expectations
john_irving_review_great_expectations.save!


tim_cook_review_march_trilogy = Review.new(content: "My hope is that everyone reads this, and I would love to see the day that it is required reading in every school.", rating:5, top: true)
tim_cook_review_march_trilogy.user = user_6_tim_cook
tim_cook_review_march_trilogy.book = march_trilogy
tim_cook_review_march_trilogy.save!

james_lebron_the_alchimist = Review.new(content: "As complex as that book is and as deep as that book is – it is so, so deep – I was able to figure out a way to translate it to my life at that point in time where I was like, oh I can remember when I was the 11-year-old kid and I was telling myself ‘Why me?’ some days and I was always telling myself, ‘OK, let’s change the narrative of why me, why us, why are we put in this position? Let’s change the narrative.’", rating:4, top: true)
james_lebron_the_alchimist.user = user_5_james_lebron
james_lebron_the_alchimist.book = the_alchemist
james_lebron_the_alchimist.save!

tori_amos_review_the_sandman = Review.new(content: "In 1990 I discovered Neil Gaiman’s comic book series The Sandman and wrote a song that references the Dream King and Neil. He called me up saying he really liked it, and we’ve been pals now for almost 30 years.", rating:4, top: true)
tori_amos_review_the_sandman.user = user_2_tori_amos
tori_amos_review_the_sandman.book = the_sandman
tori_amos_review_the_sandman.save!


# mister king reviews

john_irving_review_great_expectations = Review.new(content: "That Pip imagines the cruel Miss Havisham is his benefactor, when all the while it is the good-hearted escaped convict Magwitch, is absolutely convincing, yet stunning. A salient point of the novel is how disappointing Pip is. He does not live up to his own expectations or ours", rating:5, top: true)
john_irving_review_great_expectations.user = user_7_mister_king
john_irving_review_great_expectations.book = great_expectations
john_irving_review_great_expectations.save!


tim_cook_review_march_trilogy = Review.new(content: "My hope is that everyone reads this, and I would love to see the day that it is required reading in every school.", rating:5, top: true)
tim_cook_review_march_trilogy.user = user_7_mister_king
tim_cook_review_march_trilogy.book = march_trilogy
tim_cook_review_march_trilogy.save!

james_lebron_the_alchimist = Review.new(content: "As complex as that book is and as deep as that book is – it is so, so deep – I was able to figure out a way to translate it to my life at that point in time where I was like, oh I can remember when I was the 11-year-old kid and I was telling myself ‘Why me?’ some days and I was always telling myself, ‘OK, let’s change the narrative of why me, why us, why are we put in this position? Let’s change the narrative.’", rating:4, top: true)
james_lebron_the_alchimist.user = user_7_mister_king
james_lebron_the_alchimist.book = the_alchemist
james_lebron_the_alchimist.save!

tori_amos_review_the_sandman = Review.new(content: "In 1990 I discovered Neil Gaiman’s comic book series The Sandman and wrote a song that references the Dream King and Neil. He called me up saying he really liked it, and we’ve been pals now for almost 30 years.", rating:4, top: true)
tori_amos_review_the_sandman.user = user_7_mister_king
tori_amos_review_the_sandman.book = the_sandman
tori_amos_review_the_sandman.save!


puts 'Finished!'




url = 'http://www.revish.com/search/reviews/?minrating=4'
html = Nokogiri::HTML(open(url).read)

  html.search(".searchresult h4 a").each do |res|
    book_comments = []
    review_url = 'http://www.revish.com' + res.attributes['href'].value
    review_html = Nokogiri::HTML(open(review_url).read)
    p '------------------ BOOK TITLE -------------------'
    p book_title = review_html.search("#content h2 a").text
    p '------------------ BOOK DESCRIPTION -------------------'
    p book_description = review_html.search("#review p").first.text
    p '----------------- ISBN ----------------'
    p book_isbn = review_html.search("#bookdata ul li").first.text
    p '----------------- BOOK COVER ------------------'
    p book_cover = review_html.search("#bookdata .photo").first.attributes['src'].value
    p '------------------ AUTHOR --------------------'
    author = review_html.search("#content .item .fn").text.split("by ")[1]
    p first_name, last_name = author.split(" ")
    p '---------------- USER NICKNAME -------------------'
    p user_nickname = review_html.search(".reviewer a").text
    p '------------------ REVIEW -------------------'
    review_html.search(".comments dd").each do |comment|
      c = comment.text.gsub('\n\n', '')
      book_comments << c
    end
    p book_comments.first

    unless book_title.nil? || book_description.nil? || book_isbn.nil? || book_cover.nil? || author.nil? || user.nil? || user_nickname.nil? || book_comments.nil?

    ratings = [1, 2, 3, 4, 5]
    top = [true, false]

    user = User.new(email: "user#{rand}@gmail.com", password: "123456", first_name: "#{user_nickname}", last_name:"")
    user.save!

    author = Author.new(first_name: "#{first_name}", last_name:"#{last_name}", bio: "")
    author.save!

    book = Book.new(title: "#{book_title}", description:"#{book_description}", isbn: "#{book_isbn}", author: author)
    book.save!

    review = Review.new(content: "#{book_comments}", rating:"#{ratings.sample}", top: top.sample, user: user, book: book)
    review.save!

    end
  end

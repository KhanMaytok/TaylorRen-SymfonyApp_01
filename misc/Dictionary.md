book_article

    id	int(11)			
    title	varchar(100)			
    datein	date			
    uri	varchar(200)			
    
book_book

    id	varchar(255)			
	place	int(11)			
	publisher	int(11)			
	title	varchar(200)			
	author	varchar(200)			
	region	varchar(40)			
	copyrighter	varchar(100)			
	translated	tinyint(1)			
	purchdate	date			
	price	double			
	pubdate	date			
	printdate	date			
	ver	varchar(5)			
	deco	varchar(6)			
	kword	int(11)			
	page	int(11)			
	isbn	varchar(17)			
	category	varchar(12)			
	location	varchar(2)			
	intro	longtext			
	instock	tinyint(1)			

book_headline

	id	int(11)			
	bookid	varchar(255)			
	reviewtitle	varchar(100)			
	create_at	date			
	show	tinyint(1)			

book_place

	id	int(11)			
	name	varchar(255)			
	
book_publisher

	id	int(11)			
	name	varchar(255)			
	
book_review

	id	int(11)			
	headlineid	int(11)			
	title	varchar(100)			
	datein	date			
	URI	varchar(255)			

book_taglist

	tid	bigint(20)			
	bookid	varchar(255)			
	tag	varchar(20)			

book_visit

	bid	varchar(255)			
	visitwhen	bigint(20)			
	
lakers

	id	int(11)			
	year	int(11)			
	team	varchar(10)			
	selfscore	int(11)			
	oppscore	int(11)			
	dateplayed	date			
	winlose	varchar(1)			
	remark	longtext			

qotd

	id	int(11)			
	quote	longtext			
	source	varchar(200)			
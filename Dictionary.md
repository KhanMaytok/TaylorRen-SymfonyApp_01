book_article

    id	int(11)	否		
    title	varchar(100)	否		
    datein	date	否		
    uri	varchar(200)	否		
    
book_book

    id	varchar(255)	否		
	place	int(11)	是	NULL	
	publisher	int(11)	是	NULL	
	title	varchar(200)	否		
	author	varchar(200)	否		
	region	varchar(40)	否		
	copyrighter	varchar(100)	否		
	translated	tinyint(1)	否		
	purchdate	date	否		
	price	double	否		
	pubdate	date	否		
	printdate	date	否		
	ver	varchar(5)	否		
	deco	varchar(6)	否		
	kword	int(11)	否		
	page	int(11)	否		
	isbn	varchar(17)	否		
	category	varchar(12)	否		
	location	varchar(2)	否		
	intro	longtext	否		
	instock	tinyint(1)	否		

book_headline

	id	int(11)	否		
	bookid	varchar(255)	是	NULL	
	reviewtitle	varchar(100)	否		
	create_at	date	否		
	show	tinyint(1)	否		

book_place

	id	int(11)	否		
	name	varchar(255)	否		
	
book_publisher

	id	int(11)	否		
	name	varchar(255)	否		
	
book_review

	id	int(11)	否		
	headlineid	int(11)	否		
	title	varchar(100)	否		
	datein	date	否		
	URI	varchar(255)	否		

book_taglist

	tid	bigint(20)	否		
	bookid	varchar(255)	是	NULL	
	tag	varchar(20)	否		

book_visit

	bid	varchar(255)	否		
	visitwhen	bigint(20)	否		
	
lakers

	id	int(11)	否		
	year	int(11)	否		
	team	varchar(10)	否		
	selfscore	int(11)	否		
	oppscore	int(11)	否		
	dateplayed	date	否		
	winlose	varchar(1)	否		
	remark	longtext	否		

qotd

	id	int(11)	否		
	quote	longtext	否		
	source	varchar(200)	否		
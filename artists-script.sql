create database music_db;
use music_db;

create table Artists(
    id int not null auto_increment,
    name varchar(50),
    birthdate varchar(10),
    activeSince varchar(15),
    genres varchar(100),
    labels varchar(500),
    website varchar(100),
    image varchar(250),
    shortDescription varchar(500),
    primary key (id)
);

drop table artists;

insert into artists(name, birthdate, activeSince, genres, labels, website, image, shortDescription)
values
    ('Taylor Swift', '1989-12-13', '2004-present', 'Pop, Country, Folk, Alternative', 'Republic, Big Machine', 'https://taylorswift.com', 'https://wallpapers.com/images/high/taylor-swift-iphone-moy8xxn2f0uurydc.webp', 'An american singer-songwriter beginning their career at the age of 14 years old'),
    ('Ed Sheeran', '1991-02-17', '2004 - present', 'Pop,Folk-pop,Soft Rock', 'Asylum, Atlantic, Elektra', 'https://www.edsheeran.com/', 'https://wallpapers.com/images/hd/simple-portrait-ed-sheeran-my1srfk9q2l2rj9m.webp', 'An English singer-songwriter. Born in Halifax, West Yorkshire, and raised in Framlingham, Suffolk, he began writing songs around the age of eleven'),
    ('Justin Timberlake', '1981-01-31', '1992 - present', 'Pop,R&B', 'Jive, Zomba, RCA, Tennman', 'https://justintimberlake.com/', 'https://wallpapers.com/images/high/justin-timberlake-kneeling-on-grass-2tecc0vtfm10gwhs.webp', 'American singer-songwriter, and actor. He is one of the world´s best-selling music artists, with sales of over 88 million records.'),
    ('Lady Gaga', '1986-03-28', '2005 - present', 'Pop,Elektronica', 'Def Jam, Streamline, Kon Live, Interscope, Cherrytree[', 'https://www.ladygaga.com/#/', 'https://wallpapers.com/images/high/lady-gaga-1793-x-1080-picture-n60xw03bsay22bl4.webp', 'American singer-songwriter and actor. Born and raised in New York'),
    ('Elton John', '', '1969 - present', 'Rock,Glam Rock,Progressive Rock,Pop Rock', 'Chrysalis, IL, Philips Records, Mercury Records, Congress, Island Records, Geffen Records, Regal Zonophone, MCA Records, Universal Records, A&M Records, The Rocket Record Company, Uni, Cube Records, DJM Records, Def Jam Recordings, Paramount Records, Stateside Records', 'https://www.eltonjohn.com/', 'https://wallpapers.com/images/high/elton-john-blue-shades-portrait-my51lrb8frloplai.webp', 'An english singer-songwriter, pianist and komposer. He´s spold over 300 million album'),
    ('Katy Perry', '1984-10-25', '1997 - present', 'Pop,Rock,Dance,Electronic', 'Pamplin Music, The Island Def Jam Music Group, Columbia Records, Capitol Records', '', 'https://wallpapers.com/images/hd/short-haired-katy-perry-portrait-nuqcmn08mkf8g03o.webp', 'Born in Santa Barbara, California where she grew up singing in the local church '),
    ('Guns N´ Roses', '', '1985-present', 'Hard Rock,Heavy Metal', 'Geffen, UMG, Uzi Suicide, Black Frog', 'http://gunsnroses.com/', 'https://wallpapers.com/images/high/1985-metals-defining-year-guns-n-roses-9b75mha8dnsmz0jz.webp', 'An american hard rock band from Los Angeles consisting of vocalist Axl Rose, lead guitarist Slash, rhythm guitarist Izzy Stradin, bassist Duff McKagan and drummer Steven Adler'),
    ('Coldplay', '', '1997-present', 'Alternative,Pop Rock,Pop', 'Parlophone, Atlantic, Capitol, Warner Music, EMI, Fierce Panda', 'https://www.coldplay.com/', 'https://wallpapers.com/images/high/coldplay-british-rock-band-members-1jwx4g675bc9kh9w.webp', 'A British rockband consisting of pianist Chris Martin, guitarist Jonny Byckland, bassist Guy Berryman, drummer Will Champion and manager Phil Harvey')
;

insert into artists(name, birthdate, activeSince, genres, labels, website, image, shortDescription)
values ('Lady Gaga', '1986-03-28', '2005 - present', 'Pop,Elektronica', 'Def Jam, Streamline, Kon Live, Interscope, Cherrytree[', 'https://www.ladygaga.com/#/', 'https://wallpapers.com/images/high/lady-gaga-1793-x-1080-picture-n60xw03bsay22bl4.webp', 'American singer-songwriter and actor. Born and raised in New York');


select * from artists;

select *
from artists
where genres like '%Rock%';

update artists
set birthdate = '1947-03-25'
where id = 5;

select *
from artists
order by name;

select
    SUM(IF(genres LIKE '%pop%', 1, 0)) AS 'pop'
from
    artists;

delete from artists
       where id = 4;





INSERT INTO users (username, email, password)
VALUES ('joe', 'josiah.thomas.cuthbert@gmail.com', 'codeup' ),
('anthony', 'email', 'codeup' ),
('john', 'email', 'codeup' );

INSERT INTO bats (user_id, title, image_url, start_year, end_year, description)
VALUES (1, 'The Original Batman', 'sample_url', 1990, 1999, 'Created in 1940 by Bob Kane, this is the original batman'),
       (1, 'Adam West\'s Batman', 'sample_url', 1990, 1999,'Adam West played Batman from 1966-1968 on the \'Batman\' TV Series'),
       (3, 'Christian Bale\'s Batman', 'sample_url', 1990, 1999,'Christian Bale played Batman in the critically acclaimed Christopher Nolan-directed films from 2005-2012');

insert into bats (user_id, title, description)
values  (1, 'Adam West\'s Batman', 'Adam West played Batman from 1966-1968 on the \'Batman\' TV Series');

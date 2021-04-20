
 

create table movie (
	mov_id        integer        	not null,
    mov_title		char(50)    	null,
    mov_year       integer     		null,
    mov_time       integer     		null,
    mov_lang       char(50)    		not null,
    mov_dt_rel      date        	null,
    mov_rel_country  char(5)    	null,
    
constraint  mov_id_Pk    primary Key(mov_id)
);

create table actor(
	act_id               integer   not null,
    act_fname		     char(20)  not null,
    act_lname         char(20)  not null,
    act_gender           char(1)   not null,
    
constraint  act_id_Pk    primary key(act_id)
);

create table director(
	dir_id        integer     not null,
    dir_fname     char(20)    not null,
	dir_lname     char(20)    not null,
constraint dir_id_Pk   primary Key(dir_id)
);

create table movie_direction(
	dir_id           integer        not null,
    mov_id           integer           not null
);

create table reviewer(
	rev_id        integer     not null,
    rev_name      char(30)    not null,
constraint rev_id_Pk   primary Key(rev_id)    
);

create table movie_cast(
	act_id               integer           not null,
    mov_id               integer           not null,
    role                 char(30)          not null
);

create table rating(
	  mov_id               integer           not null,
      rev_id            integer           not null,
      rev_star          integer           not null,
      num_of_rating        integer           not null
      
);

create table genres(
	genres_id           integer           not null,
    genres_title        char(20)          not null,
constraint genres_id_Pk   primary Key(genres_id)
    
);

create table movie_genres(
	genres_id           integer           not null,
	movie_id            integer           not null
    
);
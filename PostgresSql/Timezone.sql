select * from pg_timezone_names;

select * from  pg_timezone_abbrevs;

alter table test_time
add column endstamp timestamp with time zone;

alter table test_time
add column endtime time with time zone;

insert into test_time
(endstamp,endtime)
values ('01/20/2018 10:30:00 us/pacific', '10:30:00+5');
insert into test_time (endstamp,endtime)
values ('06/20/2018 10:30:00 us/pacific', '10:30:00+5');

select * from test_time;
show time zone;
select * from test_time;
set time zone 'us/pacific';
select * from test_time;
show datestyle;

set datestyle = 'iso,dmy';

set datestyle = 'iso,mdy';


create table test_time (
	startdate date,
	startstamp timestamp,
	starttime time
);

/*insert into test_time (startdate, startstamp,starttime)
values ('epoch'::abstime,'infinity'::abstime,'allballs');*/


select * from test_time;

/*insert into test_time (startdate, startstamp)
values ('now'::abstime,'today'::abstime);*/


select * from test_time;
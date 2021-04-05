
select * from data_src where journal = 'Food Chemistry';


select * from nutr_def where nutrdesc = 'Retinol';

select * from food_des where manufacname = 'Kellogg, Co.';


select count(*) from data_src where year > 2000;


select count(*) from food_des where fat_factor<4;


select * from weight where gm_wgt = 190;


select count(*)
from food_des where pro_factor > 1.5 and fat_factor < 5;


select * from data_src where year=1990 and journal='Cereal Foods World';


select count(*) from weight where gm_wgt > 150 and gm_wgt < 200;


select *
from nutr_def where units = 'kj' or units='kcal';


select * from data_src where year=2000 or journal='Food Chemistry';

select fdgrp_cd from fd_group where fddrp_desc = 'Breakfast Cereals';

select count(*) from food_des where NOT fdgrp_cd = '0800';

select * from data_src where (year >= 1990 and year <=2000) and (journal = 'J. Food Protection' OR Journal='Food Chemistry');

select count(*) from weight where gm_wgt BETWEEN 50 and 75;

select * from data_src where year in (1960,1970,1980,1990,2000);
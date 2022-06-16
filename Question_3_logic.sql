select country_name,Year,population_value,
10*(case when year=2020 then population_value else 0 end - case when year=1960 then population_value else 0 end )/case when year=1960 then population_value else 1 end
from world_population where year in (2020,1960)
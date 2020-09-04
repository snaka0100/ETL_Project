select hap.country,hap.happines_score, hap.gdp_percapita, hap.family, hap.health_life_expectancy, hap.freedom, hap.government_trust, 
alc.beer_per_capita, alc.spirit_per_capita, alc.wine_per_capita, hom.homicides_2017, lib.number_of_libraries
from world_happiness hap
join world_alcohol alc
on hap.country = alc.country
join world_homicides hom
on hap.country = hom.country
join world_libraries lib
on hap.country = lib.country


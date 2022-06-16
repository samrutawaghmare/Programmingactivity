USE [Amruta]
GO

/****** Object:  StoredProcedure [dbo].[highest_lowest_value_q4]    Script Date: 12-06-2022 17:23:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[highest_lowest_value_q4] @starting_year int, @ending_year int
as

select * from world_population where population_value in (
select max(population_value) from world_population
group by year )
and  year between @starting_year and @ending_year

select * from world_population where population_value in (
select min(population_value) from world_population
group by year )
and year between @starting_year and @ending_year

GO



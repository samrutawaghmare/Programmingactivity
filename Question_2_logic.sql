USE [Amruta]
GO

/****** Object:  StoredProcedure [dbo].[highest_lowest_value]    Script Date: 12-06-2022 17:22:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[highest_lowest_value] @year int
as

select * from world_population where population_value in (
select max(population_value) from world_population
group by year )
and year=@year

select * from world_population where population_value in (
select min(population_value) from world_population
group by year )
and year=@year
GO



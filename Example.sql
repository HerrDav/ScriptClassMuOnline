--Query parameter will always be the Character's name

SELECT 
	AccountId, 
	Name, 
	dbo.GetShortClass(Name) as ShortNameClass, 
	dbo.GetNameClass(Name) as LongNameClass 
	FROM 
		[Character]
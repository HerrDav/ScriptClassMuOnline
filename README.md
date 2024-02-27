
# Mu Online Character Class Lookup

## Overview
This project provides a SQL Server function designed to retrieve the full name of the character class based on the character's name in a Mu Online server database. It is designed to be adaptable for future versions of Mu Online, including Season 19 and beyond.
## Function Details
- **Function Name:** `GetNameClass` and `GetShortClass`

- **Parameters:** `@Nome` *(Type: NVARCHAR(10)) - The name of the character for which the class name is to be retrieved.*

- **Return Type:** `NVARCHAR(60)` - *Name of the character class.*

**Description:** This function takes the character name as input and queries the Mu Online server database to retrieve the corresponding class name based on the character's name.
## Supported Versions
This project is compatible with the following versions of Mu Online:

**IGCN**
- Season 18
## Usage
To use this function, simply call it with the character name as the parameter, and it will return name of the character's class.

```sql
SELECT 
	AccountId, 
	Name, 
	dbo.GetShortClass(Name) as ShortNameClass, 
	dbo.GetNameClass(Name) as LongNameClass 
	FROM 
		[Character]
```
**Note:**
- Make sure to replace *'CharacterName'* with the actual name of the character whose class you want to retrieve.
- This function assumes that the character table is named CHARACTER in the Mu Online server database.
## Author
- **Author:** HerrDav

*Feel free to use and modify this function according to your needs. If you have any questions or suggestions, feel free to open an issue or contribute to the project.*

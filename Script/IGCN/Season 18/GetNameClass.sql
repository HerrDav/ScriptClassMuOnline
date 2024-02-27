-- =============================================
-- Author:		<Author,HerrDav,HerrDav>
-- Description:	<Função para Capturar o nome completo da Classe do usuário (Parametro e o nome do usuário)>
-- =============================================
--
CREATE OR ALTER FUNCTION [dbo].[GetNameClass](@Nome NVARCHAR(10))
RETURNS NVARCHAR(60)
AS
BEGIN
    DECLARE @NameClass NVARCHAR(60)

    SELECT @NameClass = 
        CASE
		WHEN Class = 0 THEN 'Dark Wizard'
		WHEN Class = 1 THEN 'Soul Master'
		WHEN Class = 3 THEN 'Grand Master'
		WHEN Class = 7 THEN 'Soul Wizard'
		WHEN Class = 16 THEN 'Dark Knight'
		WHEN Class = 17 THEN 'Blade Knight'
		WHEN Class = 19 THEN 'Blade Master'
		WHEN Class = 23 THEN 'Dragon Knight'
		WHEN Class = 32 THEN 'Fairy Elf'
		WHEN Class = 33 THEN 'Muse Elf'
		WHEN Class = 35 THEN 'High Elf'
		WHEN Class = 39 THEN 'Noble Elf'
		WHEN Class = 48 THEN 'Magic Gladiator'
		WHEN Class = 50 THEN 'Duel Master'
		WHEN Class = 54 THEN 'Magic Knight'
		WHEN Class = 64 THEN 'Dark Lord'
		WHEN Class = 66 THEN 'Lord Emperor'
		WHEN Class = 70 THEN 'Empire Lord'
		WHEN Class = 80 THEN 'Summoner'
		WHEN Class = 81 THEN 'Bloody Summoner'
		WHEN Class = 83 THEN 'Dimension Master'
		WHEN Class = 87 THEN 'Dimension Summoner'
		WHEN Class = 96 THEN 'Rage Fighter'
		WHEN Class = 98 THEN 'Fist Master'
		WHEN Class = 102 THEN 'Fist Blaze'
		WHEN Class = 112 THEN 'Grow Lancer'
		WHEN Class = 114 THEN 'Mirage Lancer'
		WHEN Class = 118 THEN 'Shining Lancer'
		WHEN Class = 128 THEN 'Rune Wizard'
		WHEN Class = 129 THEN 'Rune Spell Master'
		WHEN Class = 131 THEN 'Gran Rune Master'
		WHEN Class = 135 THEN 'Majestic Rune Wizard'
		WHEN Class = 144 THEN 'Slayer'
		WHEN Class = 145 THEN 'Royal Slayer'
		WHEN Class = 147 THEN 'Master Slayer'
		WHEN Class = 151 THEN 'Slaughterer'
		WHEN Class = 160 THEN 'Gun Crusher'
		WHEN Class = 161 THEN 'Gun Breaker'
		WHEN Class = 163 THEN 'Master Gun Breaker'
		WHEN Class = 167 THEN 'Hightest Gun Crusher'
		WHEN Class = 176 THEN 'White Mage Kundun'
		WHEN Class = 177 THEN 'Light Master'
		WHEN Class = 179 THEN 'Shine Wizard'
		WHEN Class = 183 THEN 'Luminous Wizard'
		WHEN Class = 192 THEN 'Lemuria Mage'
		WHEN Class = 193 THEN 'Warmage'
		WHEN Class = 195 THEN 'Archmage'
		WHEN Class = 199 THEN 'Mystic Mage'
		WHEN Class = 208 THEN 'Ilusion Knight'
		WHEN Class = 209 THEN 'Mirage Knight'
		WHEN Class = 211 THEN 'Ilusion Master'
		WHEN Class = 215 THEN 'Mystic Knight'
		END
    FROM CHARACTER WITH(NOLOCK)
    WHERE NAME = @Nome

    RETURN @NameClass
END;
GO



-- =============================================
-- Author:		<Author,HerrDav,HerrDav>
-- Description:	<Função para Capturar o nome pequeno da Classe do usuário (Parametro e o nome do usuário)>
-- =============================================

CREATE OR ALTER FUNCTION [dbo].[GetShortClass](@Nome NVARCHAR(10))
RETURNS NVARCHAR(10)
AS
BEGIN
    DECLARE @ShortClass NVARCHAR(10)

    SELECT @ShortClass = 
        CASE
            WHEN Class = 0 THEN 'DW'
            WHEN Class = 1 THEN 'SM'
            WHEN Class = 3 THEN 'GM'
            WHEN Class = 7 THEN 'SW'
            WHEN Class = 16 THEN 'DK'
            WHEN Class = 17 THEN 'BK'
            WHEN Class = 19 THEN 'BM'
            WHEN Class = 23 THEN 'DT'
            WHEN Class = 32 THEN 'FE'
            WHEN Class = 33 THEN 'ME'
            WHEN Class = 35 THEN 'HE'
            WHEN Class = 39 THEN 'NE'
            WHEN Class = 48 THEN 'MG'
            WHEN Class = 50 THEN 'DM'
            WHEN Class = 54 THEN 'MK'
            WHEN Class = 64 THEN 'DL'
            WHEN Class = 66 THEN 'LE'
            WHEN Class = 70 THEN 'EL'
            WHEN Class = 80 THEN 'SU'
            WHEN Class = 81 THEN 'BS'
            WHEN Class = 83 THEN 'DIM'
            WHEN Class = 87 THEN 'DS'
            WHEN Class = 96 THEN 'RF'
            WHEN Class = 98 THEN 'FM'
            WHEN Class = 102 THEN 'FB'
            WHEN Class = 112 THEN 'GL'
            WHEN Class = 114 THEN 'ML'
            WHEN Class = 118 THEN 'SL'
            WHEN Class = 128 THEN 'RW'
            WHEN Class = 129 THEN 'RS'
            WHEN Class = 131 THEN 'GRM'
            WHEN Class = 135 THEN 'GRM'
            WHEN Class = 144 THEN 'SY'
            WHEN Class = 145 THEN 'RSY'
            WHEN Class = 147 THEN 'MS'
            WHEN Class = 151 THEN 'ST'
            WHEN Class = 160 THEN 'GC'
            WHEN Class = 161 THEN 'GB'
            WHEN Class = 163 THEN 'GBM'
            WHEN Class = 167 THEN 'HGC'
            WHEN Class = 176 THEN 'LIW'
            WHEN Class = 177 THEN 'LIM'
            WHEN Class = 179 THEN 'SHW'
            WHEN Class = 183 THEN 'LUW'
            WHEN Class = 192 THEN 'LEM'
            WHEN Class = 193 THEN 'WAM'
            WHEN Class = 195 THEN 'ARM'
            WHEN Class = 199 THEN 'MYM'
            WHEN Class = 208 THEN 'ILK'
            WHEN Class = 209 THEN 'MGK'
            WHEN Class = 211 THEN 'ILM'
            WHEN Class = 215 THEN 'MYK'
        END
    FROM CHARACTER WITH(NOLOCK)
    WHERE NAME = @Nome

    RETURN @ShortClass
END;
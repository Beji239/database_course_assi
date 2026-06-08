PRINT 'Hello World!'

DECLARE @myVariable INT
SET @myVariable = 6
PRINT @myVariable 

DECLARE @Var1 INT, @Var2 INT
SET @Var1 = 3
SET @Var2 = 5

PRINT 'Before This Course I could NOT care less for SQL, MSQL, and TSQL' + ' But life and TECH Academy Happened' + ' and what is up capital Letters in SQL?'

PRINT 'I have ' + CONVERT(VARCHAR(50),@Var1) + ' dollars...'
PRINT 'I have ' + CONVERT(VARCHAR(50),@Var1) +  CHAR(13) + ' dollars...'
PRINT  CHAR(9) + 'I have ' + CONVERT(VARCHAR(50),@Var1) +  CHAR(13) + ' dollars...'

DECLARE @Var3 INT, @Var4 INT
SET @Var3 = 3
SET @Var4 = 5
PRINT 'Variable 3 = ' + CONVERT(VARCHAR(5),@Var3) + CHAR(13) + 'Variable 4 = ' + CONVERT(VARCHAR(5),@Var4) + CHAR(13) + 'Total: '
PRINT @Var3 + @Var4 


IF @Var3 <= 3 
    BEGIN 
	    PRINT 'Variable 3 <= ' + CONVERT(varchar(5),@Var3) + CHAR(13)
	END
ELSE
    BEGIN
	    PRINT 'Variable 3 is not < ' + CONVERT(varchar(5),@Var3) + CHAR(13)
	END
IF @Var3 < 2
    BEGIN
        PRINT '@Var3 < 2'
    END
ELSE IF @Var3 > 1 AND @Var3 < 3
    BEGIN
        PRINT '@var3 > 1 AND @var3 < 3'
    END
ELSE IF @Var3 = 4 OR @Var3 < 6
    BEGIN
        PRINT '@var3 = 4 OR @var3 < 6'
    END
ELSE
    PRINT '@var3 does not qualify!'

/* This is a silent message */
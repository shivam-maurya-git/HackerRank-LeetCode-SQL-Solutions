-- https://www.hackerrank.com/challenges/print-prime-numbers

DECLARE @i INT = 3;
DECLARE @f VARCHAR(8000);
SET @f = "2&";
WHILE @i<=1000
BEGIN
   DECLARE @j INT;
   SET @j = CEILING(SQRT(@i));
   WHILE @j>1
   BEGIN
     IF (@i % @j = 0)
     BEGIN
        BREAK;
     END
     ELSE
     IF @j=2
     SET @f = @f+CAST(@i as VARCHAR) + "&";
     SET @j = @j - 1;
   END
   SET @i = @i + 1;

END;
SET @f = SUBSTRING(@f,1, LEN(@f)-1);
PRINT @f
CREATE PROCEDURE bronze.sp_full_load_media_data
    @FilePath NVARCHAR(255),
    @TargetTable NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Dynamic SQL to Truncate and Bulk Insert for Full Monthly Load
    DECLARE @SQLQuery NVARCHAR(MAX);

    -- 1. Truncate Target Table (Full Load Strategy)
    SET @SQLQuery = 'TRUNCATE TABLE ' + @TargetTable;
    EXEC sp_executesql @SQLQuery;

    -- 2. Bulk Insert Data
    SET @SQLQuery = '
        BULK INSERT ' + @TargetTable + '
        FROM ''' + @FilePath + '''
        WITH (
            FORMAT = ''CSV'',
            FIRSTROW = 2,
            FIELDTERMINATOR = '','',
            ROWTERMINATOR = ''\n'',
            TABLOCK
        );
    ';
    EXEC sp_executesql @SQLQuery;
END;

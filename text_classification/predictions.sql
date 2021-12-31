SELECT * FROM ML.PREDICT(MODEL advdata.txtclass, (
    SELECT 'goverment' AS word1, 'shutdown' AS word2,'leaves' AS word3,
     'workers' AS word4, 'reeling' AS word5
    UNION ALL SELECT 'unlikely', 'partnership','in','house','gives'
    UNION ALL SELECT 'fitbit','s','fitness','tracker', 'is'
    UNION ALL SELECT 'dowloading', 'the','android','studio','project'
    UNION ALL SELECT 'ethiopian', 'airlines','pilots','followed','boeings'
    UNION ALL SELECT 'disaster', 'occured','deads', 'damage', 'circumstances'
)
)
CREATE OR REPLACE FUNCTION get_data()
RETURNS TABLE ("Country/Region" character varying, "Confirmed" INT, "Deaths" INT)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY 
    SELECT country_wise_latest."Country/Region", 
           country_wise_latest."Confirmed", 
           country_wise_latest."Deaths" 
    FROM country_wise_latest;
END;
$$;


SELECT * FROM get_data();

SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'country_wise_latest';
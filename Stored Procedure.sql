CREATE OR REPLACE PROCEDURE get_country_data()
LANGUAGE plpgsql
AS $$
DECLARE 
    record_row RECORD;
BEGIN
    -- Insert a new record
    INSERT INTO country_wise_latest ("Country/Region", "Confirmed", "Deaths") 
    VALUES ('Testland', 50000, 2000);
    
    -- Loop through the table and print records
    FOR record_row IN SELECT * FROM country_wise_latest LOOP
        RAISE NOTICE 'Country: %, Confirmed: %, Deaths: %', 
            record_row."Country/Region", record_row."Confirmed", record_row."Deaths";
    END LOOP;
END;
$$;




call get_country_data()


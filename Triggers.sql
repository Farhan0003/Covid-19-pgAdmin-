
CREATE OR REPLACE FUNCTION prevent_operations()
RETURNS TRIGGER AS $$
BEGIN
    RAISE EXCEPTION 'Insert, Update, or Delete operation detected!';
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER country_wise_latest_trigger
BEFORE INSERT OR UPDATE OR DELETE
ON country_wise_latest
FOR EACH ROW
EXECUTE FUNCTION prevent_operations();

INSERT INTO country_wise_latest ("Country/Region", "Confirmed", "Deaths")
VALUES ('Test Country', 1000, 50);



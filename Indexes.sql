EXPLAIN ANALYZE
SELECT * FROM country_wise_latest WHERE "Country/Region" = 'India';

CREATE INDEX idx_country_region ON country_wise_latest ("Country/Region");
CREATE INDEX idx_confirmed ON country_wise_latest ("Confirmed");
CREATE INDEX idx_deaths ON country_wise_latest ("Deaths");

SELECT * FROM country_wise_latest WHERE "Country/Region" = 'India';

CREATE INDEX idx_province_state ON covid_19_clean_complete (province_state);
CREATE INDEX idx_country_region ON covid_19_clean_complete (country_region);
CREATE INDEX idx_date ON covid_19_clean_complete (date);

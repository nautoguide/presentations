
SELECT
		distinct code,
		ST_GEOMFROMEWKT('SRID=4326;POINT(0 0)') as geom,

		 sum(REPLACE("2016", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2016", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2016,
        sum(REPLACE("2017", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2017", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2017,
        sum(REPLACE("2018", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2018", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2018,
        sum(REPLACE("2019", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2019", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2019,
        sum(REPLACE("2020", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2020", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2020,
        sum(REPLACE("2021", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2021", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2021,
        sum(REPLACE("2022", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2022", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2022,
        sum(REPLACE("2023", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2023", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2023,
        sum(REPLACE("2024", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2024", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2024,
        sum(REPLACE("2025", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2025", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2025,
        sum(REPLACE("2026", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2026", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2026,
        sum(REPLACE("2027", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2027", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2027,
        sum(REPLACE("2028", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2028", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2028,
        sum(REPLACE("2029", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2029", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2029,
        sum(REPLACE("2030", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2030", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2030,
        sum(REPLACE("2031", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2031", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2031,
        sum(REPLACE("2032", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2032", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2032,
        sum(REPLACE("2033", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2033", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2033,
        sum(REPLACE("2034", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2034", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2034,
        sum(REPLACE("2035", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2035", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2035,
        sum(REPLACE("2036", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2036", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2036,
        sum(REPLACE("2037", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2037", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2037,
        sum(REPLACE("2038", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2038", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2038,
        sum(REPLACE("2039", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('20-24', '25-29','30-34','35-39','40-44', '45-49','50-54', '55-59','60-64','65-69','70-74','75-79','80-84','85-89', '90+')) OVER (PARTITION BY code) +
        (sum(REPLACE("2039", ',','')::NUMERIC) FILTER (WHERE "age group" IN ('15-19')) OVER (PARTITION BY code)) * 0.4 AS voters_2039

FROM local_authority_population_forecasts
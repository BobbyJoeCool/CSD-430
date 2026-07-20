-- ============================================================
-- Author:      Robert Breutzmann
-- Date:        2026-06-27
-- Assignment:  CSD-430 Module 5/6 Assignment 5.2/6.2
-- Description: Creates and populates the rBreutzmannStatesdata
--              table inside the CSD430 database with all 50
--              U.S. states, then grants access to student1.
-- ============================================================

-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS CSD430;

-- Grant access to the student1 user
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

-- Switch to the CSD430 database
USE CSD430;

-- Drop the table if it exists so the script is re-runnable
DROP TABLE IF EXISTS rBreutzmannStatesdata;

-- ============================================================
-- Table: rBreutzmannStatesdata
-- Fields:
--   state_abbr       - Two-letter postal abbreviation (primary key)
--   state_name       - Full name of the state
--   capital          - Name of the state capital city
--   date_admitted    - Date the state was admitted to the Union
--   approx_pop_2020  - Approximate 2020 Census population
-- ============================================================
CREATE TABLE rBreutzmannStatesdata (
    state_abbr      CHAR(2)      NOT NULL,
    state_name      VARCHAR(50)  NOT NULL,
    capital         VARCHAR(50)  NOT NULL,
    date_admitted   DATE         NOT NULL,
    approx_pop_2020 INT          NOT NULL,
    PRIMARY KEY (state_abbr)
);

-- ============================================================
-- Populate: all 50 U.S. states
-- ============================================================
INSERT INTO rBreutzmannStatesdata
    (state_abbr, state_name, capital, date_admitted, approx_pop_2020)
VALUES
    ('AL', 'Alabama',        'Montgomery',   '1819-12-14',  5024279),
    ('AK', 'Alaska',         'Juneau',        '1959-01-03',   733391),
    ('AZ', 'Arizona',        'Phoenix',       '1912-02-14',  7151502),
    ('AR', 'Arkansas',       'Little Rock',   '1836-06-15',  3011524),
    ('CA', 'California',     'Sacramento',    '1850-09-09', 39538223),
    ('CO', 'Colorado',       'Denver',        '1876-08-01',  5773714),
    ('CT', 'Connecticut',    'Hartford',      '1788-01-09',  3605944),
    ('DE', 'Delaware',       'Dover',         '1787-12-07',   989948),
    ('FL', 'Florida',        'Tallahassee',   '1845-03-03', 21538187),
    ('GA', 'Georgia',        'Atlanta',       '1788-01-02', 10711908),
    ('HI', 'Hawaii',         'Honolulu',      '1959-08-21',  1455271),
    ('ID', 'Idaho',          'Boise',         '1890-07-03',  1839106),
    ('IL', 'Illinois',       'Springfield',   '1818-12-03', 12812508),
    ('IN', 'Indiana',        'Indianapolis',  '1816-12-11',  6785528),
    ('IA', 'Iowa',           'Des Moines',    '1846-12-28',  3190369),
    ('KS', 'Kansas',         'Topeka',        '1861-01-29',  2937880),
    ('KY', 'Kentucky',       'Frankfort',     '1792-06-01',  4505836),
    ('LA', 'Louisiana',      'Baton Rouge',   '1812-04-30',  4657757),
    ('ME', 'Maine',          'Augusta',       '1820-03-15',  1362359),
    ('MD', 'Maryland',       'Annapolis',     '1788-04-28',  6177224),
    ('MA', 'Massachusetts',  'Boston',        '1788-02-06',  7029917),
    ('MI', 'Michigan',       'Lansing',       '1837-01-26', 10077331),
    ('MN', 'Minnesota',      'Saint Paul',    '1858-05-11',  5706494),
    ('MS', 'Mississippi',    'Jackson',       '1817-12-10',  2961279),
    ('MO', 'Missouri',       'Jefferson City','1821-08-10',  6154913),
    ('MT', 'Montana',        'Helena',        '1889-11-08',  1084225),
    ('NE', 'Nebraska',       'Lincoln',       '1867-03-01',  1961504),
    ('NV', 'Nevada',         'Carson City',   '1864-10-31',  3104614),
    ('NH', 'New Hampshire',  'Concord',       '1788-06-21',  1377529),
    ('NJ', 'New Jersey',     'Trenton',       '1787-12-18',  9288994),
    ('NM', 'New Mexico',     'Santa Fe',      '1912-01-06',  2117522),
    ('NY', 'New York',       'Albany',        '1788-07-26', 20201249),
    ('NC', 'North Carolina', 'Raleigh',       '1789-11-21', 10439388),
    ('ND', 'North Dakota',   'Bismarck',      '1889-11-02',   779094),
    ('OH', 'Ohio',           'Columbus',      '1803-03-01', 11799448),
    ('OK', 'Oklahoma',       'Oklahoma City', '1907-11-16',  3959353),
    ('OR', 'Oregon',         'Salem',         '1859-02-14',  4237256),
    ('PA', 'Pennsylvania',   'Harrisburg',    '1787-12-12', 13002700),
    ('RI', 'Rhode Island',   'Providence',    '1790-05-29',  1097379),
    ('SC', 'South Carolina', 'Columbia',      '1788-05-23',  5118425),
    ('SD', 'South Dakota',   'Pierre',        '1889-11-02',   886667),
    ('TN', 'Tennessee',      'Nashville',     '1796-06-01',  6910840),
    ('TX', 'Texas',          'Austin',        '1845-12-29', 29145505),
    ('UT', 'Utah',           'Salt Lake City','1896-01-04',  3271616),
    ('VT', 'Vermont',        'Montpelier',    '1791-03-04',   643077),
    ('VA', 'Virginia',       'Richmond',      '1788-06-25',  8631393),
    ('WA', 'Washington',     'Olympia',       '1889-11-11',  7705281),
    ('WV', 'West Virginia',  'Charleston',    '1863-06-20',  1793716),
    ('WI', 'Wisconsin',      'Madison',       '1848-05-29',  5893718),
    ('WY', 'Wyoming',        'Cheyenne',      '1890-07-10',   576851);

-- Verify the data was inserted
SELECT * FROM rBreutzmannStatesdata;

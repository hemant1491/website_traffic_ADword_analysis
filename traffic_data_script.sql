CREATE DATABASE IF NOT EXISTS traffic_data;

USE traffic_data;

CREATE TABLE website_traffic_data (
    title VARCHAR(255) NOT NULL,
    keyword_id INT NOT NULL,
    position INT NOT NULL,
    previous_position INT NOT NULL,
    last_seen DATE NOT NULL,
    search_volume INT NOT NULL,
    cost_per_click DECIMAL(10 , 2 ) NOT NULL,
    traffic INT NOT NULL,
    traffic_percent DECIMAL(10 , 2 ) NOT NULL,
    traffic_cost INT NOT NULL,
    traffic_cost_percent DECIMAL(10 , 2 ) NOT NULL,
    competition DECIMAL(10 , 2 ) NOT NULL,
    number_of_results INT NOT NULL,
    keyword_difficulty INT NOT NULL
);

ALTER TABLE competition ADD CONSTRAINT pk_competition PRIMARY KEY (`keyword ID`);
ALTER TABLE keyword_difficulty ADD CONSTRAINT pk_keyword_difficulty PRIMARY KEY (`keyword ID`);
ALTER TABLE keywords ADD CONSTRAINT pk_keywords PRIMARY KEY (`keyword ID`);

ALTER TABLE website_traffic_data ADD CONSTRAINT fk_competition FOREIGN KEY (keyword_id) REFERENCES competition(`keyword ID`);
ALTER TABLE website_traffic_data ADD CONSTRAINT fk_keyword_difficulty FOREIGN KEY (keyword_id) REFERENCES keyword_difficulty(`keyword ID`);
ALTER TABLE website_traffic_data ADD CONSTRAINT fk_keywords FOREIGN KEY (keyword_id) REFERENCES keywords(`keyword ID`);
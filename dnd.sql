--creating database

--remove tables (to re-enter)
DROP TABLE ParticipatesIn;
DROP TABLE Characters;
DROP TABLE Campaign;
DROP TABLE Members;

--member table
CREATE TABLE Members
    ( MemberName VARCHAR(50),
    YearsInGuild INT,
    MemberAlignment VARCHAR(50),
    PRIMARY KEY (MemberName) );

--insert 20 tuples
INSERT INTO Members VALUES ('Amanda', 5, 'True Neutral');
INSERT INTO Members VALUES ('Ian', 5, 'Chaotic Evil');
INSERT INTO Members VALUES ('Emily', 5, 'Chaotic Evil');
INSERT INTO Members VALUES ('Jake', 1, 'Neutral Good');
INSERT INTO Members VALUES ('Britne', 1, 'True Neutral');
INSERT INTO Members VALUES ('Sydney', 2, 'Lawful Good');
INSERT INTO Members VALUES ('Kenzie', 1, 'Lawful Evil');
INSERT INTO Members VALUES ('Kelsey', 2, 'True Neutral');
INSERT INTO Members VALUES ('Jordan', 1, 'Neutral Evil');
INSERT INTO Members VALUES ('Frank', 1, 'Neutral Good');
INSERT INTO Members VALUES ('Daniel', 1, 'True Neutral');
INSERT INTO Members VALUES ('Jill', 2, 'Chaotic Evil');
INSERT INTO Members VALUES ('Edward', 1, 'True Neutral');
INSERT INTO Members VALUES ('Julie', 3, 'Lawful Evil');
INSERT INTO Members VALUES ('Tracy', 1, 'True Neutral');
INSERT INTO Members VALUES ('Stacy', 4, 'Neutral Good');
INSERT INTO Members VALUES ('Emma', 1, 'True Neutral');
INSERT INTO Members VALUES ('Mary', 1, 'Lawful Evil');
INSERT INTO Members VALUES ('Josh', 2, 'True Neutral');
INSERT INTO Members VALUES ('Jon', 1, 'Neutral Good');

--character table
CREATE TABLE Characters
    ( CharacterName VARCHAR(50),
    Stat VARCHAR(50),
    CharacterAlign VARCHAR(50),
    Gender VARCHAR(50),
    Age NUMBER(10),
    Job VARCHAR(50),
    Class VARCHAR(50),
    Race VARCHAR(50),
    Own VARCHAR(50),
    PRIMARY KEY(CharacterName),
    FOREIGN KEY (Own) REFERENCES Members(MemberName) );

--insert 40 tuples
INSERT INTO Characters VALUES ('Arya', 'Alive', 'True Neutral', 'F', '19', 'Theif', 'Rogue', 'Human', 'Amanda');
INSERT INTO Characters VALUES ('Argol', 'Dead', 'True Neutral', 'M', '9', 'Academic', 'Warlock', 'Elf', 'Amanda');
INSERT INTO Characters VALUES ('Fan', 'Alive', 'True Neutral', 'F', '22', 'Healer', 'Rogue', 'Human', 'Ian');
INSERT INTO Characters VALUES ('Urun', 'Dead', 'True Neutral', 'F', '19', 'Theif', 'Warrior', 'Human', 'Ian');
INSERT INTO Characters VALUES ('Trerth', 'Alive', 'True Neutral', 'F', '101', 'Smith', 'Rogue', 'Druid', 'Emily');
INSERT INTO Characters VALUES ('Rano', 'Dead', 'True Neutral', 'M', '19', 'Theif', 'Ranger', 'Human', 'Emily');
INSERT INTO Characters VALUES ('Dany', 'Alive', 'True Neutral', 'F', '19', 'Theif', 'Rogue', 'Orc', 'Jake');
INSERT INTO Characters VALUES ('Edwin', 'Dead', 'True Neutral', 'F', '19', 'Adventurer', 'Warlock', 'Human', 'Jake');
INSERT INTO Characters VALUES ('Hiey', 'Alive', 'True Neutral', 'M', '19', 'Theif', 'Rogue', 'Human', 'Britne');
INSERT INTO Characters VALUES ('Tiow', 'Dead', 'True Neutral', 'F', '90', 'Smith', 'Mage', 'Elf', 'Britne');
INSERT INTO Characters VALUES ('Enrar', 'Alive', 'Neutral Good', 'F', '100', 'Academic', 'Rogue', 'Human', 'Sydney');
INSERT INTO Characters VALUES ('Somoor', 'Dead', 'True Neutral', 'F', '30', 'Healer', 'Cleric', 'Human', 'Sydney');
INSERT INTO Characters VALUES ('Ercurth', 'Alive', 'True Neutral', 'F', '19', 'Theif', 'Rogue', 'Changling', 'Kenzie');
INSERT INTO Characters VALUES ('Sansa', 'Dead', 'True Neutral', 'F', '19', 'Theif', 'Rogue', 'Human', 'Kenzie');
INSERT INTO Characters VALUES ('Bran', 'Alive', 'True Neutral', 'M', '17', 'Adventurer', 'Monk', 'Orc', 'Kelsey');
INSERT INTO Characters VALUES ('Cersei', 'Dead', 'Neutral Good', 'F', '18', 'Academic', 'Bard', 'Human', 'Kelsey');
INSERT INTO Characters VALUES ('Jamie', 'Alive', 'True Neutral', 'M', '19', 'Theif', 'Fighter', 'Human', 'Jordan');
INSERT INTO Characters VALUES ('Hound', 'Dead', 'True Neutral', 'F', '19', 'Smith', 'Rogue', 'Human', 'Jordan');
INSERT INTO Characters VALUES ('Kyrie', 'Alive', 'True Neutral', 'F', '16', 'Healer', 'Rogue', 'Eld', 'Frank');
INSERT INTO Characters VALUES ('Kyla', 'Dead', 'Neutral Good', 'F', '19', 'Adventurer', 'Rogue', 'Human', 'Frank');
INSERT INTO Characters VALUES ('Geralt', 'Alive', 'True Neutral', 'M', '19', 'Academic', 'Ranger', 'Human', 'Daniel');
INSERT INTO Characters VALUES ('Yen', 'Dead', 'True Neutral', 'F', '19', 'Healer', 'Rogue', 'Druid', 'Daniel');
INSERT INTO Characters VALUES ('Fran', 'Alive', 'True Neutral', 'F', '41', 'Smith', 'Paladin', 'Human', 'Jill');
INSERT INTO Characters VALUES ('Bonnie', 'Dead', 'True Neutral', 'F', '19', 'Healer', 'Rogue', 'Druid', 'Jill');
INSERT INTO Characters VALUES ('Dandy', 'Alive', 'True Neutral', 'F', '19', 'Theif', 'Rogue', 'Human', 'Edward');
INSERT INTO Characters VALUES ('Ralf', 'Dead', 'True Neutral', 'M', '19', 'Healer', 'Paladin', 'Human', 'Edward');
INSERT INTO Characters VALUES ('Mei', 'Alive', 'True Neutral', 'F', '35', 'Adventurer', 'Ranger', 'Orc', 'Julie');
INSERT INTO Characters VALUES ('Chshu', 'Dead', 'True Neutral', 'F', '19', 'Academic', 'Rogue', 'Human', 'Julie');
INSERT INTO Characters VALUES ('Lai', 'Alive', 'True Neutral', 'F', '10', 'Theif', 'Mage', 'Human', 'Tracy');
INSERT INTO Characters VALUES ('Per', 'Dead', 'True Neutral', 'F', '11', 'Adventurer', 'Rogue', 'Changling', 'Tracy');
INSERT INTO Characters VALUES ('Frond', 'Alive', 'True Neutral', 'M', '19', 'Adventurer', 'Cleric', 'Human', 'Stacy');
INSERT INTO Characters VALUES ('Onds', 'Dead', 'True Neutral', 'F', '23', 'Smith', 'Mage', 'Human', 'Stacy');
INSERT INTO Characters VALUES ('Ur', 'Alive', 'True Neutral', 'F', '19', 'Theif', 'Rogue', 'Human', 'Emma');
INSERT INTO Characters VALUES ('Andrya', 'Dead', 'True Neutral', 'F', '22', 'Academic', 'Ranger', 'Elf', 'Emma');
INSERT INTO Characters VALUES ('Cara', 'Alive', 'True Neutral', 'F', '19', 'Smith', 'Fighter', 'Human', 'Mary');
INSERT INTO Characters VALUES ('Tinn', 'Dead', 'True Neutral', 'F', '31', 'Theif', 'Fighter', 'Human', 'Mary');
INSERT INTO Characters VALUES ('Finn', 'Alive', 'True Neutral', 'M', '19', 'Academic', 'Ranger', 'Elf', 'Josh');
INSERT INTO Characters VALUES ('Laya', 'Dead', 'True Neutral', 'F', '30', 'Academic', 'Warlock', 'Orc', 'Josh');
INSERT INTO Characters VALUES ('Ronn', 'Alive', 'True Neutral', 'M', '19', 'Smith', 'Warrior', 'Human', 'Jon');
INSERT INTO Characters VALUES ('Bavo', 'Dead', 'True Neutral', 'M', '41', 'Theif', 'Rogue', 'Human', 'Jon');

--campaign table
CREATE TABLE Campaign
    ( Title VARCHAR(50),
    Stat VARCHAR(50),
    Lengths VARCHAR(50),
    Goal VARCHAR(50),
    SettingTime VARCHAR(10),
    SettingPlace VARCHAR(50),
    SettingMood VARCHAR(50),
    Creator VARCHAR(50),
    PRIMARY KEY(Title),
    FOREIGN KEY (Creator) REFERENCES Members(MemberName) );

--insert 10 tuples
INSERT INTO Campaign VALUES ('Caves Of Shadow', 'Finished', '2 days', 'Explore the caves', 'Winter', 'Caves of Shadow', 'Relaxed', 'Amanda');
INSERT INTO Campaign VALUES ('The Sunless Citadel', 'Finished', '5 days', 'Explore the citadel', 'Spring', 'Caves of Shadow', 'Relaxed', 'Amanda');
INSERT INTO Campaign VALUES ('The Fright at Tristor', 'Finished', '4 days', 'Save the people of Tristor', 'Spring', 'Caves of Shadow', 'Urgent', 'Ian');
INSERT INTO Campaign VALUES ('Whispers of the Vampire Blade', 'Finished', '3 days', 'Find the Vampire Blade', 'Summer', 'Caves of Shadow', 'Relaxed', 'Ian');
INSERT INTO Campaign VALUES ('The Sinister Spire', 'Finished', '1 days', 'Find the spire', 'Fall', 'Caves of Shadow', 'Relaxed', 'Amanda');
INSERT INTO Campaign VALUES ('Eyes of the Lich Queen', 'Finished', '0 days', 'Defeat the Lich Queen', 'Summer', 'Caves of Shadow', 'Urgent', 'Ian');
INSERT INTO Campaign VALUES ('House of Harpies', 'Finished', '6 days', 'Clear the house of harpies', 'Fall', 'Caves of Shadow', 'Relaxed', 'Ian');
INSERT INTO Campaign VALUES ('Child of Three', 'On-going', '9 days', 'Find the Child of Three', 'Winter', 'Caves of Shadow', 'Urgent', 'Amanda');
INSERT INTO Campaign VALUES ('Lord of the Iron Fortress', 'On-going', '2 days', 'Assist the Lord in his needs', 'Winter', 'Caves of Shadow', 'Urgent', 'Ian');
INSERT INTO Campaign VALUES ('Eye for an Eye', 'On-going', '5 days', 'Take revenge on an enemy', 'Fall', 'Caves of Shadow', 'Urgent', 'Amanda');


--participates in table
CREATE TABLE ParticipatesIn
    ( CampaignTitle VARCHAR(50),
    CharacterName VARCHAR(50),
    PRIMARY KEY(CampaignTitle, CharacterName),
    FOREIGN KEY (CampaignTitle) REFERENCES Campaign(Title), 
    FOREIGN KEY (CharacterName) REFERENCES Characters(CharacterName) );

--insert 30 tuples
INSERT INTO ParticipatesIn VALUES ('Eye for an Eye', 'Arya');
INSERT INTO ParticipatesIn VALUES ('Eye for an Eye', 'Fan');
INSERT INTO ParticipatesIn VALUES ('Eye for an Eye', 'Finn');
INSERT INTO ParticipatesIn VALUES ('Eye for an Eye', 'Frond');
INSERT INTO ParticipatesIn VALUES ('Eye for an Eye', 'Tinn');
INSERT INTO ParticipatesIn VALUES ('Lord of the Iron Fortress', 'Laya');
INSERT INTO ParticipatesIn VALUES ('Lord of the Iron Fortress', 'Ur');
INSERT INTO ParticipatesIn VALUES ('Lord of the Iron Fortress', 'Jamie');
INSERT INTO ParticipatesIn VALUES ('Lord of the Iron Fortress', 'Per');
INSERT INTO ParticipatesIn VALUES ('Lord of the Iron Fortress', 'Arya');
INSERT INTO ParticipatesIn VALUES ('Child of Three', 'Edwin');
INSERT INTO ParticipatesIn VALUES ('Child of Three', 'Arya');
INSERT INTO ParticipatesIn VALUES ('Child of Three', 'Ronn');
INSERT INTO ParticipatesIn VALUES ('Child of Three', 'Bavo');
INSERT INTO ParticipatesIn VALUES ('Child of Three', 'Frond');
INSERT INTO ParticipatesIn VALUES ('House of Harpies', 'Arya');
INSERT INTO ParticipatesIn VALUES ('House of Harpies', 'Lai');
INSERT INTO ParticipatesIn VALUES ('House of Harpies', 'Mei');
INSERT INTO ParticipatesIn VALUES ('House of Harpies', 'Dandy');
INSERT INTO ParticipatesIn VALUES ('House of Harpies', 'Fran');
INSERT INTO ParticipatesIn VALUES ('Eyes of the Lich Queen', 'Geralt');
INSERT INTO ParticipatesIn VALUES ('Eyes of the Lich Queen', 'Kyrie');
INSERT INTO ParticipatesIn VALUES ('Eyes of the Lich Queen', 'Bran');
INSERT INTO ParticipatesIn VALUES ('The Sinister Spire', 'Jamie');
INSERT INTO ParticipatesIn VALUES ('The Sunless Citadel', 'Ercurth');
INSERT INTO ParticipatesIn VALUES ('Caves Of Shadow', 'Enrar');
INSERT INTO ParticipatesIn VALUES ('Whispers of the Vampire Blade', 'Hiey');
INSERT INTO ParticipatesIn VALUES ('The Fright at Tristor', 'Dany');
INSERT INTO ParticipatesIn VALUES ('The Fright at Tristor', 'Ronn');
INSERT INTO ParticipatesIn VALUES ('The Fright at Tristor', 'Trerth');
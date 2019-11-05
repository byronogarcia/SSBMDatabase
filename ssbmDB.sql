CREATE TABLE IF NOT EXISTS 'character' (
	'charID' int(11) NOT NULL,
	'charName' varchar(20) NOT NULL,
	PRIMARY KEY ('charID')
	);

CREATE TABLE IF NOT EXISTS 'grounded attacks' (
	'grndID' int (11) NOT NULL,
	'charID' int(11) NOT NULL,
	--'g' tinyint(3) unsigned NOT NULL,
	--'grndActive' tinyint(3) unsigned NOT NULL,
	'grndTotalframes' tinyint(3) NOT NULL, --total frames the grounded move is active
	'grndStartupHB1' tinyint(3) NOT NULL, --frame that the hitbox starts
	'grndEndHB1' tinyint(3) NOT NULL, --frame that the hitbox ends
	'grndStartupHB2' tinyint(3) NOT NULL, --A attribute just in case there are two hitboxes
	'grndEndHB2' tinyint(3) NOT NULL, --second hitbox ending
	'grndIASA' tinyint(3) NOT NULL, --Interruptible As Soon As
	'grndName' varchar(50) NOT NULL, --name of the move
	'grndDamage' smallint(5) unsigned NOT NULL DEFAULT 0, --how much damage it does (unstalled)
	PRIMARY KEY ('grndID'),
	KEY 'FK2' ('charID'),
	CONSTRAINT 'FK2' FOREIGN KEY ('charID') REFERENCES 'character' ('ID')
	);

CREATE TABLE IF NOT EXISTS 'aerial attacks' (
	'aerID'
	'charID' int(11) NOT NULL,
	'aerTotalframes' tinyint(3) NOT NULL,
	'aerStartupHB1' tinyint(3) NOT NULL,
	'aerEndHB1' tinyint(3) NOT NULL,
	'aerStartupHB2' tinyint(3) NOT NULL,
	'aerEndHB2' tinyint(3) NOT NULL,
	'aerIASA' tinyint(3) NOT NULL,
	'aerLandinglag' tinyint(3) NOT NULL, --how long until you can do an action out of landing
	'aerLcancel' tinyint(3) NOT NULL, --same as landinglag but L cancelled
	'aerName' varchar(50) NOT NULL,
	'aerDamage' smallint(5) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY ('aerID'),
	KEY 'FK2' ('charID'),
	CONSTRAINT 'FK2' FOREIGN KEY ('charID') REFERENCES 'character' ('ID')
	);

CREATE TABLE IF NOT EXISTS 'special attacks' (
	'specID'
	'charID' int(11) NOT NULL,
	'specTotalframes' tinyint(3) NOT NULL,
	'specStartupHB1' tinyint(3) NOT NULL,
	'specEndHB1' tinyint(3) NOT NULL,
	'specStartupHB2' tinyint(3) NOT NULL,
	'specEndHB2' tinyint(3) NOT NULL,
	'specIASA' tinyint(3) NOT NULL,
	'specLandinglag' tinyint(3) NOT NULL, --how long until you can do an action out of landing
	'specLcancel' tinyint(3) NOT NULL, --same as landinglag but L cancelled
	'specName' varchar(50) NOT NULL,
	'specDamage' smallint(5) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY ('aerID'),
	KEY 'FK2' ('charID'),
	CONSTRAINT 'FK2' FOREIGN KEY ('charID') REFERENCES 'character' ('ID')
	)

CREATE TABLE IF NOT EXISTS 'throws' (

	)

CREATE TABLE IF NOT EXISTS 'hitboxes' (
	
	)

CREATE TABLE IF NOT EXISTS 'hitbox_info' (

	)
local LBB = LibStub("LibBabble-Boss-3.0"):GetLookupTable()
local LBZ = LibStub("LibBabble-Zone-3.0"):GetLookupTable()

-- BK
do --> data for Serpentshrine Cavern
	local INSTANCE_MAPID = 863
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "SerpentshrineCavern"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LOADSCREENCOILFANG", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-coilfangreservoir"
	local EJ_LOREBG = "ui-ej-lorebg-coilfangreservoir"

	local PORTRAIT_LIST = {
		"ui-ej-boss-hydross the unstable",
		"ui-ej-boss-the lurker below",
		"ui-ej-boss-leotheras the blind",
		"ui-ej-boss-fathom lord karathress",
		"ui-ej-boss-morogrim tidewalker",
		"ui-ej-boss-lady vashj",
	}

	local ENCOUNTER_ID_CL = {
		21216, 21217, 21215, 21214, 21213, 21212,
		[21216] = 1, --Hydross the Unstable
		[21217] = 2, --The Lurker Below
		[21215] = 3, --Leotheras the Blind
		[21214] = 4, --Fathom-Lord Karathress
		[21213] = 5, --Morogrim Tidewalker
		[21212] = 6, --Lady Vashj
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Hydross the Unstable"],
		LBB["The Lurker Below"],
		LBB["Leotheras the Blind"],
		LBB["Fathom-Lord Karathress"],
		LBB["Morogrim Tidewalker"],
		LBB["Lady Vashj"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Serpentshrine Cavern"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[21216] = 1, --Hydross the Unstable
			[21217] = 2, --The Lurker Below
			[21215] = 3, --Leotheras the Blind
			[21214] = 4, --Fathom-Lord Karathress
			[21213] = 5, --Morogrim Tidewalker
			[21212] = 6, --Lady Vashj
		},
	})
end

do --> data for Magtheridon's Lair
	local INSTANCE_MAPID = 866
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "MagtheridonLair"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LOADSCREENHELLFIRECITADELRAID", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-magtheridonslair"
	local EJ_LOREBG = "ui-ej-lorebg-magtheridonslair"

	local PORTRAIT_LIST = {
		"ui-ej-boss-magtheridon",
	}

	local ENCOUNTER_ID_CL = {
		17257,
		[17257] = 1, --Magtheridon
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Magtheridon"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Magtheridon's Lair"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[17257] = 1, --Magtheridon
		},
	})
end

do --> data for Gruul's Lair
	local INSTANCE_MAPID = 865
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "GruulLair"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LOADSCREENGRUULSLAIR", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-gruulslair"
	local EJ_LOREBG = "ui-ej-lorebg-gruulslair"

	local PORTRAIT_LIST = {
		"ui-ej-boss-high king maulgar",
		"ui-ej-boss-gruul the dragonkiller",
	}

	local ENCOUNTER_ID_CL = {
		18831, 19044,
		[18831] = 1, --High King Maulgar
		[19044] = 2, --Gruul the Dragonkiller
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["High King Maulgar"],
		LBB["Gruul the Dragonkiller"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Gruul's Lair"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[18831] = 1, --High King Maulgar
			[19044] = 2, --Gruul the Dragonkiller
		},
	})
end

do --> data for Karazhan
	local INSTANCE_MAPID = 868
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "Karazhan"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenKarazhan", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-karazhan"
	local EJ_LOREBG = "ui-ej-lorebg-karazhan"

	local PORTRAIT_LIST = {
		"ui-ej-boss-attumen the huntsman",
		"ui-ej-boss-moroes",
		"ui-ej-boss-maiden of virtue",
		"ui-ej-boss-opera",
		"ui-ej-boss-the curator",
		"ui-ej-boss-terestian illhoof",
		"ui-ej-boss-shade of aran",
		"ui-ej-boss-netherspite",
		"UI-EJ-BOSS-Nightbane",
		"ui-ej-boss-prince malchezaar",
	}

	-- TODO: Opera
	local ENCOUNTER_ID_CL = {
		16152, 15687, 16457, 17535, 34437, 15688, 16524, 15689, 17225, 15690,
		[16152] = 1, --Attumen the Huntsman
		[15687] = 2, --Moroes
		[16457] = 3, --Maiden of Virtue
		[17535] = 4, --Opera Event
		[34437] = 5, --The Curator
		[15688] = 6, --Terestian Illhoof
		[16524] = 7, --Shade of Aran
		[15689] = 8, --Netherspite
		[17225] = 9, --Nightbane
		[15690] = 10, --Prince Malchezaar
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Attumen the Huntsman"],
		LBB["Moroes"],
		LBB["Maiden of Virtue"],
		LBB["Opera Event"],
		LBB["The Curator"],
		LBB["Terestian Illhoof"],
		LBB["Shade of Aran"],
		LBB["Netherspite"],
		LBB["Nightbane"],
		LBB["Prince Malchezaar"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Karazhan"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[16152] = 1, --Attumen the Huntsman
			[16151] = 1, --Midnight
			[15687] = 2, --Moroes
			[16457] = 3, --Maiden of Virtue
			[17535] = 4, --Dorothee
			[17546] = 4, --Roar
			[17543] = 4, --Strawman
			[17547] = 4, --Tinhead
			[17548] = 4, --Tito
			[18168] = 4, --The Crone
			[17521] = 4, --The Big Bad Wolf
			[17533] = 4, --Romulo
			[17534] = 4, --Julianne
			[34437] = 5, --The Curator
			[15688] = 6, --Terestian Illhoof
			[16524] = 7, --Shade of Aran
			[15689] = 8, --Netherspite
			[17225] = 9, --Nightbane
			[15690] = 10, --Prince Malchezaar
		},
	})
end

do --> data for The Eye
	local INSTANCE_MAPID = 862
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "TheEye"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LOADSCREENTEMPESTKEEP", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-tempestkeep"
	local EJ_LOREBG = "ui-ej-lorebg-tempestkeep"

	local PORTRAIT_LIST = {
		"ui-ej-boss-alar",
		"ui-ej-boss-void reaver",
		"ui-ej-boss-high astromancer solarian",
		"ui-ej-boss-kaelthas sunstrider",
	}

	-- TODO: Opera
	local ENCOUNTER_ID_CL = {
		19514, 19516, 18805, 19622,
		[19514] = 1, --Al'ar
		[19516] = 2, --Void Reaver
		[18805] = 3, --High Astromancer Solarian
		[19622] = 4, --Kael'thas Sunstrider
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Al'ar"],
		LBB["Void Reaver"],
		LBB["High Astromancer Solarian"],
		LBB["Kael'thas Sunstrider"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["The Eye"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[19514] = 1, --Al'ar
			[19516] = 2, --Void Reaver
			[18805] = 3, --High Astromancer Solarian
			[19622] = 4, --Kael'thas Sunstrider
		},
	})
end

-- WotLK

do --> data for Onyxia's Lair
	local INSTANCE_MAPID = 14
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "OnyxiaLair"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-onxyiaslair"
	local EJ_LOREBG = "ui-ej-lorebg-onxyiaslair"

	local PORTRAIT_LIST = {
		"ui-ej-boss-onyxia",
	}

	local ENCOUNTER_ID_CL = {
		10184,
		[10184] = 1, --Onyxia
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Onyxia"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Onyxia's Lair"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[10184] = 1, --Onyxia
		},
	})
end

do --> data for The Ruby Sanctum
	local INSTANCE_MAPID = 610
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "TheRubySanctum"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenRubySanctum", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-rubysanctum"
	local EJ_LOREBG = "ui-ej-lorebg-rubysanctum"

	local PORTRAIT_LIST = {
		"ui-ej-boss-halion",
	}

	local ENCOUNTER_ID_CL = {
		39863,
		[39863] = 1, --Halion
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Halion"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["The Ruby Sanctum"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[39863] = 1, --Halion
		},
	})
end

do --> data for Icecrown Citadel
	local faction = UnitFactionGroup("player")

	local INSTANCE_MAPID = 605
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "IcecrownCitadel"..faction
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenIcecrownCitadel", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-icecrowncitadel"
	local EJ_LOREBG = "ui-ej-lorebg-icecrowncitadel"

	local portrait, clID = "ui-ej-boss-gunship horde", 37540
	if faction == "Alliance" then
		portrait, clID = "ui-ej-boss-gunship alliance", 37215
	end

	local PORTRAIT_LIST = {
		"ui-ej-boss-lord marrowgar",
		"ui-ej-boss-lady deathwhisper",
		portrait,
		"ui-ej-boss-deathbringer saurfang",
		"ui-ej-boss-festergut",
		"ui-ej-boss-rotface",
		"ui-ej-boss-professor putricide",
		"ui-ej-boss-blood prince council",
		"ui-ej-boss-blood queen lanathel",
		"ui-ej-boss-valithria dreamwalker",
		"ui-ej-boss-sindragosa",
		"ui-ej-boss-lich king",
	}

	local ENCOUNTER_ID_CL = {
		36612, 36855, clID, 37813, 36626, 36627, 36678, 37970, 37955, 36789, 36853, 36597,
		[36612] = 1, --Lord Marrowgar
		[36855] = 2, --Lady Deathwhisper
		[clID] = 3, --Icecrown Gunship Battle
		[37813] = 4, --Deathbringer Saurfang
		[36626] = 5, --Festergut
		[36627] = 6, --Rotface
		[36678] = 7, --Professor Putricide
		[37970] = 8, --Blood Prince Council
		[37955] = 9, --Blood-Queen Lana'thel
		[36789] = 10, --Valithria Dreamwalker
		[36853] = 11, --Sindragosa
		[36597] = 12, --The Lich King
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Lord Marrowgar"],
		LBB["Lady Deathwhisper"],
		LBB["Icecrown Gunship Battle"],
		LBB["Deathbringer Saurfang"],
		LBB["Festergut"],
		LBB["Rotface"],
		LBB["Professor Putricide"],
		LBB["Blood Prince Council"],
		LBB["Blood-Queen Lana'thel"],
		LBB["Valithria Dreamwalker"],
		LBB["Sindragosa"],
		LBB["The Lich King"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Icecrown Citadel"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[36612] = 1, --Lord Marrowgar
			[36855] = 2, --Lady Deathwhisper
			[37540] = 3, --Icecrown Gunship Battle
			[37215] = 3, --Icecrown Gunship Battle
			[37813] = 4, --Deathbringer Saurfang
			[36626] = 5, --Festergut
			[36627] = 6, --Rotface
			[36678] = 7, --Professor Putricide
			[37970] = 8, --Blood Prince Council
			[37955] = 9, --Blood-Queen Lana'thel
			[36789] = 10, --Valithria Dreamwalker
			[36853] = 11, --Sindragosa
			[36597] = 12, --The Lich King
		},
	})
end

do --> data for Trial of the Crusader
	local INSTANCE_MAPID = 544
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "TrialoftheCrusader"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenArgentRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-trialofthecrusader"
	local EJ_LOREBG = "ui-ej-lorebg-trialofthecrusader"

	local portrait, clID = "ui-ej-boss-pvp event vs horde", 34467
	if UnitFactionGroup("player") == "Alliance" then
		portrait, clID = "ui-ej-boss-pvp event vs alliance", 34451
	end

	local PORTRAIT_LIST = {
		"ui-ej-boss-northrend beasts",
		"ui-ej-boss-lord jaraxxus",
		portrait,
		"ui-ej-boss-twin valkyr",
		"ui-ej-boss-anubarak",
	}

	local ENCOUNTER_ID_CL = {
		34797, 34780, clID, 34497, 34564,
		[34797] = 1, --The Beasts of Northrend
		[34780] = 2, --Lord Jaraxxus
		[clID] = 3, --Faction Champions
		[34497] = 4, --The Twin Val'kyr
		[34564] = 5, --Anub'arak
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["The Beasts of Northrend"],
		LBB["Lord Jaraxxus"],
		LBB["Faction Champions"],
		LBB["The Twin Val'kyr"],
		LBB["Anub'arak"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Trial of the Crusader"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[34796] = 1, --Gormok the Impaler
			[34799] = 1, --Dreadscale
			[34797] = 1, --Icehowl
			[35144] = 1, --Acidmaw
			[34780] = 2, --Lord Jaraxxus
			[34461] = 3, --Tyrius Duskblade <Death Knight>
			[34460] = 3, --Kavina Grovesong <Druid>
			[34469] = 3, --Melador Valestrider <Druid>
			[34467] = 3, --Alyssia Moonstalker <Hunter>
			[34468] = 3, --Noozle Whizzlestick <Mage>
			[34465] = 3, --Velanaa <Paladin>
			[34471] = 3, --Baelnor Lightbearer <Paladin>
			[34466] = 3, --Anthar Forgemender <Priest>
			[34473] = 3, --Brienna Nightfell <Priest>
			[34472] = 3, --Irieth Shadowstep <Rogue>
			[34470] = 3, --Saamul <Shaman>
			[34463] = 3, --Shaabad <Shaman>
			[34474] = 3, --Serissa Grimdabbler <Warlock>
			[34475] = 3, --Shocuul <Warrior>
			[34458] = 3, --Gorgrim Shadowcleave <Death Knight>
			[34451] = 3, --Birana Stormhoof <Druid>
			[34459] = 3, --Erin Misthoof <Druid>
			[34448] = 3, --Ruj'kah <Hunter>
			[34449] = 3, --Ginselle Blightslinger <Mage>
			[34445] = 3, --Liandra Suncaller <Paladin>
			[34456] = 3, --Malithas Brightblade <Paladin>
			[34447] = 3, --Caiphus the Stern <Priest>
			[34441] = 3, --Vivienne Blackwhisper <Priest>
			[34454] = 3, --Maz'dinah <Rogue>
			[34444] = 3, --Thrakgar	<Shaman>
			[34455] = 3, --Broln Stouthorn <Shaman>
			[34450] = 3, --Harkzog <Warlock>
			[34453] = 3, --Narrhok Steelbreaker <Warrior>
			[34497] = 4, --Fjola Lightbane
			[34496] = 4, --Eydis Darkbane
			[34564] = 5, --Anub'arak
		},
	})
end

do --> data for Naxxramas
	local INSTANCE_MAPID = 536
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "Naxxramas"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenNaxxramas", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-naxxramas"
	local EJ_LOREBG = "ui-ej-lorebg-naxxramas"

	local PORTRAIT_LIST = {
		"ui-ej-boss-anubrekhan",
		"ui-ej-boss-grand widow faerlina",
		"ui-ej-boss-maexxna",
		"ui-ej-boss-noth the plaguebringer",
		"ui-ej-boss-heigan the unclean",
		"ui-ej-boss-loatheb",
		"ui-ej-boss-instructor razuvious",
		"ui-ej-boss-gothik the harvester",
		"ui-ej-boss-four horseman",
		"ui-ej-boss-patchwerk",
		"ui-ej-boss-grobbulus",
		"ui-ej-boss-gluth",
		"ui-ej-boss-thaddius",
		"ui-ej-boss-sapphiron",
		"ui-ej-boss-kelthuzad",
	}

	local ENCOUNTER_ID_CL = {
		15956, 15953, 15952, 15954, 15936, 16011, 16061, 16060, 30549, 16028, 15931, 15932, 15928, 15989, 15990,
		[15956] = 1, --Anub'Rekhan
		[15953] = 2, --Grand Widow Faerlina
		[15952] = 3, --Maexxna
		[15954] = 4, --Noth the Plaguebringer
		[15936] = 5, --Heigan the Unclean
		[16011] = 6, --Loatheb
		[16061] = 7, --Instructor Razuvious
		[16060] = 8, --Gothik the Harvester
		[30549] = 9, --The Four Horsemen
		[16028] = 10, --Patchwerk
		[15931] = 11, --Grobbulus
		[15932] = 12, --Gluth
		[15928] = 13, --Thaddius
		[15989] = 14, --Sapphiron
		[15990] = 15, --Kel'Thuzad
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Anub'Rekhan"],
		LBB["Grand Widow Faerlina"],
		LBB["Maexxna"],
		LBB["Noth the Plaguebringer"],
		LBB["Heigan the Unclean"],
		LBB["Loatheb"],
		LBB["Instructor Razuvious"],
		LBB["Gothik the Harvester"],
		LBB["The Four Horsemen"],
		LBB["Patchwerk"],
		LBB["Grobbulus"],
		LBB["Gluth"],
		LBB["Thaddius"],
		LBB["Sapphiron"],
		LBB["Kel'Thuzad"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Naxxramas"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[15956] = 1, --Anub'Rekhan
			[15953] = 2, --Grand Widow Faerlina
			[15952] = 3, --Maexxna
			[15954] = 4, --Noth the Plaguebringer
			[15936] = 5, --Heigan the Unclean
			[16011] = 6, --Loatheb
			[16061] = 7, --Instructor Razuvious
			[16060] = 8, --Gothik the Harvester
			[30549] = 9, --Baron Rivendare
			[16065] = 9, --Lady Blaumeux
			[16064] = 9, --Thane Korth'azz
			[16062] = 9, --Highlord Mograine
			[16063] = 9, --Sir Zeliek
			[16028] = 10, --Patchwerk
			[15931] = 11, --Grobbulus
			[15932] = 12, --Gluth
			[15928] = 13, --Thaddius
			[15989] = 14, --Sapphiron
			[15990] = 15, --Kel'Thuzad
		},
	})
end

do --> data for Vault of Archavon
	local INSTANCE_MAPID = 533
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "VaultofArchavon"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenWintergrasp", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-vaultofarchavon"
	local EJ_LOREBG = "ui-ej-lorebg-vaultofarchavon"

	local PORTRAIT_LIST = {
		"ui-ej-boss-archavon the stone watcher",
		"ui-ej-boss-emalon the storm watcher",
		"ui-ej-boss-koralon the flame watcher",
		"ui-ej-boss-taravon the ice watcher",
	}

	local ENCOUNTER_ID_CL = {
		31125, 33993, 35013, 38433,
		[31125] = 1, --Archavon the Stone Watcher
		[33993] = 2, --Emalon the Storm Watcher
		[35013] = 3, --Koralon the Flame Watcher
		[38433] = 4, --Toravon the Ice Watcher
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Archavon the Stone Watcher"],
		LBB["Emalon the Storm Watcher"],
		LBB["Koralon the Flame Watcher"],
		LBB["Toravon the Ice Watcher"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Vault of Archavon"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[31125] = 1, --Archavon the Stone Watcher
			[33993] = 2, --Emalon the Storm Watcher
			[35013] = 3, --Koralon the Flame Watcher
			[38433] = 4, --Toravon the Ice Watcher
		},
	})
end

do --> data for The Obsidian Sanctum
	local INSTANCE_MAPID = 532
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "TheObsidianSanctum"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenChamberBlack", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-obsidiansanctum"
	local EJ_LOREBG = "ui-ej-lorebg-obsidiansanctum"

	local PORTRAIT_LIST = {
		"ui-ej-boss-sartharion",
	}

	local ENCOUNTER_ID_CL = {
		28860,
		[28860] = 1, --Sartharion
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Sartharion"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["The Obsidian Sanctum"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[28860] = 1, --Sartharion
		},
	})
end

do --> data for The Eye of Eternity
	local INSTANCE_MAPID = 528
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "TheEyeofEternity"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenMalygos", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-eyeofeternity"
	local EJ_LOREBG = "ui-ej-lorebg-eyeofeternity"

	local PORTRAIT_LIST = {
		"ui-ej-boss-malygos",
	}

	local ENCOUNTER_ID_CL = {
		28859,
		[28859] = 1, --Malygos
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Malygos"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["The Eye of Eternity"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[28859] = 1, --Malygos
		},
	})
end

do --> data for Ulduar
	local INSTANCE_MAPID = 530
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "Ulduar"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenUlduarRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-ulduar"
	local EJ_LOREBG = "ui-ej-lorebg-ulduar"

	local PORTRAIT_LIST = {
		"ui-ej-boss-flame leviathan",
		"ui-ej-boss-ignis the furnace master",
		"ui-ej-boss-razorscale",
		"ui-ej-boss-xt 002 deconstructor",
		"ui-ej-boss-assembly of iron",
		"ui-ej-boss-kologarn",
		"ui-ej-boss-auriaya",
		"ui-ej-boss-hodir",
		"ui-ej-boss-thorim",
		"ui-ej-boss-freya",
		"ui-ej-boss-mimiron",
		"ui-ej-boss-general vezax",
		"ui-ej-boss-yogg saron",
		"ui-ej-boss-algalon the observer",
	}

	local ENCOUNTER_ID_CL = {
		33113, 33118, 33186, 33293, 32867, 32930, 33515, 32845, 32865, 32906, 33350, 33271, 33136, 32871,
		[33113] = 1, --Flame Leviathan
		[33118] = 2, --Ignis the Furnace Master
		[33186] = 3, --Razorscale
		[33293] = 4, --XT-002 Deconstructor
		[32867] = 5, --Assembly of Iron
		[32930] = 6, --Kologarn
		[33515] = 7, --Auriaya
		[32845] = 8, --Hodir
		[32865] = 9, --Thorim
		[32906] = 10, --Freya
		[33350] = 11, --Mimiron
		[33271] = 12, --General Vezax
		[33136] = 13, --Yogg-Saron
		[32871] = 14, --Algalon the Observer
	}

	--> install the raid
	local BOSSNAMES = {
		LBB["Flame Leviathan"],
		LBB["Ignis the Furnace Master"],
		LBB["Razorscale"],
		LBB["XT-002 Deconstructor"],
		LBB["Assembly of Iron"],
		LBB["Kologarn"],
		LBB["Auriaya"],
		LBB["Hodir"],
		LBB["Thorim"],
		LBB["Freya"],
		LBB["Mimiron"],
		LBB["General Vezax"],
		LBB["Yogg-Saron"],
		LBB["Algalon the Observer"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Ulduar"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = {
			[33113] = 1, --Flame Leviathan
			[33118] = 2, --Ignis the Furnace Master
			[33186] = 3, --Razorscale
			[33293] = 4, --XT-002 Deconstructor
			[32867] = 5, --Steelbreaker
			[32927] = 5, --Runemaster Molgeim
			[32857] = 5, --Stormcaller Brundir
			[32930] = 6, --Kologarn
			[32933] = 6, --Left Arm
			[32934] = 6, --Right Arm
			[33515] = 7, --Auriaya
			[32845] = 8, --Hodir
			[32865] = 9, --Thorim
			[32882] = 9, --Jormungar Behemoth
			[32906] = 10, --Freya
			[33350] = 11, --Mimiron
			[33271] = 12, --General Vezax
			[33136] = 13, --Guardian of Yogg-Saron
			[33288] = 13, --Yogg-Saron
			[32871] = 14, --Algalon the Observer
		},
	})
end

do --> data for Throne of the Tides
	local INSTANCE_MAPID = 767
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "ThroneoftheTides"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenThroneoftheTides", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-ThroneoftheTides"
	local EJ_LOREBG = "UI-EJ-LOREBG-ThroneoftheTides"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Lady NazJar",
		"UI-EJ-BOSS-Commander Ulthok",
		"UI-EJ-BOSS-Mindbender Ghursha",
		"UI-EJ-BOSS-Ozumat",
	}

	local BOSS_IDS = {
		[40586]	= 1,	-- Lady Naz'jar
		[49079] = 1,	-- Lady Naz'jar
		[40765]	= 2,	-- Commander Ulthok
		[49064]	= 2,	-- Commander Ulthok
		[40825]	= 3,	-- Erunak Stonespeaker
		[49072]	= 3,	-- Erunak Stonespeaker
		[40788]	= 3,	-- Mindbender Ghur'sha
		[49082]	= 3,	-- Mindbender Ghur'sha
		[49097]	= 4,	-- Ozumat
		[44566] = 4,	-- Ozumat
	}

	local ENCOUNTER_ID_CL = {
		[49079] = 1,	-- Lady Naz'jar
		[49064]	= 2,	-- Commander Ulthok
		[49082]	= 3,	-- Mindbender Ghur'sha
		[44566] = 4,	-- Ozumat
	}

	for k,v in pairs(ENCOUNTER_ID_CL) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Lady Naz'jar"],
		LBB["Commander Ulthok"],
		LBB["Mindbender Ghur'sha"],
		LBB["Ozumat"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Throne of the Tides"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Halls of Origination
	local INSTANCE_MAPID = 759
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "HallsofOrigination"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenHallsofOrigination", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-HallsofOrigination"
	local EJ_LOREBG = "UI-EJ-LOREBG-HallsofOrigination"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Temple Guardian Anhuur",
		"UI-EJ-BOSS-Earthrager Ptah",
		"UI-EJ-BOSS-Anraphet",
		"UI-EJ-BOSS-Isiset",
		"UI-EJ-BOSS-Ammunae",
		"UI-EJ-BOSS-Setesh",
		"UI-EJ-BOSS-Rajh",
	}

	local BOSS_IDS = {
		[39425]	= 1,	-- Temple Guardian Anhuur
		[49262] = 1,	-- Temple Guardian Anhuur
		[39428]	= 2,	-- Earthrager Ptah
		[48714]	= 2,	-- Earthrager Ptah
		[39788]	= 3,	-- Anraphet
		[48902]	= 3,	-- Anraphet
		[39587]	= 4,	-- Isiset
		[48710]	= 4,	-- Isiset
		[39731]	= 5,	-- Ammunae
		[48715]	= 5,	-- Ammunae
		[39732]	= 6,	-- Setesh
		[48776]	= 6,	-- Setesh
		[39378]	= 7,	-- Rajh
		[48815]	= 7,	-- Rajh
	}

	local ENCOUNTER_ID_CL = {
		[39425]	= 1,	-- Temple Guardian Anhuur
		[39428]	= 2,	-- Earthrager Ptah
		[39788]	= 3,	-- Anraphet
		[39587]	= 4,	-- Isiset
		[39731]	= 5,	-- Ammunae
		[39732]	= 6,	-- Setesh
		[39378]	= 7,	-- Rajh
	}

	for k,v in pairs(ENCOUNTER_ID_CL) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Temple Guardian Anhuur"],
		LBB["Earthrager Ptah"],
		LBB["Anraphet"],
		LBB["Isiset"],
		LBB["Ammunae"],
		LBB["Setesh"],
		LBB["Rajh"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Halls of Origination"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Blackrock Caverns
	local INSTANCE_MAPID = 753
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "BlackrockCaverns"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenBlackrockCaverns", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-BlackrockCaverns"
	local EJ_LOREBG = "UI-EJ-LOREBG-BlackrockCaverns"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Romogg Bonecrusher",
		"UI-EJ-BOSS-Corla, Herald of Twilight",
		"UI-EJ-BOSS-Karsh Steelbender",
		"UI-EJ-BOSS-Beauty",
		"UI-EJ-BOSS-Ascendant Lord Obsidius",
	}

	local BOSS_IDS = {
		[39665]	= 1,	-- Rom'ogg Bonecrusher
		[39666]	= 1,	-- Rom'ogg Bonecrusher
		[39679]	= 2,	-- Corla, Herald of Twilight
		[39680]	= 2,	-- Corla, Herald of Twilight
		[39698]	= 3,	-- Karsh Steelbender
		[39699]	= 3,	-- Karsh Steelbender
		[39700]	= 4,	-- Beauty
		[39701]	= 4,	-- Beauty
		[39705]	= 5,	-- Ascendant Lord Obsidius
		[39706]	= 5,	-- Ascendant Lord Obsidius
	}
	
	local ENCOUNTER_ID_CL = {
		[39665]	= 1,	-- Rom'ogg Bonecrusher
		[39679]	= 2,	-- Corla, Herald of Twilight
		[39698]	= 3,	-- Karsh Steelbender
		[39700]	= 4,	-- Beauty
		[39705]	= 5,	-- Ascendant Lord Obsidius
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Rom'ogg Bonecrusher"],
		LBB["Corla, Herald of Twilight"],
		LBB["Karsh Steelbender"],
		LBB["Beauty"],
		LBB["Ascendant Lord Obsidius"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Blackrock Caverns"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Vortex Pinnacle
	local INSTANCE_MAPID = 769
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "TheVortexPinnacle"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenSkywall", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-TheVortexPinnacle"
	local EJ_LOREBG = "UI-EJ-LOREBG-TheVortexPinnacle"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Grand Vizier Ertant",
		"UI-EJ-BOSS-Altairus",
		"UI-EJ-BOSS-Asaad",
	}

	local BOSS_IDS = {
		[43878]	= 1,	-- Grand Vizier Ertan
		[43879]	= 1,	-- Grand Vizier Ertan
		[43873]	= 2,	-- Altairus
		[43874]	= 2,	-- Altairus
		[43875]	= 3,	-- Asaad
		[43876]	= 3,	-- Asaad
	}
	
	local ENCOUNTER_ID_CL = {
		[43878]	= 1,	-- Grand Vizier Ertan
		[43873]	= 2,	-- Altairus
		[43875]	= 3,	-- Asaad
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Grand Vizier Ertan"],
		LBB["Altairus"],
		LBB["Asaad"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["The Vortex Pinnacle"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Grim Batol
	local INSTANCE_MAPID = 757
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "GrimBatol"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LOADSCREENGRIMBATOL", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-GrimBatol"
	local EJ_LOREBG = "UI-EJ-LOREBG-GrimBatol"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-General Umbriss",
		"UI-EJ-BOSS-Forgemaster Throngus",
		"UI-EJ-BOSS-Drahga Shadowburner",
		"UI-EJ-BOSS-Erudax",
	}

	local BOSS_IDS = {
		[39625]	= 1,	-- General Umbriss
		[48337]	= 1,	-- General Umbriss
		[40177]	= 2,	-- Forgemaster Throngus
		[48702]	= 2,	-- Forgemaster Throngus
		[40319]	= 3,	-- Drahga Shadowburner
		[48784]	= 3,	-- Drahga Shadowburner
		[40484]	= 4,	-- Erudax
		[48822]	= 4,	-- Erudax
	}
	
	local ENCOUNTER_ID_CL = {
		[39625]	= 1,	-- General Umbriss
		[40177]	= 2,	-- Forgemaster Throngus
		[40319]	= 3,	-- Drahga Shadowburner
		[40484]	= 4,	-- Erudax
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["General Umbriss"],
		LBB["Forgemaster Throngus"],
		LBB["Drahga Shadowburner"],
		LBB["Erudax"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Grim Batol"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Stonecore
	local INSTANCE_MAPID = 768
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "TheStonecore"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LOADSCREENDEEPHOLMDUNGEON", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-TheStonecore"
	local EJ_LOREBG = "UI-EJ-LOREBG-TheStonecore"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Corborus",
		"UI-EJ-BOSS-Slabhide",
		"UI-EJ-BOSS-Ozruk",
		"UI-EJ-BOSS-High Priestess Azil",
	}

	local BOSS_IDS = {
		[43438]	= 1,	-- Corborus
		[49642]	= 1,	-- Corborus
		[43214]	= 2,	-- Slabhide
		[49538]	= 2,	-- Slabhide
		[42188]	= 3,	-- Ozruk
		[49654]	= 3,	-- Ozruk
		[42333]	= 4,	-- High Priestess Azil
		[49624]	= 4,	-- High Priestess Azil
	}
	
	local ENCOUNTER_ID_CL = {
		[43438]	= 1,	-- Corborus
		[43214]	= 2,	-- Slabhide
		[42188]	= 3,	-- Ozruk
		[42333]	= 4,	-- High Priestess Azil
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Corborus"],
		LBB["Slabhide"],
		LBB["Ozruk"],
		LBB["High Priestess Azil"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["The Stonecore"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Lost City of the Tol'Vir
	local INSTANCE_MAPID = 747
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "LostCityofTolvir"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenLostCityofTolvir", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-LostCityofTolvir"
	local EJ_LOREBG = "UI-EJ-LOREBG-LostCityofTolvir"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-General Husam",
		"UI-EJ-BOSS-Lockmaw",
		"UI-EJ-BOSS-Augh",
		"UI-EJ-BOSS-High Prophet Barim",
		"UI-EJ-BOSS-Siamat",
	}

	local BOSS_IDS = {
		[44577]	= 1,	-- General Husam
		[48932]	= 1,	-- General Husam
		[43614]	= 2,	-- Lockmaw
		[49043]	= 2,	-- Lockmaw
		[49045]	= 3,	-- Augh
		[43612]	= 4,	-- High Prophet Barim
		[48951]	= 4,	-- High Prophet Barim
		[44819]	= 5,	-- Siamat
		[51088]	= 5,	-- Siamat
	}
	
	local ENCOUNTER_ID_CL = {
		[44577]	= 1,	-- General Husam
		[43614]	= 2,	-- Lockmaw
		[49045]	= 3,	-- Augh
		[43612]	= 4,	-- High Prophet Barim
		[44819]	= 5,	-- Siamat
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["General Husam"],
		LBB["Lockmaw"],
		LBB["Augh"],
		LBB["High Prophet Barim"],
		LBB["Siamat"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Lost City of the Tol'vir"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Zul'Aman
	local INSTANCE_MAPID = 781
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "ZulAman"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenZulAman2", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-ZulAman"
	local EJ_LOREBG = "UI-EJ-LOREBG-ZulAman"

	local PORTRAIT_LIST = {
		"ui-ej-boss-akilzon",
		"ui-ej-boss-nalorakk",
		"ui-ej-boss-janalai",
		"ui-ej-boss-halazzi",
		"ui-ej-boss-hex lord malacrass",
		"UI-EJ-BOSS-Daakara",
	}

	local BOSS_IDS = {
		[23574]	= 1,	-- Akil'zon
		[29024]	= 2,	-- Nalorakk
		[28514]	= 2,	-- Nalorakk
		[23576]	= 2,	-- Nalorakk
		[23578]	= 3,	-- Jan'alai
		[28515]	= 3,	-- Jan'alai
		[29023]	= 3,	-- Jan'alai
		[23577]	= 4,	-- Halazzi
		[28517]	= 4,	-- Halazzi
		[29022]	= 4,	-- Halazzi
		[24239]	= 5,	-- Malacrass
		[23863]	= 6,	-- Daakara
	}

	local ENCOUNTER_ID_CL = {
		[23574] = 1, --Akil'zon
		[23576] = 2, --Nalorakk
		[23578] = 3, --Jan'alai
		[23577] = 4, --Halazzi
		[24239] = 5, --Malacrass
		[23863] = 6, --Zul'jin
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Akil'zon"],
		LBB["Nalorakk"],
		LBB["Jan'alai"],
		LBB["Halazzi"],
		LBB["Hex Lord Malacrass"],
		LBB["Daakara"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Zul'Aman"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Zul'Gurub
	local INSTANCE_MAPID = 793
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "ZulGurub"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenZulGurub", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-ZulGurub"
	local EJ_LOREBG = "UI-EJ-LOREBG-ZulGurub"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-High Priest Venoxis",
		"UI-EJ-BOSS-Bloodlord Mandokir",
		"UI-EJ-BOSS-Renataki",
		"UI-EJ-BOSS-Grilek",
		"UI-EJ-BOSS-Hazzarah",
		"UI-EJ-BOSS-Wushoolay",
		"UI-EJ-BOSS-High Priestess Kilnara",
		"UI-EJ-BOSS-Zanzil the Outcast",
		"UI-EJ-BOSS-Jindo the Godbreaker",
	}

	local BOSS_IDS = {
		[52155]	= 1,	-- High Priest Venoxis
		[52151]	= 2,	-- Bloodlord Mandokir
		[52269]	= 3,	-- Renataki
		[52258]	= 4,	-- Gri'lek
		[52271]	= 5,	-- Hazza'rah
		[52286]	= 6,	-- Wushoolay
		[52059]	= 7,	-- High Priestess Kilnara
		[52053]	= 8,	-- Zanzil
		[52148]	= 9,	-- Jin'do the Godbreaker
	}
	
	local ENCOUNTER_ID_CL = BOSS_IDS

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["High Priest Venoxis"],
		LBB["Bloodlord Mandokir"],
		LBB["Renataki"],
		LBB["Gri'lek"],
		LBB["Hazza'rah"],
		LBB["Wushoolay"],
		LBB["High Priestess Kilnara"],
		LBB["Zanzil"],
		LBB["Jin'do the Godbreaker"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Zul'Gurub"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Blackwing Descent
	local INSTANCE_MAPID = 754
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "BlackwingDescent"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenBlackwingDescentRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-BlackwingDescent"
	local EJ_LOREBG = "UI-EJ-LOREBG-BlackwingDescent"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Magmaw",
		"UI-EJ-BOSS-Magmatron",
		"UI-EJ-BOSS-Maloriak",
		"UI-EJ-BOSS-Atramedes",
		"UI-EJ-BOSS-Chimaeron",
		"UI-EJ-BOSS-NefarianBWD",
	}

	local BOSS_IDS = {
		[41570]	= 1,	-- Magmaw
		[51101]	= 1,	-- Magmaw
		[51102]	= 1,	-- Magmaw
		[51103]	= 1,	-- Magmaw
		[42166]	= 2,	-- Arcanotron
		[49056]	= 2,	-- Arcanotron
		[49057]	= 2,	-- Arcanotron
		[49058]	= 2,	-- Arcanotron
		[42178]	= 2,	-- Magmatron
		[49053]	= 2,	-- Magmatron
		[49054]	= 2,	-- Magmatron
		[49055]	= 2,	-- Magmatron
		[42179]	= 2,	-- Electron
		[49047]	= 2,	-- Electron
		[49048]	= 2,	-- Electron
		[49049]	= 2,	-- Electron
		[42180]	= 2,	-- Toxitron
		[49050]	= 2,	-- Toxitron
		[49051]	= 2,	-- Toxitron
		[49052]	= 2,	-- Toxitron
		[41378]	= 3,	-- Maloriak
		[49974]	= 3,	-- Maloriak
		[49980]	= 3,	-- Maloriak
		[49986]	= 3,	-- Maloriak
		[41442]	= 4,	-- Atramedes
		[49583]	= 4,	-- Atramedes
		[49584]	= 4,	-- Atramedes
		[49585]	= 4,	-- Atramedes
		[43296]	= 5,	-- Chimaeron
		[47774]	= 5,	-- Chimaeron
		[47775]	= 5,	-- Chimaeron
		[47776]	= 5,	-- Chimaeron
		[41270] = 6,	-- Onyxia
		[51116] = 6,	-- Onyxia
		[51117] = 6,	-- Onyxia
		[51118] = 6,	-- Onyxia
		[41376]	= 6,	-- Nefarian
		[51104]	= 6,	-- Nefarian
		[51105]	= 6,	-- Nefarian
		[51106]	= 6,	-- Nefarian
	}

	local ENCOUNTER_ID_CL = {
		[41570]	= 1,	-- Magmaw
		[42178]	= 2,	-- Magmatron
		[41378]	= 3,	-- Maloriak
		[41442]	= 4,	-- Atramedes
		[43296]	= 5,	-- Chimaeron
		[41376]	= 6,	-- Nefarian
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Magmaw"],
		LBB["Omnitron Defense System"],
		LBB["Maloriak"],
		LBB["Atramedes"],
		LBB["Chimaeron"],
		LBB["Nefarian"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Blackwing Descent"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Bastion of Twilight
	local INSTANCE_MAPID = 758
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "GrimBatolRaid"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenGrimBatolRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-GrimBatolRaid"
	local EJ_LOREBG = "UI-EJ-LOREBG-GrimBatolRaid"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Halfus Wyrmbreaker",
		"UI-EJ-BOSS-Valiona Raid",
		"UI-EJ-BOSS-Feludius",
		"UI-EJ-BOSS-Chogall",
		"UI-EJ-BOSS-Sinestra",
	}

	local BOSS_IDS = {
		[44600]	= 1,	-- Halfus Wyrmbreaker
		[46209]	= 1,	-- Halfus Wyrmbreaker
		[46210]	= 1,	-- Halfus Wyrmbreaker
		[46211]	= 1,	-- Halfus Wyrmbreaker
		[45992]	= 2,	-- Valiona
		[49897]	= 2,	-- Valiona
		[49898]	= 2,	-- Valiona
		[49899]	= 2,	-- Valiona
		[45993]	= 2,	-- Theralion
		[49903]	= 2,	-- Theralion
		[49904]	= 2,	-- Theralion
		[49905]	= 2,	-- Theralion
		[43686]	= 3,	-- Ignacious
		[49615]	= 3,	-- Ignacious
		[49616]	= 3,	-- Ignacious
		[49617]	= 3,	-- Ignacious
		[43687]	= 3,	-- Feludius
		[49612]	= 3,	-- Feludius
		[49613]	= 3,	-- Feludius
		[49614]	= 3,	-- Feludius
		[43688]	= 3,	-- Arion
		[43688]	= 3,	-- Arion
		[43688]	= 3,	-- Arion
		[43688]	= 3,	-- Arion
		[43689]	= 3,	-- Terrastra
		[49606]	= 3,	-- Terrastra
		[49607]	= 3,	-- Terrastra
		[49608]	= 3,	-- Terrastra
		[43735]	= 3,	-- Elementium Monstrosity
		[49619]	= 3,	-- Elementium Monstrosity
		[49620]	= 3,	-- Elementium Monstrosity
		[49621]	= 3,	-- Elementium Monstrosity
		[43324]	= 4, 	-- Cho'gall
		[50131]	= 4, 	-- Cho'gall
		[50132]	= 4, 	-- Cho'gall
		[50133]	= 4, 	-- Cho'gall
		[45213]	= 5,	-- Sinestra
		[49744]	= 5,	-- Sinestra
	}

	local ENCOUNTER_ID_CL = {
		[44600]	= 1,	-- Halfus
		[45992]	= 2,	-- Valiona
		[43735] = 3,	-- Elementium Monstrosity
		[43324] = 4,	-- Cho'gall
		[45213] = 5,	-- Sinestra
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Halfus Wyrmbreaker"],
		LBB["Valiona and Theralion"],
		LBB["Ascendant Council"],
		LBB["Cho'gall"],
		LBB["Sinestra"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["The Bastion of Twilight"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Throne of the Four Winds
	local INSTANCE_MAPID = 773
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "SkywallRaid"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenSkywallRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-SkywallRaid"
	local EJ_LOREBG = "UI-EJ-LOREBG-SkywallRaid"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Anshal",
		"UI-EJ-BOSS-AlAkir",
	}

	local BOSS_IDS = {
		[45870]	= 1,	-- Anshal
		[50103]	= 1,	-- Anshal
		[50113]	= 1,	-- Anshal
		[50123]	= 1,	-- Anshal
		[45871]	= 1,	-- Nezir
		[50098]	= 1,	-- Nezir
		[50108]	= 1,	-- Nezir
		[50118]	= 1,	-- Nezir
		[45872]	= 1,	-- Rohash
		[50095]	= 1,	-- Rohash
		[50105]	= 1,	-- Rohash
		[50115]	= 1,	-- Rohash
		[46753]	= 2,	-- Al'Akir
		[50203]	= 2,	-- Al'Akir
		[50217]	= 2,	-- Al'Akir
		[50231]	= 2,	-- Al'Akir
	}

	local ENCOUNTER_ID_CL = {
		[45871]	= 1,	-- Nezir
		[46753]	= 2,	-- Al'Akir
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Conclave of Wind"],
		LBB["Al'Akir"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Throne of the Four Winds"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Firelands
	local INSTANCE_MAPID = 800
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "Firelands"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenFirelandsRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-firelands1"
	local EJ_LOREBG = "ui-ej-lorebg-firelands1"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Bethtilac The Red Widow",
		"UI-EJ-BOSS-Lord Rhyolith",
		"UI-EJ-BOSS-Alysrazor",
		"UI-EJ-BOSS-Shannox",
		"UI-EJ-BOSS-Baleroc",
		"UI-EJ-BOSS-Fandral Staghelm",
		"UI-EJ-BOSS-Ragnaros",
	}

	local BOSS_IDS = {
		[52498]	= 1,	-- Bethtilac
		[53576]	= 1,	-- Bethtilac
		[53577]	= 1,	-- Bethtilac
		[53578]	= 1,	-- Bethtilac
		[52558]	= 2,	-- Rhyolith
		[52559]	= 2,	-- Rhyolith
		[52560]	= 2,	-- Rhyolith
		[52561]	= 2,	-- Rhyolith
		[52530]	= 3,	-- Alysrazor
		[54044]	= 3,	-- Alysrazor
		[54045]	= 3,	-- Alysrazor
		[54046]	= 3,	-- Alysrazor
		[53691]	= 4,	-- Shannox
		[53979]	= 4,	-- Shannox
		[54079]	= 4,	-- Shannox
		[54080]	= 4,	-- Shannox
		[53494]	= 5,	-- Baleroc
		[53587]	= 5,	-- Baleroc
		[53588]	= 5,	-- Baleroc
		[53589]	= 5,	-- Baleroc
		[52571]	= 6,	-- FandralStaghelm
		[53856]	= 6,	-- FandralStaghelm
		[53857]	= 6,	-- FandralStaghelm
		[53858]	= 6,	-- FandralStaghelm
		[52409]	= 7,	-- Ragnaros
		[53797]	= 7,	-- Ragnaros
		[53798]	= 7,	-- Ragnaros
		[53799]	= 7,	-- Ragnaros
	}

	local ENCOUNTER_ID_CL = BOSS_IDS

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Beth'tilac"],
		LBB["Lord Rhyolith"],
		LBB["Alysrazor"],
		LBB["Shannox"],
		LBB["Baleroc"],
		LBB["Majordomo Staghelm"],
		LBB["Ragnaros"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Firelands"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for End Time
	local INSTANCE_MAPID = 820
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "EndTime"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenEndTime", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-EndTime"
	local EJ_LOREBG = "UI-EJ-LOREBG-EndTime"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-BaineBloodhoof",
		"UI-EJ-BOSS-JainaProudmoore",
		"UI-EJ-BOSS-SylvanasWindrunner",
		"UI-EJ-BOSS-TyrandeWhisperwind",
		"UI-EJ-BOSS-Murozond",
	}

	local BOSS_IDS = {
		[54431]	= 1,	-- Echo of Baine
		[54445] = 2,	-- Echo of Jaina
		[54123] = 3,	-- Echo of Sylvanas
		[54544] = 4,	-- Echo of Tyrande
		[54432] = 5,	-- Murozond
	}

	local ENCOUNTER_ID_CL = BOSS_IDS

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Echo of Baine"],
		LBB["Echo of Jaina"],
		LBB["Echo of Sylvanas"],
		LBB["Echo of Tyrande"],
		LBB["Murozond"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["End Time"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Well of Eternity
	local INSTANCE_MAPID = 816
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "WellOfEternity"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenWellofEternity", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-WellOfEternity"
	local EJ_LOREBG = "UI-EJ-LOREBG-WellOfEternity"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Perotharn",
		"UI-EJ-BOSS-QueenAzshara",
		"UI-EJ-BOSS-Mannoroth",
	}

	local BOSS_IDS = {
		[55085]	= 1,	-- Peroth'arn
		[54853]	= 2,	-- Queen Azshara
		[54969]	= 3,	-- Mannoroth
		[55419]	= 3,	-- Varo'then
	}

	local ENCOUNTER_ID_CL = {
		[55085]	= 1,	-- Peroth'arn
		[54853]	= 2,	-- Queen Azshara
		[54969]	= 3,	-- Mannoroth
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Peroth'arn"],
		LBB["Queen Azshara"],
		LBB["Mannoroth"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Well of Eternity"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Hour of Twilight
	local INSTANCE_MAPID = 819
	local HDIMAGESPATH = "Details\\images\\dungeon"
	local HDFILEPREFIX = "HourOfTwilight"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenHourofTwilight", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "UI-EJ-DUNGEONBUTTON-HourOfTwilight"
	local EJ_LOREBG = "UI-EJ-LOREBG-HourOfTwilight"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Arcurion",
		"UI-EJ-BOSS-Asira Dawnslayer",
		"UI-EJ-BOSS-Archbishop Benedictus",
	}

	local BOSS_IDS = {
		[54590]	= 1,	-- Arcurion
		[54968]	= 2,	-- Asira Dawnslayer
		[54938]	= 3,	-- Archbishop Benedictus
	}

	local ENCOUNTER_ID_CL = BOSS_IDS

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Arcurion"],
		LBB["Asira Dawnslayer"],
		LBB["Archbishop Benedictus"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Hour of Twilight"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = false,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end

do --> data for Dragon Soul
	local INSTANCE_MAPID = 824
	local HDIMAGESPATH = "Details\\images\\raid"
	local HDFILEPREFIX = "Dragon Soul"
	local LOADINGSCREEN_FILE, LOADINGSCREEN_COORDS = "LoadScreenDeathwingRaid", {0, 1, 285/1024, 875/1024}
	local EJ_DUNGEONBG = "ui-ej-dungeonbutton-dragonsoul"
	local EJ_LOREBG = "ui-ej-lorebg-dragonsoul"

	local PORTRAIT_LIST = {
		"UI-EJ-BOSS-Morchok",
		"UI-EJ-BOSS-Warlord Zonozz",
		"UI-EJ-BOSS-Yorsahj the Unsleeping",
		"UI-EJ-BOSS-Hagara",
		"UI-EJ-BOSS-Ultraxion",
		"UI-EJ-BOSS-WarmasterBlackhorn",
		"UI-EJ-BOSS-Deathwing",
		"UI-EJ-BOSS-Corrupted Deathwing",
	}

	local BOSS_IDS = {
		[55265]	= 1,	-- Morchok
		[57409]	= 1,	-- Morchok
		[57771]	= 1,	-- Morchok
		[57772]	= 1,	-- Morchok
		[55308]	= 2,	-- Warlord Zonozz
		[55309]	= 2,	-- Warlord Zonozz
		[55310]	= 2,	-- Warlord Zonozz
		[55311]	= 2,	-- Warlord Zonozz
		[55312]	= 3,	-- Yor'sahj the Unsleeping
		[55313]	= 3,	-- Yor'sahj the Unsleeping
		[55314]	= 3,	-- Yor'sahj the Unsleeping
		[55315]	= 3,	-- Yor'sahj the Unsleeping
		[55689]	= 4,	-- Hagara the Binder
		[57462]	= 4,	-- Hagara the Binder
		[57955]	= 4,	-- Hagara the Binder
		[57956]	= 4,	-- Hagara the Binder
		[55294]	= 5,	-- Ultraxion
		[56576]	= 5,	-- Ultraxion
		[56577]	= 5,	-- Ultraxion
		[56578]	= 5,	-- Ultraxion
		[56427]	= 6,	-- Warmaster Blackhorn
		[57699]	= 6,	-- Warmaster Blackhorn
		[57847]	= 6,	-- Warmaster Blackhorn
		[57848]	= 6,	-- Warmaster Blackhorn
		[53891] = 7,	-- Corruption
		[57879] = 7,	-- Corruption
		[57880] = 7,	-- Corruption
		[57881] = 7,	-- Corruption
		[56161] = 7,	-- Corruption
		[57901] = 7,	-- Corruption
		[57902] = 7,	-- Corruption
		[57903] = 7,	-- Corruption
		[56162] = 7,	-- Corruption
		[57904] = 7,	-- Corruption
		[57905] = 7,	-- Corruption
		[57906] = 7,	-- Corruption
		[56575] = 7,	-- Burning Tendons
		[57887] = 7,	-- Burning Tendons
		[57888] = 7,	-- Burning Tendons
		[57889] = 7,	-- Burning Tendons
		[56341] = 7,	-- Burning Tendons
		[57884] = 7,	-- Burning Tendons
		[57885] = 7,	-- Burning Tendons
		[57886] = 7,	-- Burning Tendons
		[53879]	= 7,	-- Spine Deathwing
		[56168] = 8,	-- Wing Tentacle
		[57972] = 8,	-- Wing Tentacle
		[58129] = 8,	-- Wing Tentacle
		[58130] = 8,	-- Wing Tentacle
		[58131] = 8,	-- Arm Tentacle
		[58133] = 8,	-- Arm Tentacle
		[58132] = 8,	-- Arm Tentacle
		[58134] = 8,	-- Arm Tentacle
		[56167] = 8,	-- Arm Tentacle
		[56846] = 8,	-- Arm Tentacle
		[57973] = 8,	-- Arm Tentacle
		[57974] = 8,	-- Arm Tentacle
		[56173]	= 8,	-- Madness Deathwing
		[57969]	= 8,	-- Madness Deathwing
		[58000]	= 8,	-- Madness Deathwing
		[58001]	= 8,	-- Madness Deathwing
	}

	local ENCOUNTER_ID_CL = {
		[55265]	= 1,	-- Morchok
		[55308]	= 2,	-- Warlord Zonozz
		[55312]	= 3,	-- Yor'sahj the Unsleeping
		[55689]	= 4,	-- Hagara the Binder
		[55294]	= 5,	-- Ultraxion
		[56427]	= 6,	-- Warmaster Blackhorn
		[53879]	= 7,	-- Spine Deathwing
		[56173]	= 8,	-- Madness Deathwing
	}

	for k,v in pairs(BOSS_IDS) do
		ENCOUNTER_ID_CL[v] = k
	end

	--> install the raid
	local BOSSNAMES = {
		LBB["Morchok"],
		LBB["Warlord Zon'ozz"],
		LBB["Yor'sahj the Unsleeping"],
		LBB["Hagara the Stormbinder"],
		LBB["Ultraxion"],
		LBB["Warmaster Blackhorn"],
		LBB["Spine of Deathwing"],
		LBB["Madness of Deathwing"],
	}

	local ENCOUNTERS = {}

	for i = 1, #PORTRAIT_LIST do
		local encounterTable = {
			boss = BOSSNAMES[i],
			portrait = "Interface\\EncounterJournal\\"..PORTRAIT_LIST[i],
		}
		tinsert(ENCOUNTERS, encounterTable)
	end

	_detalhes:InstallEncounter({
		id = INSTANCE_MAPID, --map id
		name = LBZ["Dragon Soul"],
		icons = "Interface\\AddOns\\"..HDIMAGESPATH.."\\"..HDFILEPREFIX.."_BossFaces",
		icon = "Interface\\EncounterJournal\\"..EJ_DUNGEONBG,
		is_raid = true,
		backgroundFile = {file = "Interface\\Glues\\LOADINGSCREENS\\"..LOADINGSCREEN_FILE, coords = LOADINGSCREEN_COORDS},
		backgroundEJ = "Interface\\EncounterJournal\\"..EJ_LOREBG,

		encounter_ids2 = ENCOUNTER_ID_CL,
		boss_names = BOSSNAMES,
		encounters = ENCOUNTERS,

		boss_ids = BOSS_IDS,
	})
end
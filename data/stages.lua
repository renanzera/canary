-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{ minlevel = 1, maxlevel = 7, multiplier = 100},
    { minlevel = 8, maxlevel = 60, multiplier = 400 },
    { minlevel = 61, maxlevel = 100, multiplier = 350 },
    { minlevel = 101, maxlevel = 150, multiplier = 300 },
    { minlevel = 151, maxlevel = 200, multiplier = 250 },
    { minlevel = 201, maxlevel = 250, multiplier = 150 },
    { minlevel = 251, maxlevel = 300, multiplier = 125 },
    { minlevel = 301, maxlevel = 350, multiplier = 100 },
    { minlevel = 351, maxlevel = 400, multiplier = 80 },
    { minlevel = 401, maxlevel = 500, multiplier = 40 },
    { minlevel = 501, maxlevel = 600, multiplier = 20 },
    { minlevel = 601, maxlevel = 700, multiplier = 10 },
    { minlevel = 701, maxlevel = 800, multiplier = 8 },
    { minlevel = 801, maxlevel = 900, multiplier = 5 },
    { minlevel = 901, maxlevel = 1000, multiplier = 4 },
    { minlevel = 1001, maxlevel = 1200, multiplier = 3 },
    { minlevel = 1201, maxlevel = 1600, multiplier = 2 },
    { minlevel = 1601, maxlevel = 2450, multiplier = 1.2 },
    { minlevel = 2451, maxlevel = 9999, multiplier = 0.8 },
}

skillsStages = {
    { minlevel = 10, maxlevel = 60, multiplier = 40 },
    { minlevel = 61, maxlevel = 80, multiplier = 30 },
    { minlevel = 81, maxlevel = 110, multiplier = 15 },
    { minlevel = 111, maxlevel = 125, multiplier = 10 },
    { minlevel = 126, maxlevel = 135, multiplier = 5 },
    { minlevel = 136, maxlevel = 9999, multiplier = 2 },
}

magicLevelStages = {
	{ minlevel = 1, maxlevel = 58, multiplier = 2 },
    { minlevel = 59, maxlevel = 80, multiplier = 15 },
    { minlevel = 81, maxlevel = 100, multiplier = 10 },
    { minlevel = 101, maxlevel = 110, multiplier = 8 },
    { minlevel = 111, maxlevel = 125, multiplier = 6 },
    { minlevel = 126, maxlevel = 135, multiplier = 4 },
    { minlevel = 136, maxlevel = math.huge, multiplier = 2 },
}

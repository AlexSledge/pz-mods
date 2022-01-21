Distributions = Distributions or {};

local distributionTable = {

-- =====================
--    Room List (A-Z)
-- =====================

    all = {
        postbox = {
            rolls = 3,
            items = {
              --Magazines
              "GunnutMonthly1", 4,
              "GunnutMonthly2", 4,
              "GunnutMonthly3", 3,
              "GunnutMonthly4", 3,
              "GunnutMonthly5", 2,
              "GunnutMonthly6", 1,
              "GunnutBible", 1,
            }
        },
        sidetable = {
            rolls = 1,
            items = {
              --Magazines
              "GunnutMonthly1", 1,
              "GunnutMonthly2", 1,
              "GunnutMonthly3", 0.5,
              "GunnutMonthly4", 0.5,
              "GunnutMonthly5", 0.25,
              "GunnutMonthly6", 0.1,
              "GunnutBible", 0.05,
            },
            junk = {
                rolls = 1,
                items = {
                  --Magazines
                  "GunnutMonthly1", 1,
                  "GunnutMonthly2", 1,
                  "GunnutMonthly3", 0.5,
                  "GunnutMonthly4", 0.5,
                  "GunnutMonthly5", 0.25,
                  "GunnutMonthly6", 0.1,
                  "GunnutBible", 0.05,
                }
            }
        },
        bin = {
            rolls = 1,
            items = {
              --Magazines
              "GunnutMonthly1", 1,
              "GunnutMonthly2", 1,
              "GunnutMonthly3", 0.5,
              "GunnutMonthly4", 0.5,
              "GunnutMonthly5", 0.25,
              "GunnutMonthly6", 0.1,
              "GunnutBible", 0.05,
            }
        },
        shelves = {
            rolls = 3,
            items = {
              --Magazines
              "GunnutMonthly1", 1,
              "GunnutMonthly2", 1,
              "GunnutMonthly3", 0.5,
              "GunnutMonthly4", 0.5,
              "GunnutMonthly5", 0.25,
              "GunnutMonthly6", 0.1,
              "GunnutBible", 0.05,
            }
        },
        other = {
            rolls = 1,
            items = {
              --Magazines
              "GunnutMonthly1", 1,
              "GunnutMonthly2", 1,
              "GunnutMonthly3", 0.5,
              "GunnutMonthly4", 0.5,
              "GunnutMonthly5", 0.25,
              "GunnutMonthly6", 0.1,
              "GunnutBible", 0.05,
              "Saltpeter", 1,
              "Sulfur", 1,
              "Reloadingpress", 1,
              "Pliers", 4,
            }
        }
    },

    armyhanger = {
        metal_shelves = {
            rolls = 3,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
              --Molds
              "45BulletsMold", 1,
              "44BulletsMold", 1,
              "38BulletsMold", 1,
              "556BulletsMold", 1,
              "Reloadingpress", 1,
              "Pliers", 4,
            }
        },

        counter = {
            rolls = 3,
            items = {
              "Reloadingpress", 1,
              "Pliers", 4,
            }
        },

        locker = {
            rolls = 3,
            items = {
              "Reloadingpress", 1,
              "Pliers", 4,
            }
        }
    },

    armystorage = {
        locker = {
            rolls = 2,
            items = {
              "Reloadingpress", 1,
              "Pliers", 4,
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
            },
        },

        metal_shelves =
        {
            rolls = 2,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
            }
        },
    },

    armysurplus = {
        isShop = true,
        shelves = {
            rolls = 3,
            items = {
              "Reloadingpress", 1,
              "Pliers", 4,
              --Casings
              "Bullets9mm_casingbox", 1,
              "Bullets45_casingbox", 1,
              "Bullets44_casingbox", 1,
              "Bullets38_casingbox", 1,
              "308Bullets_casingbox", 0.5,
              "223Bullets_casingbox", 0.5,
              "556Bullets_casingbox", 0.1,
              "ShotgunShells_casingbox", 5,
              --Tips
              "Bullets9mm_tipbox", 1,
              "Bullets45_tipbox", 1,
              "Bullets44_tipbox", 1,
              "Bullets38_tipbox", 1,
              "308Bullets_tipbox", 0.5,
              "223Bullets_tipbox", 0.5,
              "556Bullets_tipbox", 0.1,
              "ShotgunShells_tipbox", 5,
              --Primers
              "SP_Primers_box", 2.5,
              "LP_Primers_box", 1,
              "R_Primers_box", 0.5,
              "SG_Primers_box", 5,
              --Gunpowder
              "GunpowderJar", 5,
            }
        },

        metal_shelves = {
            rolls = 3,
            items = {
              "Reloadingpress", 1,
              "Pliers", 4,
              --Casings
              "Bullets9mm_casingbox", 1,
              "Bullets45_casingbox", 1,
              "Bullets44_casingbox", 1,
              "Bullets38_casingbox", 1,
              "308Bullets_casingbox", 0.5,
              "223Bullets_casingbox", 0.5,
              "556Bullets_casingbox", 0.1,
              "ShotgunShells_casingbox", 5,
              --Tips
              "Bullets9mm_tipbox", 1,
              "Bullets45_tipbox", 1,
              "Bullets44_tipbox", 1,
              "Bullets38_tipbox", 1,
              "308Bullets_tipbox", 0.5,
              "223Bullets_tipbox", 0.5,
              "556Bullets_tipbox", 0.1,
              "ShotgunShells_tipbox", 5,
              --Primers
              "SP_Primers_box", 2.5,
              "LP_Primers_box", 1,
              "R_Primers_box", 0.5,
              "SG_Primers_box", 5,
              --Gunpowder
              "GunpowderJar", 5,
            }
        },
    },

    gunstore = {
        isShop = true,
        counter = {
            rolls = 3,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
            },
            dontSpawnAmmo = true,
        },

        displaycase = {
            rolls = 3,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
            },
            dontSpawnAmmo = true,
        },

        locker = {
            rolls = 3,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
            },
            dontSpawnAmmo = true,
        },

        metal_shelves = {
            rolls = 3,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
            },
            dontSpawnAmmo = true,
        },
    },

    gunstorestorage = {
        isShop = true,
        all= {
            rolls = 3,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
            },

            dontSpawnAmmo = true,
        },
    },

    loggingfactory = {
        crate = {
            rolls = 1,
            items = {
              "Saltpeter", 4,
              "Sulfur", 4,
              "Pliers", 4,
            }
        }
    },

    security = {
        locker = {
            rolls = 3,
            items = {
            "Pliers", 4,
            },
            dontSpawnAmmo = true,
        }
    },

    storageunit = {
        all = {
            rolls = 3,
            items = {
              --Casings
              "Bullets9mm_casingbox", 5,
              "Bullets45_casingbox", 5,
              "Bullets44_casingbox", 5,
              "Bullets38_casingbox", 5,
              "308Bullets_casingbox", 3,
              "223Bullets_casingbox", 3,
              "556Bullets_casingbox", 1,
              "ShotgunShells_casingbox", 10,
              --Tips
              "Bullets9mm_tipbox", 5,
              "Bullets45_tipbox", 5,
              "Bullets44_tipbox", 5,
              "Bullets38_tipbox", 5,
              "308Bullets_tipbox", 3,
              "223Bullets_tipbox", 3,
              "556Bullets_tipbox", 1,
              "ShotgunShells_tipbox", 10,
              --Primers
              "SP_Primers_box", 5,
              "LP_Primers_box", 3,
              "R_Primers_box", 1,
              "SG_Primers_box", 10,
              --Gunpowder
              "GunpowderJar", 5,
              "Reloadingpress", 1,
              "Pliers", 4,
            }
        }
    },

    toolstore = {
        isShop = true,
        shelves = {
            rolls = 3,
            items = {
                "Pliers", 7,
                "Reloadingpress", 0.7,
            }
        },

        counter = {
            rolls = 2,
            items = {
              "Pliers", 7,
              "Reloadingpress", 0.7,
            }
        },
    },

    Toolbox = {
        rolls = 3,
        items = {
            "Pliers", 2,
        },
        fillRand = 0,
    },


-- ===================
--  Profession Houses
-- ===================

    Electrician = {
        counter = {
            rolls = 3,
            items = {
                "Pliers", 4,
            }
        },
    },
}

table.insert(Distributions, 1, distributionTable);

--for mod compat:
SuburbsDistributions = distributionTable;

--*******All Items***************--
--"Base.Reloadingpress"
--"Base.Pliers"
--"Base.ShotgunShells_casingbox"
--"Base.Bullets9mm_casingbox"
--"Base.Bullets45_casingbox"
--"Base.Bullets44_casingbox"
--"Base.Bullets38_casingbox"
--"Base.223Bullets_casingbox"
--"Base.556Bullets_casingbox"
--"Base.308Bullets_casingbox"
--"Base.GunnutMonthly1"
--"Base.GunnutMonthly2"
--"Base.GunnutMonthly3"
--"Base.GunnutMonthly4"
--"Base.GunnutMonthly5"
--"Base.9mmBulletsMold"
--"Base.45BulletsMold"
--"Base.44BulletsMold"
--"Base.38BulletsMold"
--"Base.308BulletsMold"
--"Base.223BulletsMold"
--"Base.556BulletsMold"
--"Base.ShotgunShellsMold"
--*****************************--

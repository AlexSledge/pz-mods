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
        inventorymale = {
            rolls = 1,
            items = {
              --Casings
              "Bullets9mm_casingbox", 0.05,
              "Bullets45_casingbox", 0.05,
              "Bullets44_casingbox", 0.05,
              "Bullets38_casingbox", 0.05,
              "308Bullets_casingbox", 0.03,
              "223Bullets_casingbox", 0.03,
              "556Bullets_casingbox", 0.01,
              "ShotgunShells_casingbox", 0.10,
              --Tips
              "Bullets9mm_tipbox", 0.05,
              "Bullets45_tipbox", 0.05,
              "Bullets44_tipbox", 0.05,
              "Bullets38_tipbox", 0.05,
              "308Bullets_tipbox", 0.03,
              "223Bullets_tipbox", 0.03,
              "556Bullets_tipbox", 0.01,
              "ShotgunShells_tipbox", 0.10,
              --Primers
              "SP_Primers_box", 0.05,
              "LP_Primers_box", 0.03,
              "R_Primers_box", 0.01,
              "SG_Primers_box", 0.10,
              --Gunpowder
              "GunpowderJar", 0.05,
            }
        },
        inventoryfemale = {
            rolls = 1,
            items = {
              --Casings
              "Bullets9mm_casing_spent", 0.05,
              "Bullets45_casing_spent", 0.05,
              "Bullets44_casing_spent", 0.05,
              "Bullets38_casing_spent", 0.05,
              "308Bullets_casing_spent", 0.03,
              "223Bullets_casing_spent", 0.03,
              "556Bullets_casing_spent", 0.01,
              "ShotgunShells_casing_spent", 0.10,
              --Tips
              "Bullets9mm_tip", 0.05,
              "Bullets45_tip", 0.05,
              "Bullets44_tip", 0.05,
              "Bullets38_tip", 0.05,
              "308Bullets_tip", 0.03,
              "223Bullets_tip", 0.03,
              "556Bullets_tip", 0.01,
              "ShotgunShells_tip", 0.10,
              --Gunpowder
              "Gunpowder", 0.05,
            }
        },
        crate = {
            rolls = 1,
            items = {
              --Casings
              "Bullets9mm_casingbox", 1,
              "Bullets45_casingbox", 1,
              "Bullets44_casingbox", 1,
              "Bullets38_casingbox", 1,
              "308Bullets_casingbox", 0.5,
              "223Bullets_casingbox", 0.5,
              "556Bullets_casingbox", 0.1,
              "ShotgunShells_casingbox", 1,
              --Tips
              "Bullets9mm_tipbox", 1,
              "Bullets45_tipbox", 1,
              "Bullets44_tipbox", 1,
              "Bullets38_tipbox", 1,
              "308Bullets_tipbox", 0.5,
              "223Bullets_tipbox", 0.5,
              "556Bullets_tipbox", 0.1,
              "ShotgunShells_tipbox", 1,
              --Primers
              "SP_Primers_box", 1,
              "LP_Primers_box", 0.5,
              "R_Primers_box", 0.1,
              "SG_Primers_box", 1,
              --Gunpowder
              "GunpowderJar", 5,
              --Molds
              "45BulletsMold", 1,
              "44BulletsMold", 1,
              "38BulletsMold", 1,
              "556BulletsMold", 1,
            }
        },
        counter = {
            rolls = 1,
            items = {
              --Casings
              "Bullets9mm_casingbox", 1,
              "Bullets45_casingbox", 1,
              "Bullets44_casingbox", 1,
              "Bullets38_casingbox", 1,
              "308Bullets_casingbox", 0.5,
              "223Bullets_casingbox", 0.5,
              "556Bullets_casingbox", 0.1,
              "ShotgunShells_casingbox", 1,
              --Tips
              "Bullets9mm_tipbox", 1,
              "Bullets45_tipbox", 1,
              "Bullets44_tipbox", 1,
              "Bullets38_tipbox", 1,
              "308Bullets_tipbox", 0.5,
              "223Bullets_tipbox", 0.5,
              "556Bullets_tipbox", 0.1,
              "ShotgunShells_tipbox", 1,
              --Primers
              "SP_Primers_box", 1,
              "LP_Primers_box", 0.5,
              "R_Primers_box", 0.1,
              "SG_Primers_box", 1,
            },
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

    hunting = {
        locker = {
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
              "Reloadingpress", 1,
              "Pliers", 4,
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

-- =====================
--    Bags/Containers
-- =====================

    Bag_WeaponBag = {
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
        fillRand = 0,
    },

    Bag_SurvivorBag = {
        rolls = 5,
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
        -- only two map allowed
        maxMap = 2,
        -- this mean 90% chance on normal sandbox settings to have an annoted map
        stashChance = 10,
        fillRand = 0,
    },

    Toolbox = {
        rolls = 3,
        items = {
            "Pliers", 2,
        },
        fillRand = 0,
    },

    Bag_JanitorToolbox = {
        rolls = 1,
        items = {
            "Pliers", 25,
        },
        fillRand = 0,
    },

    Bag_ShotgunBag = {
        rolls = 1,
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
        fillRand = 0,
    },

    Bag_ShotgunSawnoffBag = {
        rolls = 1,
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
        fillRand = 0,
    },

    Bag_ShotgunDblBag = {
        rolls = 1,
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
        fillRand = 0,
    },

    Bag_ShotgunDblSawnoffBag = {
        rolls = 1,
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

-- ================
--      Caches
-- ================

    ShotgunCache1 = {
        ShotgunBox = {
            rolls = 1,
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

        Bag_DuffelBagTINT = {
            rolls = 1,
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
            fillRand=1,
        },
    },

    ShotgunCache2 = {
        ShotgunBox = {
            rolls = 1,
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

        counter = {
            rolls = 1,
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

    ToolsCache1 = {
        ToolsBox = {
            rolls = 1,
            items = {
                "Pliers", 4,
            },
        },

        counter = {
            rolls = 1,
            items = {
                "Pliers", 5,
            },
        },

        Bag_DuffelBagTINT = {
            rolls = 1,
            items = {
                "Pliers", 2,
            },
            fillRand = 1,
        },
    },

    GunCache1 = {
        GunBox = {
            rolls = 1,
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

        counter = {
            rolls = 1,
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
        },

        Bag_DuffelBagTINT = {
            rolls = 1,
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
            fillRand = 1,
        },
    },

    GunCache2 = {
        GunBox = {
            rolls = 1,
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

        Bag_DuffelBagTINT = {
            rolls = 1,
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
            fillRand=1,
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

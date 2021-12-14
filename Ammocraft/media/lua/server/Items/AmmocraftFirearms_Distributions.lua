Distributions = Distributions or {};

local distributionTable = {

-- =====================
--    Room List (A-Z)
-- =====================

    all = {
        postbox = {
            rolls = 3,
            items = {
              --Magazine
              "GunnutMonthly7", 1,
            }
        },
        inventorymale = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 0.01,
              "762x39Bullets_casingbox", 0.01,
              "4440Bullets_casingbox", 0.025,
              "22LRBullets_casingbox", 0.05,
              --Tips
              "762Bullets_tipbox", 0.01,
              "4440Bullets_tipbox", 0.01,
              "22LRBullets_tipbox", 0.05,
            }
        },
        inventoryfemale = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 0.01,
              "762x39Bullets_casingbox", 0.01,
              "4440Bullets_casingbox", 0.025,
              "22LRBullets_casingbox", 0.05,
              --Tips
              "762Bullets_tipbox", 0.01,
              "4440Bullets_tipbox", 0.01,
              "22LRBullets_tipbox", 0.05,
            }
        },
        crate = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
              --Magazine
              "GunnutMonthly7", 1,
              --Molds
              "762BulletsMold", 1,
              "4440BulletsMold", 1,
              "22LRBulletsMold", 1,
            }
        },
        counter = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
              --Magazine
              "GunnutMonthly7", 1,
            },
        },
        sidetable = {
            rolls = 1,
            items = {
              --Magazine
              "GunnutMonthly7", 1,
            },
            junk = {
                rolls = 1,
                items = {
                  --Magazine
                  "GunnutMonthly7", 1,
                }
            }
        },
        bin = {
            rolls = 1,
            items = {
              --Magazine
              "GunnutMonthly7", 1,
            }
        },
        shelves = {
            rolls = 3,
            items = {
              --Magazine
              "GunnutMonthly7", 1,
            }
        },
        other = {
            rolls = 1,
            items = {
              --Magazine
              "GunnutMonthly7", 1,
            }
        }
    },

    armyhanger = {
        metal_shelves = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
              --Magazine
              "GunnutMonthly7", 1,
            }
        },
    },

    armystorage = {
        locker = {
            rolls = 2,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
            },
        },

        metal_shelves =
        {
            rolls = 2,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
            }
        },
    },

    armysurplus = {
        isShop = true,
        shelves = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
            }
        },

        metal_shelves = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
            }
        },
    },

    gunstore = {
        isShop = true,
        counter = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
            dontSpawnAmmo = true,
        },

        displaycase = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
            dontSpawnAmmo = true,
        },

        locker = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
            dontSpawnAmmo = true,
        },

        metal_shelves = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
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
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },

            dontSpawnAmmo = true,
        },
    },

    hunting = {
        locker = {
            rolls = 2,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            }
        },

        metal_shelves = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
              --Magazine
              "GunnutMonthly7", 1,
            }
        },
    },

    storageunit = {
        all = {
            rolls = 3,
            items = {
              --Casings
              "762Bullets_casingbox", 1,
              "762x39Bullets_casingbox", 1,
              "4440Bullets_casingbox", 1,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 1,
              "4440Bullets_tipbox", 1,
              "22LRBullets_tipbox", 5,
            }
        }
    },

-- =====================
--    Bags/Containers
-- =====================

    Bag_WeaponBag = {
        rolls = 3,
        items = {
          --Casings
          "762Bullets_casingbox", 5,
          "762x39Bullets_casingbox", 5,
          "4440Bullets_casingbox", 5,
          "22LRBullets_casingbox", 5,
          --Tips
          "762Bullets_tipbox", 5,
          "4440Bullets_tipbox", 5,
          "22LRBullets_tipbox", 5,
        },
        fillRand = 0,
    },

    Bag_SurvivorBag = {
        rolls = 5,
        items = {
          --Casings
          "762Bullets_casingbox", 5,
          "762x39Bullets_casingbox", 5,
          "4440Bullets_casingbox", 5,
          "22LRBullets_casingbox", 5,
          --Tips
          "762Bullets_tipbox", 5,
          "4440Bullets_tipbox", 5,
          "22LRBullets_tipbox", 5,
        },
        -- only two map allowed
        maxMap = 2,
        -- this mean 90% chance on normal sandbox settings to have an annoted map
        stashChance = 10,
        fillRand = 0,
    },

    Bag_ShotgunBag = {
        rolls = 1,
        items = {
          --Casings
          "762Bullets_casingbox", 5,
          "762x39Bullets_casingbox", 5,
          "4440Bullets_casingbox", 5,
          "22LRBullets_casingbox", 5,
          --Tips
          "762Bullets_tipbox", 5,
          "4440Bullets_tipbox", 5,
          "22LRBullets_tipbox", 5,
        },
        fillRand = 0,
    },

    Bag_ShotgunSawnoffBag = {
        rolls = 1,
        items = {
          --Casings
          "762Bullets_casingbox", 5,
          "762x39Bullets_casingbox", 5,
          "4440Bullets_casingbox", 5,
          "22LRBullets_casingbox", 5,
          --Tips
          "762Bullets_tipbox", 5,
          "4440Bullets_tipbox", 5,
          "22LRBullets_tipbox", 5,
        },
        fillRand = 0,
    },

    Bag_ShotgunDblBag = {
        rolls = 1,
        items = {
          --Casings
          "762Bullets_casingbox", 5,
          "762x39Bullets_casingbox", 5,
          "4440Bullets_casingbox", 5,
          "22LRBullets_casingbox", 5,
          --Tips
          "762Bullets_tipbox", 5,
          "4440Bullets_tipbox", 5,
          "22LRBullets_tipbox", 5,
        },
        fillRand = 0,
    },

    Bag_ShotgunDblSawnoffBag = {
        rolls = 1,
        items = {
          --Casings
          "762Bullets_casingbox", 5,
          "762x39Bullets_casingbox", 5,
          "4440Bullets_casingbox", 5,
          "22LRBullets_casingbox", 5,
          --Tips
          "762Bullets_tipbox", 5,
          "4440Bullets_tipbox", 5,
          "22LRBullets_tipbox", 5,
        },
        fillRand = 0,
    },

-- ================
--      Caches
-- ================

    ShotgunCache1 = {
        ShotgunBox = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            }
        },

        Bag_DuffelBagTINT = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
            fillRand=1,
        },
    },

    ShotgunCache2 = {
        ShotgunBox = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            }
        },

        counter = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            }
        },
    },

    GunCache1 = {
        GunBox = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
            dontSpawnAmmo = true,
        },

        counter = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
        },

        Bag_DuffelBagTINT = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
            fillRand = 1,
        },
    },

    GunCache2 = {
        GunBox = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
            },
            dontSpawnAmmo = true,
        },

        Bag_DuffelBagTINT = {
            rolls = 1,
            items = {
              --Casings
              "762Bullets_casingbox", 5,
              "762x39Bullets_casingbox", 5,
              "4440Bullets_casingbox", 5,
              "22LRBullets_casingbox", 5,
              --Tips
              "762Bullets_tipbox", 5,
              "4440Bullets_tipbox", 5,
              "22LRBullets_tipbox", 5,
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

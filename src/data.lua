mod.BiomeDisplayOrder = {
        "F",
        "Oceanus",
        "Mourning_Fields",
        "Tartarus",
        "Ephyra",
        "Sea",
        "Mount_Olympus",
        "Summit",
    }

mod.TypeDisplayOrder = {
    "Battle",
    "Special",
    "Boss",
}

mod.LocationDisplayOrder = {
    Erebus = {
        Battle = {
            "F_Opening01",
            "F_Opening02",
            "F_Opening03",
            "F_Combat01",
            "F_Combat02",
            "F_Combat03",
            "F_Combat04",
            "F_Combat05",
            "F_Combat06",
            "F_Combat07",
            "F_Combat08",
            "F_Combat09",
            "F_Combat10",
            "F_Combat11",
            "F_Combat12",
            "F_Combat13",
            "F_Combat14",
            "F_Combat15",
            "F_Combat16",
            "F_Combat17",
            "F_Combat18",
            "F_Combat19",
            "F_Combat20",
            "F_Combat21",
            "F_Combat22",
        },
        Special = {
            "F_PreBoss01",
            "F_PostBoss01",
            "F_Shop01",
            "F_Reprieve01",
            "F_Story01",
        },
        boss = {
            "F_MiniBoss01",
            "F_MiniBoss02",
            "F_MiniBoss03",
            "F_Boss01",
            "F_Boss02",
        },
    },
    Oceanus = {
        Battle = {

        },
        Special = {

        },
        Boss = {

        },
    },
    Mourning_Fields = {
        Battle = {

        },
        Special = {

        },
        Boss = {

        },
    },
    Tartarus = {
        Battle = {
            
        },
        Special = {

        },
        Boss = {

        },
    },
    Ephyra = {
        Battle = {

        },
        Special = {

        },
        Boss = {

        },
    },
    Sea = {
        Battle = {

        },
        Special = {

        },
        Boss = {

        },
    },
    Mount_Olympus = {
        Battle = {

        },
        Special = {

        },
        Boss = {

        },
    },
    Summit = {
        Battle = {

        },
        Special = {

        },
        Boss = {

        },
    },

}

if rom.mods['NikkelM-Zagreus_Journey'] then
    table.insert(mod.BiomeDisplayOrder, "Tartarus_H1")
    table.insert(mod.BiomeDisplayOrder, "Asphodel")
    table.insert(mod.BiomeDisplayOrder, "Elysium")
    table.insert(mod.BiomeDisplayOrder, "Styx")
    
    OverwriteTableKeys(mod.LocationDisplayOrder,{
		Tartarus_H1 = {
            Battle = {

            },
            Special = {

            },
            Boss = {

            },
		},
		Asphodel = {
            Battle = {

            },
            Special = {

            },
            Boss = {

            },
		},
		Elysium = {
            Battle = {

            },
            Special = {

            },
            Boss ={

            },
		},
		Styx = {
            Battle = {

            },
            Special = {

            },
            Boss ={

            },
		}
	})
 
end
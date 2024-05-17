-- Royal Medium House: -1953.29053, 1394.6825, -24.4095535
exports('GetRoyalMediumHouseObject', function()
    return RoyalMediumHouse
end)

RoyalMediumHouse = {
    Style = {
        Themes = {
            Carpet = {
                style1 = {
                    entitySet = "house_int_med_carpet_01"
                },
                style2 = {
                    entitySet = "house_int_med_carpet_02"
                },
                style3 = {
                    entitySet = "house_int_med_carpet_03"
                },
            },

            Floor = {
                style1 = {
                    entitySet = "house_int_med_floor_01",
                },
                style2 = {
                    entitySet = "house_int_med_floor_02",
                },
                style3 = {
                    entitySet = "house_int_med_floor_03",
                },
            },

            KitchenTiles = {
                style1 = {
                    entitySet = "house_int_med_kitchentiles_01",
                },
                style2 = {
                    entitySet = "house_int_med_kitchentiles_02",
                },
                style3 = {
                    entitySet = "house_int_med_kitchentiles_03",
                },
            },

            Wall1 = {
                style1 = {
                    entitySet = "house_int_med_stonewall_11",
                },
                style2 = {
                    entitySet = "house_int_med_stonewall_12",
                },
                style3 = {
                    entitySet = "house_int_med_stonewall_13",
                },
                style4 = {
                    entitySet = "house_int_med_stonewall_14",
                },
                style5 = {
                    entitySet = "house_int_med_stonewall_15",
                },
            },

            Wall2 = {
                style1 = {
                    entitySet = "house_int_med_stonewall_21",
                },
                style2 = {
                    entitySet = "house_int_med_stonewall_22",
                },
                style3 = {
                    entitySet = "house_int_med_stonewall_23",
                },
                style4 = {
                    entitySet = "house_int_med_stonewall_24",
                },
                style5 = {
                    entitySet = "house_int_med_stonewall_25",
                },
            },

            Wall3 = {
                style1 = {
                    entitySet = "house_int_med_stonewall_31",
                },
                style2 = {
                    entitySet = "house_int_med_stonewall_32",
                },
                style3 = {
                    entitySet = "house_int_med_stonewall_33",
                },
                style4 = {
                    entitySet = "house_int_med_stonewall_34",
                },
                style5 = {
                    entitySet = "house_int_med_stonewall_35",
                },
            },

            KitchenWallTiles = {
                style1 = {
                    entitySet = "house_int_med_tiles_01"
                },
                style2 = {
                    entitySet = "house_int_med_tiles_02"
                },
            },

            Curtains = {
                style1 = {
                    entitySet = "house_prop_med_curtains_01"
                },
                style2 = {
                    entitySet = "house_prop_med_curtains_02"
                },
                style3 = {
                    entitySet = "house_prop_med_curtains_03"
                },
            },

            Kitchen = {
                style1 = {
                    entitySet = "house_int_med_kitchen_01"
                },
                style2 = {
                    entitySet = "house_int_med_kitchen_02"
                },
                style3 = {
                    entitySet = "house_int_med_kitchen_03"
                },
                style4 = {
                    entitySet = "house_int_med_kitchen_04"
                },
            },

            Fridge = {
                style1 = {
                    entitySet = "house_prop_med_fridge_01",
                },
                style2 = {
                    entitySet = "house_prop_med_fridge_02",
                },
                style3 = {
                    entitySet = "house_prop_med_fridge_03",
                },
            },

            Plate = {
                style1 = {
                    entitySet = "house_prop_med_plate_01",
                },
                style2 = {
                    entitySet = "house_prop_med_plate_02",
                },
                style3 = {
                    entitySet = "house_prop_med_plate_03",
                },
            },

            TvStand = {
                style1 = {
                    entitySet = "house_prop_med_tvstand_01",
                },
                style2 = {
                    entitySet = "house_prop_med_tvstand_02",
                },
            },

            Bookshelf = {
                style1 = {
                    entitySet = "house_prop_med_bookshelf_01",
                },
                style2 = {
                    entitySet = "house_prop_med_bookshelf_02",
                },
            },
        },
        Set = function(theme, refresh)
            local interiorId = GetInteriorAtCoords(-1953.29053, 1394.6825, -24.4095535)
            RoyalMediumHouse.Style.Clear()
            for _, value in pairs(theme) do
                ActivateInteriorEntitySet(interiorId, value.entitySet)
            end
            if refresh then
                RefreshInterior(interiorId)
            end
        end,
        Clear = function()
            local interiorId = GetInteriorAtCoords(-1953.29053, 1394.6825, -24.4095535)
            for _, value in pairs(RoyalMediumHouse.Style.Themes) do
                for __, themeType in pairs(value) do
                    DeactivateInteriorEntitySet(interiorId, themeType.entitySet)
                end
            end
        end
    },
}

RoyalMediumHouse.Style.Theme = {
    theme1 = {
        Carpet = RoyalMediumHouse.Style.Themes.Carpet.style1,
        Floor = RoyalMediumHouse.Style.Themes.Floor.style1,
        KitchenTiles = RoyalMediumHouse.Style.Themes.KitchenTiles.style1,
        Wall1 = RoyalMediumHouse.Style.Themes.Wall1.style1,
        Wall2 = RoyalMediumHouse.Style.Themes.Wall2.style1,
        Wall3 = RoyalMediumHouse.Style.Themes.Wall3.style1,
        KitchenWallTiles = RoyalMediumHouse.Style.Themes.KitchenWallTiles.style1,
        Curtains = RoyalMediumHouse.Style.Themes.Curtains.style1,
        Kitchen = RoyalMediumHouse.Style.Themes.Kitchen.style1,
        Fridge = RoyalMediumHouse.Style.Themes.Fridge.style1,
        Plate = RoyalMediumHouse.Style.Themes.Plate.style1,
        TvStand = RoyalMediumHouse.Style.Themes.TvStand.style1,
        Bookshelf = RoyalMediumHouse.Style.Themes.Bookshelf.style1,
    },
    theme2 = {
        Carpet = RoyalMediumHouse.Style.Themes.Carpet.style2,
        Floor = RoyalMediumHouse.Style.Themes.Floor.style2,
        KitchenTiles = RoyalMediumHouse.Style.Themes.KitchenTiles.style2,
        Wall1 = RoyalMediumHouse.Style.Themes.Wall1.style2,
        Wall2 = RoyalMediumHouse.Style.Themes.Wall2.style2,
        Wall3 = RoyalMediumHouse.Style.Themes.Wall3.style2,
        KitchenWallTiles = RoyalMediumHouse.Style.Themes.KitchenWallTiles.style2,
        Curtains = RoyalMediumHouse.Style.Themes.Curtains.style2,
        Kitchen = RoyalMediumHouse.Style.Themes.Kitchen.style2,
        Fridge = RoyalMediumHouse.Style.Themes.Fridge.style2,
        Plate = RoyalMediumHouse.Style.Themes.Plate.style2,
        TvStand = RoyalMediumHouse.Style.Themes.TvStand.style2,
        Bookshelf = RoyalMediumHouse.Style.Themes.Bookshelf.style2,
    },
    theme3 = {
        Carpet = RoyalMediumHouse.Style.Themes.Carpet.style3,
        Floor = RoyalMediumHouse.Style.Themes.Floor.style3,
        KitchenTiles = RoyalMediumHouse.Style.Themes.KitchenTiles.style3,
        Wall1 = RoyalMediumHouse.Style.Themes.Wall1.style3,
        Wall2 = RoyalMediumHouse.Style.Themes.Wall2.style3,
        Wall3 = RoyalMediumHouse.Style.Themes.Wall3.style3,
        KitchenWallTiles = RoyalMediumHouse.Style.Themes.KitchenWallTiles.style2,
        Curtains = RoyalMediumHouse.Style.Themes.Curtains.style3,
        Kitchen = RoyalMediumHouse.Style.Themes.Kitchen.style3,
        Fridge = RoyalMediumHouse.Style.Themes.Fridge.style3,
        Plate = RoyalMediumHouse.Style.Themes.Plate.style3,
    },
    theme4 = {
        Carpet = RoyalMediumHouse.Style.Themes.Carpet.style2,
        Floor = RoyalMediumHouse.Style.Themes.Floor.style1,
        KitchenTiles = RoyalMediumHouse.Style.Themes.KitchenTiles.style1,
        Wall1 = RoyalMediumHouse.Style.Themes.Wall1.style1,
        Wall2 = RoyalMediumHouse.Style.Themes.Wall2.style1,
        Wall3 = RoyalMediumHouse.Style.Themes.Wall3.style1,
        KitchenWallTiles = RoyalMediumHouse.Style.Themes.KitchenWallTiles.style1,
        Curtains = RoyalMediumHouse.Style.Themes.Curtains.style1,
        Kitchen = RoyalMediumHouse.Style.Themes.Kitchen.style4,
        Fridge = RoyalMediumHouse.Style.Themes.Fridge.style1,
        Plate = RoyalMediumHouse.Style.Themes.Plate.style1,
    },
    theme5 = {
        Carpet = RoyalMediumHouse.Style.Themes.Carpet.style2,
        Floor = RoyalMediumHouse.Style.Themes.Floor.style2,
        KitchenTiles = RoyalMediumHouse.Style.Themes.KitchenTiles.style1,
        Wall1 = RoyalMediumHouse.Style.Themes.Wall1.style1,
        Wall2 = RoyalMediumHouse.Style.Themes.Wall2.style1,
        Wall3 = RoyalMediumHouse.Style.Themes.Wall3.style1,
        KitchenWallTiles = RoyalMediumHouse.Style.Themes.KitchenWallTiles.style1,
        Curtains = RoyalMediumHouse.Style.Themes.Curtains.style1,
        Kitchen = RoyalMediumHouse.Style.Themes.Kitchen.style1,
        Fridge = RoyalMediumHouse.Style.Themes.Fridge.style1,
        Plate = RoyalMediumHouse.Style.Themes.Plate.style1,
        TvStand = RoyalMediumHouse.Style.Themes.TvStand.style1,
        Bookshelf = RoyalMediumHouse.Style.Themes.Bookshelf.style1,
    },
}

RoyalMediumHouse.LoadDefault = function()
    RoyalMediumHouse.Style.Set(RoyalMediumHouse.Style.Theme.theme1, true)
end

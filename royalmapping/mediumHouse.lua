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
                    entitySet = {
                        "house_int_med_stonewall_11",
                    }
                },
                style2 = {
                    entitySet = {
                        "house_int_med_stonewall_12",
                    }
                },
                style3 = {
                    entitySet = {
                        "house_int_med_stonewall_13",
                    }
                },
                style4 = {
                    entitySet = {
                        "house_int_med_stonewall_14",
                    }
                },
                style5 = {
                    entitySet = {
                        "house_int_med_stonewall_15",
                    }
                },
            },

            Wall2 = {
                style1 = {
                    entitySet = {
                        "house_int_med_stonewall_21",
                    }
                },
                style2 = {
                    entitySet = {
                        "house_int_med_stonewall_22",
                    }
                },
                style3 = {
                    entitySet = {
                        "house_int_med_stonewall_23",
                    }
                },
                style4 = {
                    entitySet = {
                        "house_int_med_stonewall_24",
                    }
                },
                style5 = {
                    entitySet = {
                        "house_int_med_stonewall_25",
                    }
                },
            },

            Wall3 = {
                style1 = {
                    entitySet = {
                        "house_int_med_stonewall_31",
                    }
                },
                style2 = {
                    entitySet = {
                        "house_int_med_stonewall_32",
                    }
                },
                style3 = {
                    entitySet = {
                        "house_int_med_stonewall_33",
                    }
                },
                style4 = {
                    entitySet = {
                        "house_int_med_stonewall_34",
                    }
                },
                style5 = {
                    entitySet = {
                        "house_int_med_stonewall_35",
                    }
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
        Set = function(typeTheme, style, refresh)
            local interiorId = GetInteriorAtCoords(-1953.29053, 1394.6825, -24.4095535)
            for _, style2 in pairs(RoyalMediumHouse.Style.Themes[typeTheme]) do
                if type(style2.entitySet) == "table" then
                    for _, value in pairs(style2.entitySet) do
                        DeactivateInteriorEntitySet(interiorId, value)
                    end
                else
                    DeactivateInteriorEntitySet(interiorId, style2.entitySet)
                end
            end

            if type(style.entitySet) == "table" then
                for _, value in pairs(style.entitySet) do
                    ActivateInteriorEntitySet(interiorId, value)
                end
            else
                ActivateInteriorEntitySet(interiorId, style.entitySet)
            end
            if refresh then
                RefreshInterior(interiorId)
            end
        end,
        Clear = function()
            local interiorId = GetInteriorAtCoords(-1953.29053, 1394.6825, -24.4095535)
            for _, value in pairs(RoyalMediumHouse.Style.Themes) do
                for __, themeType in pairs(value) do
                    if type(themeType.entitySet) == "table" then
                        for ___, entitySet in pairs(themeType.entitySet) do
                            DeactivateInteriorEntitySet(interiorId, entitySet)
                        end
                    else
                        DeactivateInteriorEntitySet(interiorId, themeType.entitySet)
                    end
                end
            end
            RefreshInterior(interiorId)
        end
    },

    LoadDefault = function()
        RoyalMediumHouse.Style.Clear()
        RoyalMediumHouse.Style.Set("Carpet", RoyalMediumHouse.Style.Themes.Carpet.style1, false)
        RoyalMediumHouse.Style.Set("Floor", RoyalMediumHouse.Style.Themes.Floor.style1, false)
        RoyalMediumHouse.Style.Set("KitchenTiles", RoyalMediumHouse.Style.Themes.KitchenTiles.style1, false)
        RoyalMediumHouse.Style.Set("Wall1", RoyalMediumHouse.Style.Themes.Wall1.style1, false)
        RoyalMediumHouse.Style.Set("Wall2", RoyalMediumHouse.Style.Themes.Wall2.style1, false)
        RoyalMediumHouse.Style.Set("Wall3", RoyalMediumHouse.Style.Themes.Wall3.style1, false)
        RoyalMediumHouse.Style.Set("KitchenWallTiles", RoyalMediumHouse.Style.Themes.KitchenWallTiles.style1, false)
        RoyalMediumHouse.Style.Set("Curtains", RoyalMediumHouse.Style.Themes.Curtains.style1, false)
        RoyalMediumHouse.Style.Set("Kitchen", RoyalMediumHouse.Style.Themes.Kitchen.style1, false)
        RoyalMediumHouse.Style.Set("Fridge", RoyalMediumHouse.Style.Themes.Fridge.style1, false)
        RoyalMediumHouse.Style.Set("Plate", RoyalMediumHouse.Style.Themes.Plate.style1, false)
        RoyalMediumHouse.Style.Set("TvStand", RoyalMediumHouse.Style.Themes.TvStand.style1, false)
        RoyalMediumHouse.Style.Set("Bookshelf", RoyalMediumHouse.Style.Themes.Bookshelf.style1, true)
    end
}

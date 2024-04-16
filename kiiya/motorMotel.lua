-- Kiiya Motor Motel: 582.9652, 911.1808, 143.0373
exports('GetKiiyaMotorMotelObject', function()
    return KiiyaMotorMotel
end)

KiiyaMotorMotel = {
    Style = {
        Theme = {
            theme1 = {
                entitySet = "entity_motor_1"
            },
            theme2 = {
                entitySet = "entity_motor_2"
            },
            theme3 = {
                entitySet = "entity_motor_3"
            },
            theme4 = {
                entitySet = "entity_motor_4"
            },
            theme5 = {
                entitySet = "entity_motor_5"
            },
            theme6 = {
                entitySet = "entity_motor_6"
            },
            theme7 = {
                entitySet = "entity_motor_7"
            },
            theme8 = {
                entitySet = "entity_motor_8"
            }
        },

        Set = function(style, refresh)
            if type(style) == "table" then
                local interiorId = GetInteriorAtCoords(582.9652, 911.1808, 143.0373)
                KiiyaMotorMotel.Style.Clear()

                ActivateInteriorEntitySet(interiorId, style.entitySet)

                if refresh then
                    RefreshInterior(interiorId)
                end
            end
        end,
        Clear = function()
            local interiorId = GetInteriorAtCoords(582.9652, 911.1808, 143.0373)
            for _, value in pairs(KiiyaMotorMotel.Style.Theme) do
                DeactivateInteriorEntitySet(interiorId, value.entitySet)
            end
        end
    },

    LoadDefault = function()
        KiiyaMotorMotel.Style.Set(KiiyaMotorMotel.Style.Theme.theme1, true)
    end
}

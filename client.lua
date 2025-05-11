RegisterCommand("duty", function()
    TriggerServerEvent("duty:requestDepartments")
end)

RegisterNetEvent("duty:openMenu")
AddEventHandler("duty:openMenu", function(allowedDepartments)
    local menu = {}

    for _, dept in ipairs(allowedDepartments) do
        table.insert(menu, {
            title = "Go On/Off Duty: " .. dept.name,
            onSelect = function()
                TriggerServerEvent("duty:toggle", dept.name)
            end
        })
    end

    lib.registerContext({
        id = 'duty_menu',
        title = 'Select Department',
        options = menu
    })

    lib.showContext('duty_menu')
end)

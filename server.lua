RegisterServerEvent("duty:requestDepartments")
AddEventHandler("duty:requestDepartments", function()
    local src = source
    local allowed = {}

    for _, dept in ipairs(Config.Departments) do
        if IsPlayerAceAllowed(src, dept.ace) then
            table.insert(allowed, dept)
        end
    end

    TriggerClientEvent("duty:openMenu", src, allowed)
end)

RegisterServerEvent("duty:toggle")
AddEventHandler("duty:toggle", function(deptName)
    local src = source
    print(("Player %d toggled duty for department: %s"):format(src, deptName))
end)

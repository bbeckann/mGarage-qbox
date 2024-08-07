Core = nil

function LoadCore()
    if Config.Framework == "esx" then
        Core = exports["es_extended"]:getSharedObject()
    elseif Config.Framework == "LG" then
        Core = exports['LegacyFramework']:ReturnFramework()
    elseif Config.Framework == "qbox" then
        Core = exports['qb-core']:GetCoreObject()
    end
end

LoadCore()

function GetJob()
    if Config.Framework == "esx" then
        local job = Core.PlayerData.job
        if not job then
            print('not load?...')
            LoadCore()
            job = Core.PlayerData.job
        end
        return { name = job.name, grade = job.grade }

    elseif Config.Framework == "qbox" then  ---MUDEI 
        local PlayerData = QBX.PlayerData
        local job = PlayerData.job
        return { name = job.name, grade = job.grade.level }
    elseif Config.Framework == "standalone" then
        return true
    elseif Config.Framework == "LG" then
        local PlayerData = Core.PlayerFunctions.GetClientData()[1]
        local Job = PlayerData?.nameJob
        local Grade = PlayerData?.gradeJob

        return { name = Job, grade = Grade }
    end
    return false
end

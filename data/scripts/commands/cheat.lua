package.path = package.path .. ";data/scripts/lib/?.lua"

function execute(sender, commandName, ...)
    Player(sender):addScriptOnce("cheat.lua")
    return 0, "", ""
end

function getDescription()
    return "A shorter way to get entitydbg"
end

function getHelp()
    return "A shorter way to get entitydbg"
end

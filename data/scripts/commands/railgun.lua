package.path = package.path .. ";data/scripts/lib/?.lua"
function execute(sender, commandName, ...)
    
    TurretGenerator = require("turretgenerator")
    TurretGenerator.initialize(Seed(turretSeed))
    local turret = TurretGenerator.generate(200, 200, 0, Rarity(RarityType.Legendary), WeaponType.RailGun, Material(MaterialType.Iron))
    local weapons = {turret:getWeapons()}

    turret.size = 1
    turret:clearWeapons()

    for _, weapon in pairs(weapons) do
        weapon.reach = 2000
        weapon.damage = 1000000
        weapon.fireRate = 1
        weapon.blockPenetration = 5
        weapon.shieldPenetration = 0.5 
        weapon.accuracy = 1
        turret:addWeapon(weapon)
    end
    turret.baseEnergyPerSecond = nil
    turret.energyIncreasePerSecond = nil
    turret.automatic = true
    turret.heatPerShot = 0
    turret.turningSpeed = 2
    for i=1,50 do 
        Player(sender):getInventory():add(InventoryTurret(turret))
    end
    
    return 0, "", ""
end

function getDescription()
    return "A shorter way to get entitydbg"
end

function getHelp()
    return "A shorter way to get entitydbg"
end

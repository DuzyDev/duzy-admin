Config = {}

Config.Locale = 'en'
Config.NotifySystem = 'okokChatV2' -- Available: esx, pNotify, okokChatV2, chat 
Config.staffGroups = {'admin'}
Config.GodMode = true

Config.AcceptMethod = 'waypoint' -- Available: waypoint, teleport

Config.DutyCommand = 'radmin'
Config.CallHelpCommand = 'accccccccccccccc'  

Config.UseSound = false -- requires: https://github.com/plunkettscott/interact-sound
Config.SoundName = 'demo' -- name of the sound that should be played when staff gets messaged
Config.SoundVolume = 1.0  -- volume of the sound 

Config.Ranks = {
    admin = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 211,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            --['pants_1'] = 170,   ['pants_2'] = 4,
            ['shoes_1'] = 27,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            --['mask_1'] = 0,  ['mask_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['hair_1'] = 0,     ['hair_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        },
        female = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 450,   ['torso_2'] = 10,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 14,
            --['pants_1'] = 159,   ['pants_2'] = 4,
            ['shoes_1'] = 17,   ['shoes_2'] = 14,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            --['mask_1'] = 0,  ['mask_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['hair_1'] = 0,     ['hair_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        }
    },
    mod = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 264,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            --['pants_1'] = 170,   ['pants_2'] = 4,
            ['shoes_1'] = 27,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            --['mask_1'] = 0,  ['mask_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['hair_1'] = 0,     ['hair_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        },
        female = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 450,   ['torso_2'] = 10,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 14,
            --['pants_1'] = 159,   ['pants_2'] = 4,
            ['shoes_1'] = 17,   ['shoes_2'] = 14,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            --['mask_1'] = 0,  ['mask_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['hair_1'] = 0,     ['hair_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        } 
    },
    helper = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 264,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            --['pants_1'] = 170,   ['pants_2'] = 4,
            ['shoes_1'] = 27,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            --['mask_1'] = 0,  ['mask_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['hair_1'] = 0,     ['hair_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        },
        female = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 450,   ['torso_2'] = 10,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 14,
            --['pants_1'] = 159,   ['pants_2'] = 4,
            ['shoes_1'] = 17,   ['shoes_2'] = 14,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            --['mask_1'] = 0,  ['mask_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['hair_1'] = 0,     ['hair_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0
        }
    }
}
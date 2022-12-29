//
//  Glaceon.swift
//  Parse_Json_Jamal_Jones
//
//  Created by Consultant on 12/21/22.
//

import Foundation
import UIKit

struct Glaceon:Codable {
    
    let abilities:[Abilities]
    let baseExperience:Int
    let forms:[Forms]
    let gameIndices:[GameIndices]
    let height:Int
    let id:Int
    let isDefault:Bool
    let locationAreaEncounters:String
    let moves:[Moves]
    let name:String
    let order:Int
    let species:Species
    let sprites:Sprites
    let stats:[Stats]
    let types:[Types]
    let weight:Int
    
    enum CodingKeys: String, CodingKey {
        case abilities = "abilities"
        case baseExperience = "base_experience"
        case forms = "forms"
        case gameIndices = "game_indices"
        case height = "height"
        case id = "id"
        case isDefault = "is_default"
        case locationAreaEncounters = "location_area_encounters"
        case moves = "moves"
        case name = "name"
        case order = "order"
        case species = "species"
        case sprites = "sprites"
        case stats = "stats"
        case types = "types"
        case weight = "weight"
    }
    
    init(from decoder: Decoder) throws {
        let outerContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.abilities = try outerContainer.decode([Abilities].self, forKey: .abilities)
        self.baseExperience = try outerContainer.decode(Int.self, forKey: .baseExperience)
        self.forms = try outerContainer.decode([Forms].self, forKey: .forms)
        self.gameIndices = try outerContainer.decode([GameIndices].self, forKey: .gameIndices)
        self.height = try outerContainer.decode(Int.self, forKey: .height)
        self.id = try outerContainer.decode(Int.self, forKey: .id)
        self.isDefault = try outerContainer.decode(Bool.self, forKey: .isDefault)
        self.locationAreaEncounters = try outerContainer.decode(String.self, forKey: .locationAreaEncounters)
        self.moves = try outerContainer.decode([Moves].self, forKey: .moves)
        self.name = try outerContainer.decode(String.self, forKey: .name)
        self.order = try outerContainer.decode(Int.self, forKey: .order)
        self.species = try outerContainer.decode(Species.self, forKey: .species)
        self.sprites = try outerContainer.decode(Sprites.self, forKey: .sprites)
        self.stats = try outerContainer.decode([Stats].self, forKey: .stats)
        self.types = try outerContainer.decode([Types].self, forKey: .types)
        self.weight = try outerContainer.decode(Int.self, forKey: .weight)
      }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(abilities, forKey: .abilities)
        try container.encode(baseExperience, forKey: .baseExperience)
        try container.encode(forms, forKey: .forms)
        try container.encode(gameIndices, forKey: .gameIndices)
        try container.encode(height, forKey: .height)
        try container.encode(id, forKey: .id)
        try container.encode(isDefault, forKey: .isDefault)
        try container.encode(locationAreaEncounters, forKey: .locationAreaEncounters)
        try container.encode(moves, forKey: .moves)
        try container.encode(order, forKey: .order)
        try container.encode(species, forKey: .species)
        try container.encode(sprites, forKey: .sprites)
        try container.encode(stats, forKey: .stats)
        try container.encode(types, forKey: .types)
        try container.encode(weight, forKey: .weight)
    }
    
}


struct Abilities:Codable {
    let ability:Ability
    let isHidden:Bool
    let slot:Int
    
    enum CodingKeys: String, CodingKey {
        case ability = "ability"
        case slot = "slot"
        case isHidden = "is_hidden"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ability = try container.decode(Ability.self, forKey: .ability)
        self.slot = try container.decode(Int.self, forKey: .slot)
        self.isHidden = try container.decode(Bool.self, forKey: .isHidden)
      }
}

struct Ability:Codable {
    let name:String
    let url:String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.url = try container.decode(String.self, forKey: .url)
      }
}

struct Forms:Codable {
    let name:String
    let url:String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.url = try container.decode(String.self, forKey: .url)
      }
}

struct GameIndices:Codable {
    let gameIndex:Int
    let version:Version
    
    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version = "version"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.gameIndex = try container.decode(Int.self, forKey: .gameIndex)
        self.version = try container.decode(Version.self, forKey: .version)
      }
}

struct Version:Codable {
    let name:String
    let url:String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.url = try container.decode(String.self, forKey: .url)
      }
}

struct Moves:Codable {
    let move:Move
    
    enum CodingKeys: String, CodingKey {
        case move = "move"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.move = try container.decode(Move.self, forKey: .move)
      }
}

struct Move:Codable {
    let name:String
    let url:String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.url = try container.decode(String.self, forKey: .url)
      }
}

struct Species:Codable {
    let name:String
    let url:String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.url = try container.decode(String.self, forKey: .url)
      }
}

struct Sprites:Codable {
    let backDefault:String
    let backFemale:String?
    let backShiny:String
    let backShinyFemale:String?
    let frontDefault:String
    let frontFemale:String?
    let frontShiny:String
    let frontShinyFemale:String?
    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.backDefault = try container.decode(String.self, forKey: .backDefault)
        self.backFemale = try? container.decode(String.self, forKey: .backFemale)
        self.backShiny = try container.decode(String.self, forKey: .backShiny)
        self.backShinyFemale = try? container.decode(String.self, forKey: .backShinyFemale)
        self.frontDefault = try container.decode(String.self, forKey: .frontDefault)
        self.frontFemale = try? container.decode(String.self, forKey: .frontFemale)
        self.frontShiny = try container.decode(String.self, forKey: .frontShiny)
        self.frontShinyFemale = try? container.decode(String.self, forKey: .frontShinyFemale)
      }
}

struct Stats:Codable {
    let baseStat:Int
    let effort:Int
    let stat:Stat
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort = "effort"
        case stat = "stat"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.baseStat = try container.decode(Int.self, forKey: .baseStat)
        self.effort = try container.decode(Int.self, forKey: .effort)
        self.stat = try container.decode(Stat.self, forKey: .stat)
      }
}

struct Stat:Codable {
    let name:String
    let url:String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.url = try container.decode(String.self, forKey: .url)
      }
}

struct Types:Codable {
    let slot:Int
    let type:CustomType
    
    enum CodingKeys: String, CodingKey {
        case slot = "slot"
        case type = "type"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.slot = try container.decode(Int.self, forKey: .slot)
        self.type = try container.decode(CustomType.self, forKey: .type)
      }
}

struct CustomType:Codable {
    let name:String
    let url:String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.url = try container.decode(String.self, forKey: .url)
      }
}


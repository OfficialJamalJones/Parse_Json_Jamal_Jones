//
//  Dragon.swift
//  Parse_Json_Jamal_Jones
//
//  Created by Consultant on 12/22/22.
//

import Foundation

struct Dragon:Codable {
    
    let damageRelations:Damage
    let gameIndices:[DragonGameIndices]
    let generation:Generation
    let id:Int
    let moveDamageClass:MoveDamage
    let moves:[DragonMoves]
    let name:String
    let pokemon:[PokemonStats]
    
    enum CodingKeys: String, CodingKey {
        case damageRelations = "damage_relations"
        case gameIndices = "game_indices"
        case generation = "generation"
        case id = "id"
        case moveDamageClass = "move_damage_class"
        case moves = "moves"
        case name = "name"
        case pokemon = "pokemon"
    }
    
    init(from decoder: Decoder) throws {
        let outerContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.damageRelations = try outerContainer.decode(Damage.self, forKey: .damageRelations)
        self.gameIndices = try outerContainer.decode([DragonGameIndices].self, forKey: .gameIndices)
        self.generation = try outerContainer.decode(Generation.self, forKey: .generation)
        self.id = try outerContainer.decode(Int.self, forKey: .id)
        self.moveDamageClass = try outerContainer.decode(MoveDamage.self, forKey: .moveDamageClass)
        self.moves = try outerContainer.decode([DragonMoves].self, forKey: .moves)
        self.name = try outerContainer.decode(String.self, forKey: .name)
        self.pokemon = try outerContainer.decode([PokemonStats].self, forKey: .pokemon)
      }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(damageRelations, forKey: .damageRelations)
        try container.encode(gameIndices, forKey: .gameIndices)
        try container.encode(generation, forKey: .generation)
        try container.encode(id, forKey: .id)
        try container.encode(moveDamageClass, forKey: .moveDamageClass)
        try container.encode(moves, forKey: .moves)
        try container.encode(name, forKey: .name)
        try container.encode(pokemon, forKey: .pokemon)
    }
    
}

struct Damage:Codable {
    let doubleDamageFrom:[DoubleDamageFrom]
    let doubleDamageTo:[DoubleDamageTo]
    let halfDamageFrom:[HalfDamageFrom]
    let halfDamageTo:[HalfDamageTo]
    let noDamageFrom:[NoDamageFrom]
    let noDamageTo:[NoDamageTo]
    
    
    enum CodingKeys: String, CodingKey {
        case doubleDamageFrom = "double_damage_from"
        case doubleDamageTo = "double_damage_to"
        case halfDamageFrom = "half_damage_from"
        case halfDamageTo = "half_damage_to"
        case noDamageFrom = "no_damage_from"
        case noDamageTo = "no_damage_to"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.doubleDamageFrom = try container.decode([DoubleDamageFrom].self, forKey: .doubleDamageFrom)
        self.doubleDamageTo = try container.decode([DoubleDamageTo].self, forKey: .doubleDamageTo)
        self.halfDamageFrom = try container.decode([HalfDamageFrom].self, forKey: .halfDamageFrom)
        self.halfDamageTo = try container.decode([HalfDamageTo].self, forKey: .halfDamageTo)
        self.noDamageFrom = try container.decode([NoDamageFrom].self, forKey: .noDamageFrom)
        self.noDamageTo = try container.decode([NoDamageTo].self, forKey: .noDamageTo)
      }
}

struct DoubleDamageFrom:Codable {
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

struct DoubleDamageTo:Codable {
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

struct HalfDamageFrom:Codable {
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

struct HalfDamageTo:Codable {
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

struct NoDamageFrom:Codable {
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

struct NoDamageTo:Codable {
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

struct DragonGameIndices:Codable {
    let gameIndex:Int
    let generation:Generation
    
    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case generation = "generation"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.gameIndex = try container.decode(Int.self, forKey: .gameIndex)
        self.generation = try container.decode(Generation.self, forKey: .generation)
      }
}

struct Generation:Codable {
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

struct MoveDamage:Codable {
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

struct DragonMoves:Codable {
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

struct PokemonStats:Codable {
    let pokemon:Pokemon
    let slot:Int
    
    enum CodingKeys: String, CodingKey {
        case pokemon = "pokemon"
        case slot = "slot"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pokemon = try container.decode(Pokemon.self, forKey: .pokemon)
        self.slot = try container.decode(Int.self, forKey: .slot)
      }
}

struct Pokemon:Codable {
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

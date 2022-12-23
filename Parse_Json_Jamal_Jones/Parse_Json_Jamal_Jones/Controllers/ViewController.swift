//
//  ViewController.swift
//  Parse_Json_Jamal_Jones
//
//  Created by Consultant on 12/21/22.
//

//HW: Try to consume the above given JSON files, create separate files for models and parse the response from local file. As an output if you could just print out the most nested key that would be fine. No need to bother about UI.

import UIKit

class ViewController: UIViewController {
    
    var dragonModel = DragonDataModel()
    var glaceonModel = GlaceonDataModel()
    let encoder = JSONEncoder()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dragonModel.loadJson(filename: "SampleJSONDragon")
        self.glaceonModel.loadJson(filename: "SampleJSONGlaceon")
        self.printDragon()
        print("\n")
        self.printGlaceon()
        
    }
    
    func printDragon() {
        
        print("Dragon -> Damage Relations: \(String(describing: self.dragonModel.dragon?.damageRelations))\n\nGame Indices: \(String(describing: self.dragonModel.dragon?.gameIndices))\n\nGeneration: \(String(describing: self.dragonModel.dragon?.generation))\n\nId: \(String(describing: self.dragonModel.dragon?.id))\n\nMove Damage Class: \(String(describing: self.dragonModel.dragon?.moveDamageClass))\n\nMoves: \(String(describing: self.dragonModel.dragon?.moves))\n\nName: \(String(describing: self.dragonModel.dragon?.name))\n\nPokemon: \(String(describing: self.dragonModel.dragon?.pokemon))")
        
        if let encoded = try? self.encoder.encode(self.dragonModel) {
            if let json = String(data: encoded, encoding: .utf8) {
                //print("\nDragon Json: \(json)")
            }
        }
    }
    
    func printGlaceon() {
        print("Glaceon -> Abilities: \(String(describing: self.glaceonModel.glaceon?.abilities))\n\nBase Experience: \(String(describing: self.glaceonModel.glaceon?.baseExperience))\n\nForms: \(String(describing: self.glaceonModel.glaceon?.forms))\n\nGame Indices: \(String(describing: self.glaceonModel.glaceon?.gameIndices))\n\nHeight: \(String(describing: self.glaceonModel.glaceon?.height))\n\nId: \(String(describing: self.glaceonModel.glaceon?.id))\n\nIs Default: \(String(describing: self.glaceonModel.glaceon?.isDefault))\n\nLocation Area Encounters: \(String(describing: self.glaceonModel.glaceon?.locationAreaEncounters))\n\nMoves: \(String(describing: self.glaceonModel.glaceon?.moves))\n\nName: \(String(describing: self.glaceonModel.glaceon?.name))\n\nOrder: \(String(describing: self.glaceonModel.glaceon?.order))\n\nSpecies: \(String(describing: self.glaceonModel.glaceon?.species))\n\nSprites: \(String(describing: self.glaceonModel.glaceon?.sprites))\n\nStats: \(String(describing: self.glaceonModel.glaceon?.stats))\n\nTypes: \(String(describing: self.glaceonModel.glaceon?.types))\n\nWeight: \(String(describing: self.glaceonModel.glaceon?.weight))")
        if let encoded = try? self.encoder.encode(self.glaceonModel) {
            if let json = String(data: encoded, encoding: .utf8) {
                //print("\nGlaceon Json: \(json)")
            }
        }
    }

}


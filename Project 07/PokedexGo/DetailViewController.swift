//
//  DetailViewController.swift
//  PokedexGo
//
//  Created by Anderson Costa
//

import UIKit

class DetailViewController: UIViewController {
  // MARK: - IBOutlets
  @IBOutlet weak var nameIDLabel: UILabel!
  @IBOutlet weak var pokeImageView: UIImageView!
  @IBOutlet weak var pokeInfoLabel: UILabel!
  
  var pokemon: Pokemon! {
    didSet (newPokemon) {
      self.refreshUI()
    }
  }
  
  override func viewDidLoad() {
    refreshUI()
    super.viewDidLoad()
    
  }
  
  func refreshUI() {
    nameIDLabel?.text = pokemon.name + (pokemon.id < 10 ? " #00\(pokemon.id)" : pokemon.id < 100 ? " #0\(pokemon.id)" : " #\(pokemon.id)")
    pokeImageView?.image = LibraryAPI.sharedInstance.downloadImg(pokemon.pokeImgUrl)
    pokeInfoLabel?.text = pokemon.detailInfo
    
    self.title = pokemon.name
  }
}

extension DetailViewController: PokemonSelectionDelegate {
  func pokemonSelected(_ newPokemon: Pokemon) {
    pokemon = newPokemon
  }
}

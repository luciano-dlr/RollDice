//
//  ViewController.swift
//  RollDice
//
//  Created by Luciano de la Rubia on 19/09/2024.
//


import UIKit

class ViewController: UIViewController {

    //interface build para los Dados
    @IBOutlet weak var diceImageViewRight: UIImageView!

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    let diceImages = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix",]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //interface build accion para tirar dados
   
    @IBAction func rollButton(_ sender: UIButton) {
        
        // Actualizar las imágenes de ambos dados de forma aleatoria
        diceImageViewRight.image = getRandomDiceImage()
        diceImageViewLeft.image = getRandomDiceImage()
    }
    
    // Función auxiliar para obtener una imagen aleatoria de dado
      private func getRandomDiceImage() -> UIImage? {
          
          let randomIndex = Int.random(in: 0..<diceImages.count)
          
          // Asignar alguna posicion del array al string que se pasa por prop a la img...
          // Ej pasar por prop 'DiceOne' en imageLiteralResourceName, esto Indica
          // el nombre de la imagen que debe mostrar en lo maquetado, en referencia a
          // la interface Build diceImageViewLeft
          return UIImage(imageLiteralResourceName: diceImages[randomIndex])
          
      }
    

}



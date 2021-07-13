//
//  PlayerDetails ViewController.swift
//  NBA
//
//  Created by Никита Зименко on 29.12.2020.
//

import UIKit

class PlayerDetails_ViewController: UIViewController {
    
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
//    @IBOutlet weak var teamButtor: UIButton!
    var player: Player?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.name
        navigationController?.navigationBar.prefersLargeTitles = true
        positionLabel.text = player?.position
        heightLabel.text = player?.height
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func onTeamButtonClick(_ sender: Any) {
//        todo: реализовать переход на экран с информацией о команде
//        город, название, конференция (west/east)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  PlayersViewController.swift
//  NBA
//
//  Created by Никита Зименко on 29.12.2020.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let players: [Player] = [
        Player(name: "LeBron James", teamName: "Los Angeles Lakers", position: "SF", height: "6'10''"),
        Player(name: "Anthony Davis", teamName: "Los Angeles Lakers", position: "PF", height: "7'0''"),
        Player(name: "Jimmy Butler", teamName: "Miami Heat", position: "SG", height: "6'8''"),
        Player(name: "James Harden", teamName: "Houston Rockets", position: "SG", height: "6'7''")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Players"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        
        let player = players[indexPath.row]
        cell.textLabel?.text = player.name
        cell.detailTextLabel?.text = player.teamName
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let playerDetailsViewController = storyboard.instantiateViewController(identifier: "PlayerDetails")
            as! PlayerDetails_ViewController
        
        let player = players[indexPath.row]
        playerDetailsViewController.player = player
        
        navigationController?.pushViewController(playerDetailsViewController, animated: true)
    }
}

//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Ruçhan Talha Günay on 17.09.2022.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier:"skillVCSegue" , sender: self)
    }
    
    @IBAction func onMenTapped(_ sender: Any) {
        selectLeague(desire: "Men")
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(desire: "Women")

    }
    
     @IBAction func onCOEDTapped(_ sender: Any) {
         selectLeague(desire: "Co-ed")

     }
    
    func selectLeague(desire: String) {
        player.desiredLeague = desire
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    

}

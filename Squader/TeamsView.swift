//
//  PartiesView.swift
//  Squader
//
//  Created by Abdulelah Hajjar on 12/02/2020.
//  Copyright © 2020 Abdulelah Hajjar. All rights reserved.
//

import UIKit

class TeamsView: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var statusBar: UIView!
    
    @IBOutlet weak var footBall: UIButton!
    @IBOutlet weak var tennisBall: UIButton!
    @IBOutlet weak var volleyBall: UIButton!
    @IBOutlet weak var basketBall: UIButton!
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MatchCell", bundle: nil), forCellReuseIdentifier: "MatchCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        setGradientForStatusBar()
    }
    
    
    func setGradientForStatusBar() {
        let gradient = CAGradientLayer()
        gradient.frame = statusBar.bounds
        gradient.colors = [UIColor(red:0.14, green:0.15, blue:0.15, alpha:1.0).cgColor, UIColor(red:0.24, green:0.25, blue:0.26, alpha:1.0).cgColor]
        gradient.endPoint = CGPoint.init(x: 1, y: 1)
        gradient.startPoint = CGPoint.init(x: 0  , y: 0)
        statusBar.layer.insertSublayer(gradient, at: 0)
    }
    
    @IBAction func footBallClicked(_ sender: UIButton) {
        clearSelectedBalls()
        sender.setImage(UIImage(named: "Football_Clicked"), for: .normal)
    }
    
    @IBAction func tennisBallClicked(_ sender: UIButton) {
        clearSelectedBalls()
        sender.setImage(UIImage(named: "Tennis_Clicked"), for: .normal)
    }
    @IBAction func volleyBallClicked(_ sender: UIButton) {
        clearSelectedBalls()
        sender.setImage(UIImage(named: "Volleyball_Clicked"), for: .normal)
    }
    
    @IBAction func basketBall(_ sender: UIButton) {
        clearSelectedBalls()
        sender.setImage(UIImage(named: "Basketball_Clicked"), for: .normal)
    }
    
    func clearSelectedBalls() {
        footBall.setImage(UIImage(named: "Football"), for: .normal)
        tennisBall.setImage(UIImage(named: "Tennis"), for: .normal)
        volleyBall.setImage(UIImage(named: "Volleyball"), for: .normal)
        basketBall.setImage(UIImage(named: "Basketball"), for: .normal)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchCell", for: indexPath) as! MatchCell
        return cell
    }
    
    func joinTeam() {
        performSegue(withIdentifier: "joinTest", sender: self)
    }

    
}


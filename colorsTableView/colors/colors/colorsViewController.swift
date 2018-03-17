//
//  colorsViewController.swift
//  colors
//
//  Created by Eric Rachell on 3/16/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import UIKit

class colorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   // var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Brown"]

    var colors = [Color(name: "red",    UIcolor:    UIColor.red),
                  Color(name: "orange", UIcolor: UIColor.orange),
                  Color(name: "yellow", UIcolor: UIColor.yellow),
                  Color(name: "green",  UIcolor:  UIColor.green),
                  Color(name: "blue",   UIcolor:   UIColor.blue),
                  Color(name: "purple", UIcolor: UIColor.purple),
                  Color(name: "brown",  UIcolor:  UIColor.brown)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].name
        
        cell.backgroundColor = colors[indexPath.row].UIcolor
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  UITableViewController.swift
//  MRT
//

import UIKit

class firstUITableViewController: UITableViewController {
    
    var LineSections:[LineData]  = MakingSection()
    
    //color setting
    
    func LabelColor(LineNumber:String) -> UIColor {
        if LineNumber.containsString("BR") {
            return UIColor(red: 158/255, green: 101/255, blue: 46/255, alpha: 1)
        } else if LineNumber.containsString("G") && !LineNumber.containsString("A") && !LineNumber.containsString("M") {
            return UIColor(red: 0/255, green: 119/255, blue: 73/255, alpha: 1)
        } else if LineNumber.containsString("O") {
            return UIColor(red: 255/255, green: 163/255, blue: 0/255, alpha: 1)
        } else if LineNumber.containsString("B") && !LineNumber.containsString("R") {
            return UIColor(red: 0/255, green: 94/255, blue: 184/255, alpha: 1)
        } else if LineNumber.containsString("R") && !LineNumber.containsString("B") && !LineNumber.containsString("A"){
            return UIColor(red: 203/255, green: 44/255, blue: 48/255, alpha: 1)
        } else if LineNumber.containsString("MG") {
            return UIColor(red: 119/255, green: 185/255, blue: 51/255, alpha: 1)
        } else if LineNumber.containsString("G03A") {
            return UIColor(red: 206/255, green: 220/255, blue: 0/255, alpha: 1)
        } else {
            return UIColor(red: 248/255, green: 144/255, blue: 165/255, alpha: 1)
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return LineSections.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LineSections[section].station.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return LineSections[section].Line
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        if LineSections[indexPath.section].stationlineno[indexPath.row].count == 1 {
            
            //one line cell
            
            let firstCell = tableView.dequeueReusableCellWithIdentifier("line1cell", forIndexPath: indexPath) as! UITableViewCell1
            
            firstCell.nameLabel.text = LineSections[indexPath.section].station[indexPath.row] as String
            firstCell.firstLineLabel.text = LineSections[indexPath.section].stationlineno[indexPath.row][0] as String
            firstCell.firstLineLabel.backgroundColor = LabelColor(LineSections[indexPath.section].stationlineno[indexPath.row][0] as String)
            firstCell.firstLineNameLabel.text = LineSections[indexPath.section].stationlinename[indexPath.row][0] as String
            
            firstCell.firstLineLabel.textColor = UIColor.whiteColor()
            firstCell.firstLineLabel.layer.cornerRadius = 3
            firstCell.firstLineNameLabel.hidden = true
            
            return firstCell
            
        } else {
            
            //two line cell
            
            let secondCell = tableView.dequeueReusableCellWithIdentifier("line2cell", forIndexPath: indexPath) as! UITableViewCell2
            
            secondCell.nameLabel.text = LineSections[indexPath.section].station[indexPath.row] as String
            secondCell.firstLineLabel.text = LineSections[indexPath.section].stationlineno[indexPath.row][0] as String
            secondCell.secondLineLabel.text = LineSections[indexPath.section].stationlineno[indexPath.row][1] as String
            secondCell.firstLineLabel.backgroundColor = LabelColor(LineSections[indexPath.section].stationlineno[indexPath.row][0] as String)
            secondCell.secondLineLabel.backgroundColor = LabelColor(LineSections[indexPath.section].stationlineno[indexPath.row][1] as String)
            secondCell.firstLineNameLabel.text = LineSections[indexPath.section].stationlinename[indexPath.row][0] as String
            secondCell.secondLineNameLabel.text = LineSections[indexPath.section].stationlinename[indexPath.row][1] as String
            
            secondCell.firstLineLabel.textColor = UIColor.whiteColor()
            secondCell.secondLineLabel.textColor = UIColor.whiteColor()
            
            secondCell.firstLineLabel.layer.cornerRadius = 3
            secondCell.secondLineLabel.layer.cornerRadius = 3
            
            secondCell.firstLineNameLabel.hidden = true
            secondCell.secondLineNameLabel.hidden = true
            
            return secondCell
        }
    }
    
    //segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "show1" {
            let oneLineCell = sender as! UITableViewCell1
            let destinationController = segue.destinationViewController as! one
            destinationController.acceptStationName = oneLineCell.nameLabel.text!
            destinationController.acceptLine = oneLineCell.firstLineNameLabel.text!
            
        } else if segue.identifier == "show2" {
            
            let twoLineCell = sender as! UITableViewCell2
            let destinationController = segue.destinationViewController as! two
            destinationController.acceptStationName = twoLineCell.nameLabel.text!
            destinationController.acceptFirstLine = twoLineCell.firstLineNameLabel.text!
            destinationController.acceptSecondLine = twoLineCell.secondLineNameLabel.text!
            
        }
    }
    
}

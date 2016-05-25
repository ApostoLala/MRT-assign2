//
//  tablecellsetting.swift
//

import UIKit

func Color(LineNumber:String) -> UIColor {
    if LineNumber.containsString("文湖") {
        return UIColor(red: 158/255, green: 101/255, blue: 46/255, alpha: 1)
    } else if LineNumber.containsString("松山新店") {
        return UIColor(red: 0/255, green: 119/255, blue: 73/255, alpha: 1)
    } else if LineNumber.containsString("中和新蘆") {
        return UIColor(red: 255/255, green: 163/255, blue: 0/255, alpha: 1)
    } else if LineNumber.containsString("板南") {
        return UIColor(red: 0/255, green: 94/255, blue: 184/255, alpha: 1)
    } else if LineNumber.containsString("淡水信義") {
        return UIColor(red: 203/255, green: 44/255, blue: 48/255, alpha: 1)
    } else if LineNumber.containsString("貓空") {
        return UIColor(red: 119/255, green: 185/255, blue: 51/255, alpha: 1)
    } else if LineNumber.containsString("小碧潭") {
        return UIColor(red: 206/255, green: 220/255, blue: 0/255, alpha: 1)
    } else {
        return UIColor(red: 248/255, green: 144/255, blue: 165/255, alpha: 1)
    }
}


//cell1

class UITableViewCell1: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var firstLineLabel: UILabel!
    @IBOutlet weak var firstLineNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
}


class one: UIViewController {
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var lineLabel: UILabel!
    
    var acceptStationName = String()
    var acceptLine = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stationName.text = acceptStationName
        self.lineLabel.text = acceptLine
        
        self.lineLabel.textColor = UIColor.whiteColor()
        
        self.lineLabel.backgroundColor = Color(acceptLine)
        
        self.navigationItem.title = acceptStationName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

//cell2

class UITableViewCell2: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var firstLineLabel: UILabel!
    @IBOutlet weak var firstLineNameLabel: UILabel!
    @IBOutlet weak var secondLineLabel: UILabel!
    @IBOutlet weak var secondLineNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
}

class two: UIViewController {
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var firstLineLabel: UILabel!
    @IBOutlet weak var secondLineLabel: UILabel!
    
    var acceptStationName = String()
    var acceptFirstLine = String()
    var acceptSecondLine = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stationName.text = acceptStationName
        self.firstLineLabel.text = acceptFirstLine
        self.secondLineLabel.text = acceptSecondLine
        
        self.firstLineLabel.textColor = UIColor.whiteColor()
        self.secondLineLabel.textColor = UIColor.whiteColor()
        
        self.firstLineLabel.backgroundColor = Color(acceptFirstLine)
        self.secondLineLabel.backgroundColor = Color(acceptSecondLine)
        
        self.navigationItem.title = acceptStationName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

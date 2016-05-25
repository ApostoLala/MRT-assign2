//
//  Section.swift
//  MRT
//


import Foundation
import SwiftyJSON

func MakingSection() -> [LineData] {
    
    let path = NSBundle.mainBundle().pathForResource("MRT", ofType: "json")
    let data = NSData(contentsOfFile: path!)
    let USINGJSON = JSON(data: data!)
    
    var line1 = [String]() //松山
    var line2 = [String]() //中和
    var line3 = [String]() //貓空
    var line4 = [String]() //小碧潭
    var line5 = [String]() //版南
    var line6 = [String]() //淡水信義
    var line7 = [String]() //文湖
    var line8 = [String]() //新北投
    
    var line1no = [[String]]()
    var line2no = [[String]]()
    var line3no = [[String]]()
    var line4no = [[String]]()
    var line5no = [[String]]()
    var line6no = [[String]]()
    var line7no = [[String]]()
    var line8no = [[String]]()
    
    var line1name = [[String]]()
    var line2name = [[String]]()
    var line3name = [[String]]()
    var line4name = [[String]]()
    var line5name = [[String]]()
    var line6name = [[String]]()
    var line7name = [[String]]()
    var line8name = [[String]]()
    
    for i in 0...USINGJSON.count {
        let name = USINGJSON[i]["name"].stringValue
        let linesName = USINGJSON[i]["lines"].map({ (x:(String, JSON)) -> String in
            x.0
        })
        let linesNumber = USINGJSON[i]["lines"].map({ (x:(String, JSON)) -> String in
            x.1.stringValue
        })
        
        if linesName.contains("松山新店線") {
            line1.append(name)
            line1no.append(linesNumber)
            line1name.append(linesName)
        }
        
        if linesName.contains("中和新蘆線") {
            line2.append(name)
            line2no.append(linesNumber)
            line2name.append(linesName)
        }
        
        if linesName.contains("貓空纜車") {
            line3.append(name)
            line3no.append(linesNumber)
            line3name.append(linesName)
        }
        
        if linesName.contains("小碧潭支線") {
            line4.append(name)
            line4no.append(linesNumber)
            line4name.append(linesName)
        }
        
        if linesName.contains("板南線") {
            line5.append(name)
            line5no.append(linesNumber)
            line5name.append(linesName)
            
        }
        
        if linesName.contains("淡水信義線") {
            line6.append(name)
            line6no.append(linesNumber)
            line6name.append(linesName)
        }
        
        if linesName.contains("文湖線") {
            line7.append(name)
            line7no.append(linesNumber)
            line7name.append(linesName)
        }
        
        if linesName.contains("新北投支線") {
            line8.append(name)
            line8no.append(linesNumber)
            line8name.append(linesName)
        }
        
    }
    
    var LineDataArray = [LineData]()
    
    let LINE_1 = LineData(title: "松山新店線", objects: line1, no: line1no, line: line1name)
    let LINE_2 = LineData(title: "中和新蘆線", objects: line2, no: line2no, line: line2name)
    let LINE_3 = LineData(title: "貓空纜車", objects: line3, no: line3no, line: line3name)
    let LINE_4 = LineData(title: "小碧潭支線", objects: line4, no: line4no, line: line4name)
    let LINE_5 = LineData(title: "板南線", objects: line5, no: line5no, line: line5name)
    let LINE_6 = LineData(title: "淡水信義線", objects: line6, no: line6no, line: line6name)
    let LINE_7 = LineData(title: "文湖線", objects: line7, no: line7no, line: line7name)
    let LINE_8 = LineData(title: "新北投支線", objects: line8, no: line8no, line: line8name)
    
    LineDataArray.append(LINE_1)
    LineDataArray.append(LINE_2)
    LineDataArray.append(LINE_3)
    LineDataArray.append(LINE_4)
    LineDataArray.append(LINE_5)
    LineDataArray.append(LINE_6)
    LineDataArray.append(LINE_7)
    LineDataArray.append(LINE_8)
    
    return LineDataArray
    
}

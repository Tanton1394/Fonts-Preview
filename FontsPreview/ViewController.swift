//
//  ViewController.swift
//  FontsPreview
//
//  Created by Tanton.Green on 2017/3/27.
//  Copyright © 2017年 Tanton.Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fontFamilyNames = [String]()
    var fontNames = [Int: Any]()
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            fontFamilyNames = UIFont.familyNames
            print(fontFamilyNames.count)
            print("tableView didSet.")
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    let cellReuseIdentifier = "FontsPreviewCell"

    override func viewDidLoad() {
        print("viewDidLoad.")
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return fontFamilyNames.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = HeaderView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 60))
        view.titleLabel.text = fontFamilyNames[section]
        return view
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fontNames[section] = UIFont.fontNames(forFamilyName: fontFamilyNames[section])
        let count = (fontNames[section] as! [String]).count
        return count==0 ? 1 : count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! FontsPreviewCell
        
        let count = (fontNames[indexPath.section] as! [String]).count
        if count==0 {
            let fontName = fontFamilyNames[indexPath.section]
            cell.titleLabel.text = fontName
            cell.noteLabel.font = UIFont(name: fontName, size: 14)
            cell.note2Label.font = UIFont(name: fontName, size: 16)
        } else {
            let fontName = (fontNames[indexPath.section] as! [String])[indexPath.row]
            cell.titleLabel.text = fontName
            cell.noteLabel.font = UIFont(name: fontName, size: 14)
            cell.note2Label.font = UIFont(name: fontName, size: 16)
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.layoutIfNeeded()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

//
//  CreateNewAppointmentVC.swift
//  Duuly
//
//  Created by ACoding on 11/27/17.
//  Copyright © 2017 Mobilloper. All rights reserved.
//

import UIKit

class CreateNewAppointmentVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    //MARK: - IBOutlets
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: -TableViewDataSource
    public func numberOfSections(in tableView: UITableView) -> Int{
        return 7
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 5 {
            return 2
        }else{
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "title_input", for: indexPath) as! TitleCell
            cell.selectionStyle = .none
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "date_input", for: indexPath) as! DateCell
            cell.selectionStyle = .none
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "time_input", for: indexPath) as! AppointmentTimeCell
            cell.selectionStyle = .none
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "additions", for: indexPath) as! AdditionCell
            cell.selectionStyle = .none
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "place_input", for: indexPath) as! AppointmentAddressCell
            cell.selectionStyle = .none
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "contacts_input", for: indexPath) as! AppointmentStatusCell
            cell.selectionStyle = .none
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "notes", for: indexPath) as! NotesCell
            cell.selectionStyle = .none
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "contacts_input", for: indexPath) as! AppointmentStatusCell
            cell.selectionStyle = .none
            return cell
        }
        
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        switch indexPath.section {
        case 0:
            return 62
        case 1:
            return 120
        case 2:
            return 140
        case 3:
            return 64
        case 4:
            return 74
        case 3:
            return 62
        case 4:
            return 150
        default:
            return 120
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let tpHeader = UITableViewHeaderFooterView()
        let header = tpHeader as UIView
        var headerFrame = tableView.frame
        headerFrame.size.height = 16
        header.frame = headerFrame
        
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = kCATransitionPush
        header.layer.add(transition, forKey: nil)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let tmpFooter = UITableViewHeaderFooterView()
        let footer = tmpFooter as UIView
        
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 16
    }
    
    //MARK: - TableViewDelegate
    //MARK: - CustomFunc
    
    //MARK: - IBActions
    @IBAction func onBarBtnBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

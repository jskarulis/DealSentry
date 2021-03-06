//
//  DefineCompanyPopupViewController.swift
//

import UIKit

enum GenericPickerEnum: Int {
    case marketSegment
    case franchiseIndustry
    case country
    case assignRole
}

class DefineCompanyPopupViewController: UIViewController {
    
    var debugUtil = DebugUtility(thisClassName: "DefineCompanyPopupViewController", enabled: false)
    
    let viewStateManager = ViewStateManager.sharedInstance
    
    @IBOutlet weak var popupPromptLabel: UILabel!
    
    @IBOutlet weak var genericPickerView: UIPickerView!
    
    var genericPickerType = GenericPickerEnum.marketSegment
    var pickerDataArray = [String]()
    
    var selectedValue: String = ""

    
    override func viewDidLoad() {
        self.debugUtil.printLog("viewDidLoad", msg: "BEGIN")
        
        super.viewDidLoad()
        
        self.genericPickerView.delegate = self
        self.genericPickerView.dataSource? = self
        
        // reset selected row in Model
   //     self.viewStateManager.defineCompanyPopupPickerSelectedRow = -1
    //    self.viewStateManager.defineCompanyPopupPickerSelectedValue = ""
        self.selectedValue = ""
        
        //self.genericPickerView.reloadAllComponents()

        self.debugUtil.printLog("viewDidLoad", msg: "END")
    }

    override func didReceiveMemoryWarning() {
        self.debugUtil.printLog("didReceiveMemoryWarning", msg: "BEGIN")
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        self.debugUtil.printLog("didReceiveMemoryWarning", msg: "END")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.debugUtil.printLog("prepareForSegue", msg: "BEGIN")
    
        
        if let segueId = segue.identifier {
            
            self.debugUtil.printLog("prepareForSegue", msg: "segueId = " + segueId)
            
            switch segueId {
                case "dismissDefineCompanyPopup":
            
                    self.debugUtil.printLog("prepareForSegue", msg: "dismissing define company picker popup")
                    
                default:
                    break
            }
        }
        
        self.debugUtil.printLog("prepareForSegue", msg: "END")
    }
}

extension DefineCompanyPopupViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch self.genericPickerType {
        case GenericPickerEnum.marketSegment:
            return self.viewStateManager.segmentsArray.count
        case GenericPickerEnum.franchiseIndustry:
            return self.viewStateManager.industriesArray.count
        case GenericPickerEnum.country:
            return self.viewStateManager.countriesArray.count
        case GenericPickerEnum.assignRole:
            return self.viewStateManager.companyRolesArray.count

        }
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       
        switch self.genericPickerType {
        case GenericPickerEnum.marketSegment:
            return self.viewStateManager.segmentsArray[row].name
        case GenericPickerEnum.franchiseIndustry:
            return self.viewStateManager.industriesArray[row].name
        case GenericPickerEnum.country:
            return self.viewStateManager.countriesArray[row].countryName
        case GenericPickerEnum.assignRole:
            return self.viewStateManager.companyRolesArray[row].roleDescription

        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         
        switch self.genericPickerType {
        case GenericPickerEnum.marketSegment:
            self.selectedValue = self.viewStateManager.segmentsArray[row].name
        case GenericPickerEnum.franchiseIndustry:
            self.selectedValue = self.viewStateManager.industriesArray[row].name
        case GenericPickerEnum.country:
            self.selectedValue = self.viewStateManager.countriesArray[row].countryName
        case GenericPickerEnum.assignRole:
            self.selectedValue = self.viewStateManager.companyRolesArray[row].roleDescription

        }
        
        self.performSegueWithIdentifier("dismissDefineCompanyPopup", sender: self)
    }

}
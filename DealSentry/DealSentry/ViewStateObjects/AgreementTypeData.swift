//
//  AgreementTypeData.swift
//

import Foundation

@objc class AgreementTypeData: NSObject {
    
    var agreementTypeId: String = ""
    var agreementDesc: String = ""
    
    init(
        agreementTypeId: String,
        agreementDesc: String
        
        ){
            self.agreementTypeId = agreementTypeId
            self.agreementDesc = agreementDesc
            
    }
}
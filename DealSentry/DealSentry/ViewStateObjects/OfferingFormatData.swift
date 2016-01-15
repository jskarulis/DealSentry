//
//  OfferingFormatData.swift
//

import Foundation

@objc class OfferingFormatData: NSObject {
    
    var offeringFormatId: String = ""
    var offeringFormatDescription: String = ""
    
    init(
        offeringFormatId: String,
        offeringFormatDescription: String
        
        ){
            self.offeringFormatId = offeringFormatId
            self.offeringFormatDescription = offeringFormatDescription
            
    }
}
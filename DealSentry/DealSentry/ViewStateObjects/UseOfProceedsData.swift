//
//  UseOfProceedsData.swift
//

import Foundation

@objc class UseOfProceedsData: NSObject {
    
    var useOfProceedsId: String = ""
    var useOfProceedsDescription: String = ""
    
    init(
        useOfProceedsId: String,
        useOfProceedsDescription: String
        
        ){
            self.useOfProceedsId = useOfProceedsId
            self.useOfProceedsDescription = useOfProceedsDescription
            
    }
}


import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceRetryResponse
        Used By: Order
    */

    class EInvoiceRetryResponse: Codable {
        
        
        public var responseData: [EInvoiceResponseData]
        

        public enum CodingKeys: String, CodingKey {
            
            case responseData = "response_data"
            
        }

        public init(responseData: [EInvoiceResponseData]) {
            
            self.responseData = responseData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                responseData = try container.decode([EInvoiceResponseData].self, forKey: .responseData)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(responseData, forKey: .responseData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceRetryResponse
        Used By: Order
    */

    class EInvoiceRetryResponse: Codable {
        
        
        public var responseData: [EInvoiceResponseData]
        

        public enum CodingKeys: String, CodingKey {
            
            case responseData = "response_data"
            
        }

        public init(responseData: [EInvoiceResponseData]) {
            
            self.responseData = responseData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                responseData = try container.decode([EInvoiceResponseData].self, forKey: .responseData)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(responseData, forKey: .responseData)
            
            
        }
        
    }
}



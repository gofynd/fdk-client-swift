

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceErrorResponseDetails
        Used By: Order
    */

    class EInvoiceErrorResponseDetails: Codable {
        
        
        public var responseData: [EInvoiceErrorResponseData]
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case responseData = "response_data"
            
            case message = "message"
            
        }

        public init(message: String? = nil, responseData: [EInvoiceErrorResponseData]) {
            
            self.responseData = responseData
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                responseData = try container.decode([EInvoiceErrorResponseData].self, forKey: .responseData)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(responseData, forKey: .responseData)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceErrorResponseDetails
        Used By: Order
    */

    class EInvoiceErrorResponseDetails: Codable {
        
        
        public var responseData: [EInvoiceErrorResponseData]
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case responseData = "response_data"
            
            case message = "message"
            
        }

        public init(message: String? = nil, responseData: [EInvoiceErrorResponseData]) {
            
            self.responseData = responseData
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                responseData = try container.decode([EInvoiceErrorResponseData].self, forKey: .responseData)
                
            
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(responseData, forKey: .responseData)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



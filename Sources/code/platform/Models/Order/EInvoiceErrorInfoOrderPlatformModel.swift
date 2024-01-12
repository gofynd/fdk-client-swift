

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceErrorInfo
        Used By: Order
    */

    class EInvoiceErrorInfo: Codable {
        
        
        public var errorDetails: [EInvoiceErrorDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case errorDetails = "error_details"
            
        }

        public init(errorDetails: [EInvoiceErrorDetails]? = nil) {
            
            self.errorDetails = errorDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errorDetails = try container.decode([EInvoiceErrorDetails].self, forKey: .errorDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errorDetails, forKey: .errorDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceErrorInfo
        Used By: Order
    */

    class EInvoiceErrorInfo: Codable {
        
        
        public var errorDetails: [EInvoiceErrorDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case errorDetails = "error_details"
            
        }

        public init(errorDetails: [EInvoiceErrorDetails]? = nil) {
            
            self.errorDetails = errorDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errorDetails = try container.decode([EInvoiceErrorDetails].self, forKey: .errorDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errorDetails, forKey: .errorDetails)
            
            
        }
        
    }
}



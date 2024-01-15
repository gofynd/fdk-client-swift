

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceErrorDetails
        Used By: Order
    */

    class EInvoiceErrorDetails: Codable {
        
        
        public var errorCode: String?
        
        public var errorMessage: String
        

        public enum CodingKeys: String, CodingKey {
            
            case errorCode = "error_code"
            
            case errorMessage = "error_message"
            
        }

        public init(errorCode: String? = nil, errorMessage: String) {
            
            self.errorCode = errorCode
            
            self.errorMessage = errorMessage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errorCode = try container.decode(String.self, forKey: .errorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errorCode, forKey: .errorCode)
            
            
            
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceErrorDetails
        Used By: Order
    */

    class EInvoiceErrorDetails: Codable {
        
        
        public var errorCode: String?
        
        public var errorMessage: String
        

        public enum CodingKeys: String, CodingKey {
            
            case errorCode = "error_code"
            
            case errorMessage = "error_message"
            
        }

        public init(errorCode: String? = nil, errorMessage: String) {
            
            self.errorCode = errorCode
            
            self.errorMessage = errorMessage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errorCode = try container.decode(String.self, forKey: .errorCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errorCode, forKey: .errorCode)
            
            
            
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            
        }
        
    }
}



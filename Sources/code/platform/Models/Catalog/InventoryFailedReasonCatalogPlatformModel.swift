

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryFailedReason
        Used By: Catalog
    */

    class InventoryFailedReason: Codable {
        
        
        public var errors: String?
        
        public var message: String
        
        public var reasonCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
            case message = "message"
            
            case reasonCode = "reason_code"
            
        }

        public init(errors: String? = nil, message: String, reasonCode: Int? = nil) {
            
            self.errors = errors
            
            self.message = message
            
            self.reasonCode = reasonCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errors = try container.decode(String.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    reasonCode = try container.decode(Int.self, forKey: .reasonCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(reasonCode, forKey: .reasonCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryFailedReason
        Used By: Catalog
    */

    class InventoryFailedReason: Codable {
        
        
        public var errors: String?
        
        public var message: String
        
        public var reasonCode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
            case message = "message"
            
            case reasonCode = "reason_code"
            
        }

        public init(errors: String? = nil, message: String, reasonCode: Int? = nil) {
            
            self.errors = errors
            
            self.message = message
            
            self.reasonCode = reasonCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errors = try container.decode(String.self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    reasonCode = try container.decode(Int.self, forKey: .reasonCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(reasonCode, forKey: .reasonCode)
            
            
        }
        
    }
}



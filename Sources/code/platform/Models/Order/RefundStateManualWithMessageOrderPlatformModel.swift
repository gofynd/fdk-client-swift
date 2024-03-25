

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundStateManualWithMessage
        Used By: Order
    */

    class RefundStateManualWithMessage: Codable {
        
        
        public var isManual: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isManual = "is_manual"
            
            case message = "message"
            
        }

        public init(isManual: Bool? = nil, message: String? = nil) {
            
            self.isManual = isManual
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isManual = try container.decode(Bool.self, forKey: .isManual)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(isManual, forKey: .isManual)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundStateManualWithMessage
        Used By: Order
    */

    class RefundStateManualWithMessage: Codable {
        
        
        public var isManual: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isManual = "is_manual"
            
            case message = "message"
            
        }

        public init(isManual: Bool? = nil, message: String? = nil) {
            
            self.isManual = isManual
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isManual = try container.decode(Bool.self, forKey: .isManual)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(isManual, forKey: .isManual)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



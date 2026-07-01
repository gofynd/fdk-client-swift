

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ActionDetailSchema
        Used By: Order
    */

    class ActionDetailSchema: Codable {
        
        
        public var name: [String: Any]
        
        public var currentMode: String
        
        public var currentIdentifier: String
        
        public var refundTo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case currentMode = "current_mode"
            
            case currentIdentifier = "current_identifier"
            
            case refundTo = "refund_to"
            
        }

        public init(currentIdentifier: String, currentMode: String, name: [String: Any], refundTo: String? = nil) {
            
            self.name = name
            
            self.currentMode = currentMode
            
            self.currentIdentifier = currentIdentifier
            
            self.refundTo = refundTo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode([String: Any].self, forKey: .name)
                
            
            
            
                currentMode = try container.decode(String.self, forKey: .currentMode)
                
            
            
            
                currentIdentifier = try container.decode(String.self, forKey: .currentIdentifier)
                
            
            
            
                do {
                    refundTo = try container.decode(String.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(currentMode, forKey: .currentMode)
            
            
            
            
            try? container.encodeIfPresent(currentIdentifier, forKey: .currentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ActionDetailSchema
        Used By: Order
    */

    class ActionDetailSchema: Codable {
        
        
        public var name: [String: Any]
        
        public var currentMode: String
        
        public var currentIdentifier: String
        
        public var refundTo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case currentMode = "current_mode"
            
            case currentIdentifier = "current_identifier"
            
            case refundTo = "refund_to"
            
        }

        public init(currentIdentifier: String, currentMode: String, name: [String: Any], refundTo: String? = nil) {
            
            self.name = name
            
            self.currentMode = currentMode
            
            self.currentIdentifier = currentIdentifier
            
            self.refundTo = refundTo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode([String: Any].self, forKey: .name)
                
            
            
            
                currentMode = try container.decode(String.self, forKey: .currentMode)
                
            
            
            
                currentIdentifier = try container.decode(String.self, forKey: .currentIdentifier)
                
            
            
            
                do {
                    refundTo = try container.decode(String.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(currentMode, forKey: .currentMode)
            
            
            
            
            try? container.encodeIfPresent(currentIdentifier, forKey: .currentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
        }
        
    }
}



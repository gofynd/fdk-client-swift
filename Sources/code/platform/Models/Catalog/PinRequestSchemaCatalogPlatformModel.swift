

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PinRequestSchema
        Used By: Catalog
    */

    class PinRequestSchema: Codable {
        
        
        public var actionValue: [PinItemRequestSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case actionValue = "action_value"
            
        }

        public init(actionValue: [PinItemRequestSchema]? = nil) {
            
            self.actionValue = actionValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    actionValue = try container.decode([PinItemRequestSchema].self, forKey: .actionValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(actionValue, forKey: .actionValue)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PinRequestSchema
        Used By: Catalog
    */

    class PinRequestSchema: Codable {
        
        
        public var actionValue: [PinItemRequestSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case actionValue = "action_value"
            
        }

        public init(actionValue: [PinItemRequestSchema]? = nil) {
            
            self.actionValue = actionValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    actionValue = try container.decode([PinItemRequestSchema].self, forKey: .actionValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(actionValue, forKey: .actionValue)
            
            
        }
        
    }
}



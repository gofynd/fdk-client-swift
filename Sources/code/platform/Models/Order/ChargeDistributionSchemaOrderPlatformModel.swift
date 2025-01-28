

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ChargeDistributionSchema
        Used By: Order
    */

    class ChargeDistributionSchema: Codable {
        
        
        public var type: String
        
        public var logic: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case logic = "logic"
            
        }

        public init(logic: String, type: String) {
            
            self.type = type
            
            self.logic = logic
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                logic = try container.decode(String.self, forKey: .logic)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(logic, forKey: .logic)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ChargeDistributionSchema
        Used By: Order
    */

    class ChargeDistributionSchema: Codable {
        
        
        public var type: String
        
        public var logic: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case logic = "logic"
            
        }

        public init(logic: String, type: String) {
            
            self.type = type
            
            self.logic = logic
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                logic = try container.decode(String.self, forKey: .logic)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(logic, forKey: .logic)
            
            
        }
        
    }
}



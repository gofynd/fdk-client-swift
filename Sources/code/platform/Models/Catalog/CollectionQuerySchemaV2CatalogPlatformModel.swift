

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionQuerySchemaV2
        Used By: Catalog
    */

    class CollectionQuerySchemaV2: Codable {
        
        
        public var attribute: String
        
        public var op: String
        
        public var value: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case attribute = "attribute"
            
            case op = "op"
            
            case value = "value"
            
        }

        public init(attribute: String, op: String, value: [String]) {
            
            self.attribute = attribute
            
            self.op = op
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                attribute = try container.decode(String.self, forKey: .attribute)
                
            
            
            
                op = try container.decode(String.self, forKey: .op)
                
            
            
            
                value = try container.decode([String].self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
            
            
            try? container.encodeIfPresent(op, forKey: .op)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionQuerySchemaV2
        Used By: Catalog
    */

    class CollectionQuerySchemaV2: Codable {
        
        
        public var attribute: String
        
        public var op: String
        
        public var value: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case attribute = "attribute"
            
            case op = "op"
            
            case value = "value"
            
        }

        public init(attribute: String, op: String, value: [String]) {
            
            self.attribute = attribute
            
            self.op = op
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                attribute = try container.decode(String.self, forKey: .attribute)
                
            
            
            
                op = try container.decode(String.self, forKey: .op)
                
            
            
            
                value = try container.decode([String].self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
            
            
            try? container.encodeIfPresent(op, forKey: .op)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



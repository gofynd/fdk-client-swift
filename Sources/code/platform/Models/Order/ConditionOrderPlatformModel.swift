

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Condition
        Used By: Order
    */

    class Condition: Codable {
        
        
        public var value: String
        
        public var variable: String
        
        public var operation: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case variable = "variable"
            
            case operation = "operation"
            
        }

        public init(operation: String, value: String, variable: String) {
            
            self.value = value
            
            self.variable = variable
            
            self.operation = operation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                variable = try container.decode(String.self, forKey: .variable)
                
            
            
            
                operation = try container.decode(String.self, forKey: .operation)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(variable, forKey: .variable)
            
            
            
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Condition
        Used By: Order
    */

    class Condition: Codable {
        
        
        public var value: String
        
        public var variable: String
        
        public var operation: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case variable = "variable"
            
            case operation = "operation"
            
        }

        public init(operation: String, value: String, variable: String) {
            
            self.value = value
            
            self.variable = variable
            
            self.operation = operation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                variable = try container.decode(String.self, forKey: .variable)
                
            
            
            
                operation = try container.decode(String.self, forKey: .operation)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(variable, forKey: .variable)
            
            
            
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            
        }
        
    }
}



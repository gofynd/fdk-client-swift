

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FilterOptions
        Used By: Order
    */

    class FilterOptions: Codable {
        
        
        public var label: String
        
        public var value: String
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case value = "value"
            
            case name = "name"
            
        }

        public init(label: String, name: String? = nil, value: String) {
            
            self.label = label
            
            self.value = value
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FilterOptions
        Used By: Order
    */

    class FilterOptions: Codable {
        
        
        public var label: String
        
        public var value: String
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case value = "value"
            
            case name = "name"
            
        }

        public init(label: String, name: String? = nil, value: String) {
            
            self.label = label
            
            self.value = value
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                label = try container.decode(String.self, forKey: .label)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



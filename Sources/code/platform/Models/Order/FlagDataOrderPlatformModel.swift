

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FlagData
        Used By: Order
    */

    class FlagData: Codable {
        
        
        public var value: [String: Any]?
        
        public var filter: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case filter = "filter"
            
        }

        public init(filter: [String: Any]? = nil, value: [String: Any]? = nil) {
            
            self.value = value
            
            self.filter = filter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode([String: Any].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filter = try container.decode([String: Any].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FlagData
        Used By: Order
    */

    class FlagData: Codable {
        
        
        public var value: [String: Any]?
        
        public var filter: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case filter = "filter"
            
        }

        public init(filter: [String: Any]? = nil, value: [String: Any]? = nil) {
            
            self.value = value
            
            self.filter = filter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode([String: Any].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filter = try container.decode([String: Any].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
        }
        
    }
}



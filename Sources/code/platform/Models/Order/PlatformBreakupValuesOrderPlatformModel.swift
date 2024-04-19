

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PlatformBreakupValues
        Used By: Order
    */

    class PlatformBreakupValues: Codable {
        
        
        public var value: String?
        
        public var name: String?
        
        public var display: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case name = "name"
            
            case display = "display"
            
        }

        public init(display: String? = nil, name: String? = nil, value: String? = nil) {
            
            self.value = value
            
            self.name = name
            
            self.display = display
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(value, forKey: .value)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(display, forKey: .display)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PlatformBreakupValues
        Used By: Order
    */

    class PlatformBreakupValues: Codable {
        
        
        public var value: String?
        
        public var name: String?
        
        public var display: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case name = "name"
            
            case display = "display"
            
        }

        public init(display: String? = nil, name: String? = nil, value: String? = nil) {
            
            self.value = value
            
            self.name = name
            
            self.display = display
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(value, forKey: .value)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(display, forKey: .display)
            
            
        }
        
    }
}



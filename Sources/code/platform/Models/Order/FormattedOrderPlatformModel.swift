

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Formatted
        Used By: Order
    */

    class Formatted: Codable {
        
        
        public var max: String?
        
        public var min: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
        }

        public init(max: String? = nil, min: String? = nil) {
            
            self.max = max
            
            self.min = min
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(String.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(max, forKey: .max)
            
            
            
            
            try? container.encode(min, forKey: .min)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Formatted
        Used By: Order
    */

    class Formatted: Codable {
        
        
        public var max: String?
        
        public var min: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
        }

        public init(max: String? = nil, min: String? = nil) {
            
            self.max = max
            
            self.min = min
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(String.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(max, forKey: .max)
            
            
            
            
            try? container.encode(min, forKey: .min)
            
            
        }
        
    }
}



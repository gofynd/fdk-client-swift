

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: PricingStrategy
        Used By: Configuration
    */

    class PricingStrategy: Codable {
        
        
        public var isActive: Bool?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case value = "value"
            
        }

        public init(isActive: Bool? = nil, value: String? = nil) {
            
            self.isActive = isActive
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: PricingStrategy
        Used By: Configuration
    */

    class PricingStrategy: Codable {
        
        
        public var isActive: Bool?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case value = "value"
            
        }

        public init(isActive: Bool? = nil, value: String? = nil) {
            
            self.isActive = isActive
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: DomainType
        Used By: Configuration
    */

    class DomainType: Codable {
        
        
        public var key: String?
        
        public var display: String?
        
        public var values: [DomainValue]?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case values = "values"
            
        }

        public init(display: String? = nil, key: String? = nil, values: [DomainValue]? = nil) {
            
            self.key = key
            
            self.display = display
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                
            
            
                do {
                    values = try container.decode([DomainValue].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: DomainType
        Used By: Configuration
    */

    class DomainType: Codable {
        
        
        public var key: String?
        
        public var display: String?
        
        public var values: [DomainValue]?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case values = "values"
            
        }

        public init(display: String? = nil, key: String? = nil, values: [DomainValue]? = nil) {
            
            self.key = key
            
            self.display = display
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                
            
            
                do {
                    values = try container.decode([DomainValue].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



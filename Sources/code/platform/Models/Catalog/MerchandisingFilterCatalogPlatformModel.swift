

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingFilter
        Used By: Catalog
    */

    class MerchandisingFilter: Codable {
        
        
        public var attribute: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case attribute = "attribute"
            
            case value = "value"
            
        }

        public init(attribute: String? = nil, value: String? = nil) {
            
            self.attribute = attribute
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attribute = try container.decode(String.self, forKey: .attribute)
                
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
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingFilter
        Used By: Catalog
    */

    class MerchandisingFilter: Codable {
        
        
        public var attribute: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case attribute = "attribute"
            
            case value = "value"
            
        }

        public init(attribute: String? = nil, value: String? = nil) {
            
            self.attribute = attribute
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attribute = try container.decode(String.self, forKey: .attribute)
                
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
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



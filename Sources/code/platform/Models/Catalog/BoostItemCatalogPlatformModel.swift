

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BoostItem
        Used By: Catalog
    */

    class BoostItem: Codable {
        
        
        public var attributeKey: String?
        
        public var attributeValue: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributeKey = "attribute_key"
            
            case attributeValue = "attribute_value"
            
        }

        public init(attributeKey: String? = nil, attributeValue: String? = nil) {
            
            self.attributeKey = attributeKey
            
            self.attributeValue = attributeValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attributeKey = try container.decode(String.self, forKey: .attributeKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributeValue = try container.decode(String.self, forKey: .attributeValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributeKey, forKey: .attributeKey)
            
            
            
            
            try? container.encodeIfPresent(attributeValue, forKey: .attributeValue)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BoostItem
        Used By: Catalog
    */

    class BoostItem: Codable {
        
        
        public var attributeKey: String?
        
        public var attributeValue: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributeKey = "attribute_key"
            
            case attributeValue = "attribute_value"
            
        }

        public init(attributeKey: String? = nil, attributeValue: String? = nil) {
            
            self.attributeKey = attributeKey
            
            self.attributeValue = attributeValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attributeKey = try container.decode(String.self, forKey: .attributeKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributeValue = try container.decode(String.self, forKey: .attributeValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributeKey, forKey: .attributeKey)
            
            
            
            
            try? container.encodeIfPresent(attributeValue, forKey: .attributeValue)
            
            
        }
        
    }
}



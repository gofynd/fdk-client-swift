

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FulfillmentOptionSchema
        Used By: Order
    */

    class FulfillmentOptionSchema: Codable {
        
        
        public var name: String?
        
        public var slug: String?
        
        public var isDefault: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case isDefault = "is_default"
            
            case type = "type"
            
        }

        public init(isDefault: Bool? = nil, name: String? = nil, slug: String? = nil, type: String? = nil) {
            
            self.name = name
            
            self.slug = slug
            
            self.isDefault = isDefault
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FulfillmentOptionSchema
        Used By: Order
    */

    class FulfillmentOptionSchema: Codable {
        
        
        public var name: String?
        
        public var slug: String?
        
        public var isDefault: Bool?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case isDefault = "is_default"
            
            case type = "type"
            
        }

        public init(isDefault: Bool? = nil, name: String? = nil, slug: String? = nil, type: String? = nil) {
            
            self.name = name
            
            self.slug = slug
            
            self.isDefault = isDefault
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



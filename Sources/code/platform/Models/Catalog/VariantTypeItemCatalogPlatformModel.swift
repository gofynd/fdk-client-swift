

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: VariantTypeItem
        Used By: Catalog
    */

    class VariantTypeItem: Codable {
        
        
        public var name: String?
        
        public var key: String?
        
        public var type: [String]?
        
        public var imageConfig: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case key = "key"
            
            case type = "type"
            
            case imageConfig = "image_config"
            
        }

        public init(imageConfig: [String: Any]? = nil, key: String? = nil, name: String? = nil, type: [String]? = nil) {
            
            self.name = name
            
            self.key = key
            
            self.type = type
            
            self.imageConfig = imageConfig
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode([String].self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imageConfig = try container.decode([String: Any].self, forKey: .imageConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(imageConfig, forKey: .imageConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: VariantTypeItem
        Used By: Catalog
    */

    class VariantTypeItem: Codable {
        
        
        public var name: String?
        
        public var key: String?
        
        public var type: [String]?
        
        public var imageConfig: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case key = "key"
            
            case type = "type"
            
            case imageConfig = "image_config"
            
        }

        public init(imageConfig: [String: Any]? = nil, key: String? = nil, name: String? = nil, type: [String]? = nil) {
            
            self.name = name
            
            self.key = key
            
            self.type = type
            
            self.imageConfig = imageConfig
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode([String].self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imageConfig = try container.decode([String: Any].self, forKey: .imageConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(imageConfig, forKey: .imageConfig)
            
            
        }
        
    }
}



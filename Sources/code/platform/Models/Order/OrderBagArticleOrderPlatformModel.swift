

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderBagArticle
        Used By: Order
    */

    class OrderBagArticle: Codable {
        
        
        public var identifiers: [String: Any]?
        
        public var returnConfig: ReturnConfig?
        
        public var uid: String?
        
        public var size: String?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case returnConfig = "return_config"
            
            case uid = "uid"
            
            case size = "size"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, size: String? = nil, tags: [String]? = nil, uid: String? = nil, customJson: [String: Any]? = nil) {
            
            self.identifiers = identifiers
            
            self.returnConfig = returnConfig
            
            self.uid = uid
            
            self.size = size
            
            self.tags = tags
            
            self.customJson = customJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifiers = try container.decode([String: Any].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderBagArticle
        Used By: Order
    */

    class OrderBagArticle: Codable {
        
        
        public var identifiers: [String: Any]?
        
        public var returnConfig: ReturnConfig?
        
        public var uid: String?
        
        public var size: String?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case returnConfig = "return_config"
            
            case uid = "uid"
            
            case size = "size"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, size: String? = nil, tags: [String]? = nil, uid: String? = nil, customJson: [String: Any]? = nil) {
            
            self.identifiers = identifiers
            
            self.returnConfig = returnConfig
            
            self.uid = uid
            
            self.size = size
            
            self.tags = tags
            
            self.customJson = customJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifiers = try container.decode([String: Any].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
}



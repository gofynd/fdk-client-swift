

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
        
        public var variants: [String: Any]?
        
        public var groupInfo: [String: Any]?
        
        public var groupInfoIds: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case returnConfig = "return_config"
            
            case uid = "uid"
            
            case size = "size"
            
            case tags = "tags"
            
            case variants = "variants"
            
            case groupInfo = "group_info"
            
            case groupInfoIds = "group_info_ids"
            
        }

        public init(groupInfo: [String: Any]? = nil, groupInfoIds: [[String: Any]]? = nil, identifiers: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, size: String? = nil, tags: [String]? = nil, uid: String? = nil, variants: [String: Any]? = nil) {
            
            self.identifiers = identifiers
            
            self.returnConfig = returnConfig
            
            self.uid = uid
            
            self.size = size
            
            self.tags = tags
            
            self.variants = variants
            
            self.groupInfo = groupInfo
            
            self.groupInfoIds = groupInfoIds
            
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
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupInfo = try container.decode([String: Any].self, forKey: .groupInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupInfoIds = try container.decode([[String: Any]].self, forKey: .groupInfoIds)
                
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
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            
            try? container.encodeIfPresent(groupInfo, forKey: .groupInfo)
            
            
            
            
            try? container.encodeIfPresent(groupInfoIds, forKey: .groupInfoIds)
            
            
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
        
        public var variants: [String: Any]?
        
        public var groupInfo: [String: Any]?
        
        public var groupInfoIds: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifiers = "identifiers"
            
            case returnConfig = "return_config"
            
            case uid = "uid"
            
            case size = "size"
            
            case tags = "tags"
            
            case variants = "variants"
            
            case groupInfo = "group_info"
            
            case groupInfoIds = "group_info_ids"
            
        }

        public init(groupInfo: [String: Any]? = nil, groupInfoIds: [[String: Any]]? = nil, identifiers: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, size: String? = nil, tags: [String]? = nil, uid: String? = nil, variants: [String: Any]? = nil) {
            
            self.identifiers = identifiers
            
            self.returnConfig = returnConfig
            
            self.uid = uid
            
            self.size = size
            
            self.tags = tags
            
            self.variants = variants
            
            self.groupInfo = groupInfo
            
            self.groupInfoIds = groupInfoIds
            
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
                    variants = try container.decode([String: Any].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupInfo = try container.decode([String: Any].self, forKey: .groupInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupInfoIds = try container.decode([[String: Any]].self, forKey: .groupInfoIds)
                
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
            
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            
            try? container.encodeIfPresent(groupInfo, forKey: .groupInfo)
            
            
            
            
            try? container.encodeIfPresent(groupInfoIds, forKey: .groupInfoIds)
            
            
        }
        
    }
}



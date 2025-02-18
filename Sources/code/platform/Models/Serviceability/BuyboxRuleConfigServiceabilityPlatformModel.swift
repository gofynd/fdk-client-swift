

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BuyboxRuleConfig
        Used By: Serviceability
    */

    class BuyboxRuleConfig: Codable {
        
        
        public var storeTypePriority: [String]?
        
        public var storeTagPriority: [String]?
        
        public var sort: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeTypePriority = "store_type_priority"
            
            case storeTagPriority = "store_tag_priority"
            
            case sort = "sort"
            
        }

        public init(sort: [String]? = nil, storeTagPriority: [String]? = nil, storeTypePriority: [String]? = nil) {
            
            self.storeTypePriority = storeTypePriority
            
            self.storeTagPriority = storeTagPriority
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeTypePriority = try container.decode([String].self, forKey: .storeTypePriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeTagPriority = try container.decode([String].self, forKey: .storeTagPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeTypePriority, forKey: .storeTypePriority)
            
            
            
            
            try? container.encodeIfPresent(storeTagPriority, forKey: .storeTagPriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BuyboxRuleConfig
        Used By: Serviceability
    */

    class BuyboxRuleConfig: Codable {
        
        
        public var storeTypePriority: [String]?
        
        public var storeTagPriority: [String]?
        
        public var sort: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeTypePriority = "store_type_priority"
            
            case storeTagPriority = "store_tag_priority"
            
            case sort = "sort"
            
        }

        public init(sort: [String]? = nil, storeTagPriority: [String]? = nil, storeTypePriority: [String]? = nil) {
            
            self.storeTypePriority = storeTypePriority
            
            self.storeTagPriority = storeTagPriority
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeTypePriority = try container.decode([String].self, forKey: .storeTypePriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeTagPriority = try container.decode([String].self, forKey: .storeTagPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeTypePriority, forKey: .storeTypePriority)
            
            
            
            
            try? container.encodeIfPresent(storeTagPriority, forKey: .storeTagPriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdateMarketplaceOptinRequest
        Used By: Catalog
    */

    class UpdateMarketplaceOptinRequest: Codable {
        
        
        public var brandIds: [Int]?
        
        public var companyId: Int?
        
        public var enabled: Bool?
        
        public var optLevel: String?
        
        public var platform: String?
        
        public var storeIds: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandIds = "brand_ids"
            
            case companyId = "company_id"
            
            case enabled = "enabled"
            
            case optLevel = "opt_level"
            
            case platform = "platform"
            
            case storeIds = "store_ids"
            
        }

        public init(brandIds: [Int]? = nil, companyId: Int? = nil, enabled: Bool? = nil, optLevel: String? = nil, platform: String? = nil, storeIds: [Int]? = nil) {
            
            self.brandIds = brandIds
            
            self.companyId = companyId
            
            self.enabled = enabled
            
            self.optLevel = optLevel
            
            self.platform = platform
            
            self.storeIds = storeIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandIds = try container.decode([Int].self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    optLevel = try container.decode(String.self, forKey: .optLevel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdateMarketplaceOptinRequest
        Used By: Catalog
    */

    class UpdateMarketplaceOptinRequest: Codable {
        
        
        public var brandIds: [Int]?
        
        public var companyId: Int?
        
        public var enabled: Bool?
        
        public var optLevel: String?
        
        public var platform: String?
        
        public var storeIds: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandIds = "brand_ids"
            
            case companyId = "company_id"
            
            case enabled = "enabled"
            
            case optLevel = "opt_level"
            
            case platform = "platform"
            
            case storeIds = "store_ids"
            
        }

        public init(brandIds: [Int]? = nil, companyId: Int? = nil, enabled: Bool? = nil, optLevel: String? = nil, platform: String? = nil, storeIds: [Int]? = nil) {
            
            self.brandIds = brandIds
            
            self.companyId = companyId
            
            self.enabled = enabled
            
            self.optLevel = optLevel
            
            self.platform = platform
            
            self.storeIds = storeIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandIds = try container.decode([Int].self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    optLevel = try container.decode(String.self, forKey: .optLevel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
        }
        
    }
}



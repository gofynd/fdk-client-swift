

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateMarketplaceOptinResponseSchema
        Used By: Catalog
    */

    class CreateMarketplaceOptinResponseSchema: Codable {
        
        
        public var storeIds: [Int]?
        
        public var brandIds: [Int]?
        
        public var companyId: Int?
        
        public var optLevel: String?
        
        public var platform: String?
        
        public var enabled: Bool?
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: CreatedBy?
        
        public var appId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeIds = "store_ids"
            
            case brandIds = "brand_ids"
            
            case companyId = "company_id"
            
            case optLevel = "opt_level"
            
            case platform = "platform"
            
            case enabled = "enabled"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case appId = "app_id"
            
        }

        public init(appId: String? = nil, brandIds: [Int]? = nil, companyId: Int? = nil, createdBy: CreatedBy? = nil, enabled: Bool? = nil, modifiedBy: CreatedBy? = nil, optLevel: String? = nil, platform: String? = nil, storeIds: [Int]? = nil) {
            
            self.storeIds = storeIds
            
            self.brandIds = brandIds
            
            self.companyId = companyId
            
            self.optLevel = optLevel
            
            self.platform = platform
            
            self.enabled = enabled
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateMarketplaceOptinResponseSchema
        Used By: Catalog
    */

    class CreateMarketplaceOptinResponseSchema: Codable {
        
        
        public var storeIds: [Int]?
        
        public var brandIds: [Int]?
        
        public var companyId: Int?
        
        public var optLevel: String?
        
        public var platform: String?
        
        public var enabled: Bool?
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: CreatedBy?
        
        public var appId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeIds = "store_ids"
            
            case brandIds = "brand_ids"
            
            case companyId = "company_id"
            
            case optLevel = "opt_level"
            
            case platform = "platform"
            
            case enabled = "enabled"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case appId = "app_id"
            
        }

        public init(appId: String? = nil, brandIds: [Int]? = nil, companyId: Int? = nil, createdBy: CreatedBy? = nil, enabled: Bool? = nil, modifiedBy: CreatedBy? = nil, optLevel: String? = nil, platform: String? = nil, storeIds: [Int]? = nil) {
            
            self.storeIds = storeIds
            
            self.brandIds = brandIds
            
            self.companyId = companyId
            
            self.optLevel = optLevel
            
            self.platform = platform
            
            self.enabled = enabled
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}



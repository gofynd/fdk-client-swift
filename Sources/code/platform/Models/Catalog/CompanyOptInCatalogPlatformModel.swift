

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CompanyOptIn
        Used By: Catalog
    */

    class CompanyOptIn: Codable {
        
        
        public var modifiedOn: Int
        
        public var companyId: Int
        
        public var brandIds: [Int]
        
        public var optLevel: String
        
        public var storeIds: [Int]
        
        public var createdOn: Int
        
        public var modifiedBy: [String: Any]?
        
        public var platform: String
        
        public var createdBy: [String: Any]?
        
        public var enabled: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case companyId = "company_id"
            
            case brandIds = "brand_ids"
            
            case optLevel = "opt_level"
            
            case storeIds = "store_ids"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case platform = "platform"
            
            case createdBy = "created_by"
            
            case enabled = "enabled"
            
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            
            self.modifiedOn = modifiedOn
            
            self.companyId = companyId
            
            self.brandIds = brandIds
            
            self.optLevel = optLevel
            
            self.storeIds = storeIds
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.platform = platform
            
            self.createdBy = createdBy
            
            self.enabled = enabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                brandIds = try container.decode([Int].self, forKey: .brandIds)
                
            
            
            
                optLevel = try container.decode(String.self, forKey: .optLevel)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                createdOn = try container.decode(Int.self, forKey: .createdOn)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                platform = try container.decode(String.self, forKey: .platform)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                enabled = try container.decode(Bool.self, forKey: .enabled)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CompanyOptIn
        Used By: Catalog
    */

    class CompanyOptIn: Codable {
        
        
        public var modifiedOn: Int
        
        public var companyId: Int
        
        public var brandIds: [Int]
        
        public var optLevel: String
        
        public var storeIds: [Int]
        
        public var createdOn: Int
        
        public var modifiedBy: [String: Any]?
        
        public var platform: String
        
        public var createdBy: [String: Any]?
        
        public var enabled: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case companyId = "company_id"
            
            case brandIds = "brand_ids"
            
            case optLevel = "opt_level"
            
            case storeIds = "store_ids"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case platform = "platform"
            
            case createdBy = "created_by"
            
            case enabled = "enabled"
            
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            
            self.modifiedOn = modifiedOn
            
            self.companyId = companyId
            
            self.brandIds = brandIds
            
            self.optLevel = optLevel
            
            self.storeIds = storeIds
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.platform = platform
            
            self.createdBy = createdBy
            
            self.enabled = enabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                brandIds = try container.decode([Int].self, forKey: .brandIds)
                
            
            
            
                optLevel = try container.decode(String.self, forKey: .optLevel)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
            
                createdOn = try container.decode(Int.self, forKey: .createdOn)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                platform = try container.decode(String.self, forKey: .platform)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                enabled = try container.decode(Bool.self, forKey: .enabled)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
}



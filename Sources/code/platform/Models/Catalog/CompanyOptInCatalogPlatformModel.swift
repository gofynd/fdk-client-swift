

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CompanyOptIn
        Used By: Catalog
    */

    class CompanyOptIn: Codable {
        
        
        public var brandIds: [Int]
        
        public var companyId: Int
        
        public var createdBy: [String: Any]?
        
        public var createdOn: Int
        
        public var enabled: Bool
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: Int
        
        public var optLevel: String
        
        public var platform: String
        
        public var storeIds: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case brandIds = "brand_ids"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case enabled = "enabled"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case optLevel = "opt_level"
            
            case platform = "platform"
            
            case storeIds = "store_ids"
            
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            
            self.brandIds = brandIds
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.enabled = enabled
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.optLevel = optLevel
            
            self.platform = platform
            
            self.storeIds = storeIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                brandIds = try container.decode([Int].self, forKey: .brandIds)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(Int.self, forKey: .createdOn)
                
            
            
            
                enabled = try container.decode(Bool.self, forKey: .enabled)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)
                
            
            
            
                optLevel = try container.decode(String.self, forKey: .optLevel)
                
            
            
            
                platform = try container.decode(String.self, forKey: .platform)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CompanyOptIn
        Used By: Catalog
    */

    class CompanyOptIn: Codable {
        
        
        public var brandIds: [Int]
        
        public var companyId: Int
        
        public var createdBy: [String: Any]?
        
        public var createdOn: Int
        
        public var enabled: Bool
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: Int
        
        public var optLevel: String
        
        public var platform: String
        
        public var storeIds: [Int]
        

        public enum CodingKeys: String, CodingKey {
            
            case brandIds = "brand_ids"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case enabled = "enabled"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case optLevel = "opt_level"
            
            case platform = "platform"
            
            case storeIds = "store_ids"
            
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            
            self.brandIds = brandIds
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.enabled = enabled
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.optLevel = optLevel
            
            self.platform = platform
            
            self.storeIds = storeIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                brandIds = try container.decode([Int].self, forKey: .brandIds)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(Int.self, forKey: .createdOn)
                
            
            
            
                enabled = try container.decode(Bool.self, forKey: .enabled)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)
                
            
            
            
                optLevel = try container.decode(String.self, forKey: .optLevel)
                
            
            
            
                platform = try container.decode(String.self, forKey: .platform)
                
            
            
            
                storeIds = try container.decode([Int].self, forKey: .storeIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
        }
        
    }
}



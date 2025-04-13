

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationCategoryListingItemSchema
        Used By: Catalog
    */

    class ApplicationCategoryListingItemSchema: Codable {
        
        
        public var name: String?
        
        public var logo: String?
        
        public var departments: [Int]?
        
        public var attrName: String?
        
        public var landscapeUrl: String?
        
        public var portraitUrl: String?
        
        public var customJson: [String: Any]?
        
        public var priority: Int?
        
        public var createdBy: CreatedBy?
        
        public var createdOn: String?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        
        public var appId: String?
        
        public var isActive: Bool?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logo = "logo"
            
            case departments = "departments"
            
            case attrName = "attr_name"
            
            case landscapeUrl = "landscape_url"
            
            case portraitUrl = "portrait_url"
            
            case customJson = "_custom_json"
            
            case priority = "priority"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case appId = "app_id"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
        }

        public init(appId: String? = nil, attrName: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, departments: [Int]? = nil, isActive: Bool? = nil, landscapeUrl: String? = nil, logo: String? = nil, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String? = nil, portraitUrl: String? = nil, priority: Int? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.name = name
            
            self.logo = logo
            
            self.departments = departments
            
            self.attrName = attrName
            
            self.landscapeUrl = landscapeUrl
            
            self.portraitUrl = portraitUrl
            
            self.customJson = customJson
            
            self.priority = priority
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.appId = appId
            
            self.isActive = isActive
            
            self.uid = uid
            
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departments = try container.decode([Int].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attrName = try container.decode(String.self, forKey: .attrName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landscapeUrl = try container.decode(String.self, forKey: .landscapeUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portraitUrl = try container.decode(String.self, forKey: .portraitUrl)
                
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
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
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
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(attrName, forKey: .attrName)
            
            
            
            
            try? container.encodeIfPresent(landscapeUrl, forKey: .landscapeUrl)
            
            
            
            
            try? container.encodeIfPresent(portraitUrl, forKey: .portraitUrl)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationCategoryListingItemSchema
        Used By: Catalog
    */

    class ApplicationCategoryListingItemSchema: Codable {
        
        
        public var name: String?
        
        public var logo: String?
        
        public var departments: [Int]?
        
        public var attrName: String?
        
        public var landscapeUrl: String?
        
        public var portraitUrl: String?
        
        public var customJson: [String: Any]?
        
        public var priority: Int?
        
        public var createdBy: CreatedBy?
        
        public var createdOn: String?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        
        public var appId: String?
        
        public var isActive: Bool?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case logo = "logo"
            
            case departments = "departments"
            
            case attrName = "attr_name"
            
            case landscapeUrl = "landscape_url"
            
            case portraitUrl = "portrait_url"
            
            case customJson = "_custom_json"
            
            case priority = "priority"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case appId = "app_id"
            
            case isActive = "is_active"
            
            case uid = "uid"
            
        }

        public init(appId: String? = nil, attrName: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, departments: [Int]? = nil, isActive: Bool? = nil, landscapeUrl: String? = nil, logo: String? = nil, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String? = nil, portraitUrl: String? = nil, priority: Int? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.name = name
            
            self.logo = logo
            
            self.departments = departments
            
            self.attrName = attrName
            
            self.landscapeUrl = landscapeUrl
            
            self.portraitUrl = portraitUrl
            
            self.customJson = customJson
            
            self.priority = priority
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.appId = appId
            
            self.isActive = isActive
            
            self.uid = uid
            
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    departments = try container.decode([Int].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attrName = try container.decode(String.self, forKey: .attrName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landscapeUrl = try container.decode(String.self, forKey: .landscapeUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portraitUrl = try container.decode(String.self, forKey: .portraitUrl)
                
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
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
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
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
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
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(attrName, forKey: .attrName)
            
            
            
            
            try? container.encodeIfPresent(landscapeUrl, forKey: .landscapeUrl)
            
            
            
            
            try? container.encodeIfPresent(portraitUrl, forKey: .portraitUrl)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



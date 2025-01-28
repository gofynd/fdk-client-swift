

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationBrandListingItemSchema
        Used By: Catalog
    */

    class ApplicationBrandListingItemSchema: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var localeLanguage: [String: Any]?
        
        public var brandBannerPortraitUrl: String?
        
        public var brandBannerUrl: String?
        
        public var brandLogoUrl: String?
        
        public var description: String?
        
        public var name: String?
        
        public var slugKey: String?
        
        public var priority: Int?
        
        public var uid: Int?
        
        public var createdOn: String?
        
        public var lastUpdated: String?
        
        public var isActive: Bool?
        
        public var departments: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case localeLanguage = "_locale_language"
            
            case brandBannerPortraitUrl = "brand_banner_portrait_url"
            
            case brandBannerUrl = "brand_banner_url"
            
            case brandLogoUrl = "brand_logo_url"
            
            case description = "description"
            
            case name = "name"
            
            case slugKey = "slug_key"
            
            case priority = "priority"
            
            case uid = "uid"
            
            case createdOn = "created_on"
            
            case lastUpdated = "last_updated"
            
            case isActive = "is_active"
            
            case departments = "departments"
            
        }

        public init(brandBannerPortraitUrl: String? = nil, brandBannerUrl: String? = nil, brandLogoUrl: String? = nil, createdOn: String? = nil, departments: [Int]? = nil, description: String? = nil, isActive: Bool? = nil, lastUpdated: String? = nil, name: String? = nil, priority: Int? = nil, slugKey: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.localeLanguage = localeLanguage
            
            self.brandBannerPortraitUrl = brandBannerPortraitUrl
            
            self.brandBannerUrl = brandBannerUrl
            
            self.brandLogoUrl = brandLogoUrl
            
            self.description = description
            
            self.name = name
            
            self.slugKey = slugKey
            
            self.priority = priority
            
            self.uid = uid
            
            self.createdOn = createdOn
            
            self.lastUpdated = lastUpdated
            
            self.isActive = isActive
            
            self.departments = departments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandBannerPortraitUrl = try container.decode(String.self, forKey: .brandBannerPortraitUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandBannerUrl = try container.decode(String.self, forKey: .brandBannerUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandLogoUrl = try container.decode(String.self, forKey: .brandLogoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    lastUpdated = try container.decode(String.self, forKey: .lastUpdated)
                
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
                    departments = try container.decode([Int].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(brandBannerPortraitUrl, forKey: .brandBannerPortraitUrl)
            
            
            
            
            try? container.encodeIfPresent(brandBannerUrl, forKey: .brandBannerUrl)
            
            
            
            
            try? container.encodeIfPresent(brandLogoUrl, forKey: .brandLogoUrl)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationBrandListingItemSchema
        Used By: Catalog
    */

    class ApplicationBrandListingItemSchema: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var localeLanguage: [String: Any]?
        
        public var brandBannerPortraitUrl: String?
        
        public var brandBannerUrl: String?
        
        public var brandLogoUrl: String?
        
        public var description: String?
        
        public var name: String?
        
        public var slugKey: String?
        
        public var priority: Int?
        
        public var uid: Int?
        
        public var createdOn: String?
        
        public var lastUpdated: String?
        
        public var isActive: Bool?
        
        public var departments: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case localeLanguage = "_locale_language"
            
            case brandBannerPortraitUrl = "brand_banner_portrait_url"
            
            case brandBannerUrl = "brand_banner_url"
            
            case brandLogoUrl = "brand_logo_url"
            
            case description = "description"
            
            case name = "name"
            
            case slugKey = "slug_key"
            
            case priority = "priority"
            
            case uid = "uid"
            
            case createdOn = "created_on"
            
            case lastUpdated = "last_updated"
            
            case isActive = "is_active"
            
            case departments = "departments"
            
        }

        public init(brandBannerPortraitUrl: String? = nil, brandBannerUrl: String? = nil, brandLogoUrl: String? = nil, createdOn: String? = nil, departments: [Int]? = nil, description: String? = nil, isActive: Bool? = nil, lastUpdated: String? = nil, name: String? = nil, priority: Int? = nil, slugKey: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.localeLanguage = localeLanguage
            
            self.brandBannerPortraitUrl = brandBannerPortraitUrl
            
            self.brandBannerUrl = brandBannerUrl
            
            self.brandLogoUrl = brandLogoUrl
            
            self.description = description
            
            self.name = name
            
            self.slugKey = slugKey
            
            self.priority = priority
            
            self.uid = uid
            
            self.createdOn = createdOn
            
            self.lastUpdated = lastUpdated
            
            self.isActive = isActive
            
            self.departments = departments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandBannerPortraitUrl = try container.decode(String.self, forKey: .brandBannerPortraitUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandBannerUrl = try container.decode(String.self, forKey: .brandBannerUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandLogoUrl = try container.decode(String.self, forKey: .brandLogoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    lastUpdated = try container.decode(String.self, forKey: .lastUpdated)
                
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
                    departments = try container.decode([Int].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(brandBannerPortraitUrl, forKey: .brandBannerPortraitUrl)
            
            
            
            
            try? container.encodeIfPresent(brandBannerUrl, forKey: .brandBannerUrl)
            
            
            
            
            try? container.encodeIfPresent(brandLogoUrl, forKey: .brandLogoUrl)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(lastUpdated, forKey: .lastUpdated)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
        }
        
    }
}





import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: CreateBrandRequestSchema
        Used By: CompanyProfile
    */

    class CreateBrandRequestSchema: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var localeLanguage: [String: Any]?
        
        public var synonyms: [String]?
        
        public var companyId: Int?
        
        public var description: String?
        
        public var logo: String
        
        public var brandTier: String?
        
        public var uid: Int?
        
        public var banner: BrandBannerSchema
        
        public var name: String
        
        public var slugKey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case localeLanguage = "_locale_language"
            
            case synonyms = "synonyms"
            
            case companyId = "company_id"
            
            case description = "description"
            
            case logo = "logo"
            
            case brandTier = "brand_tier"
            
            case uid = "uid"
            
            case banner = "banner"
            
            case name = "name"
            
            case slugKey = "slug_key"
            
        }

        public init(banner: BrandBannerSchema, brandTier: String? = nil, companyId: Int? = nil, description: String? = nil, logo: String, name: String, slugKey: String? = nil, synonyms: [String]? = nil, uid: Int? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.localeLanguage = localeLanguage
            
            self.synonyms = synonyms
            
            self.companyId = companyId
            
            self.description = description
            
            self.logo = logo
            
            self.brandTier = brandTier
            
            self.uid = uid
            
            self.banner = banner
            
            self.name = name
            
            self.slugKey = slugKey
            
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
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                logo = try container.decode(String.self, forKey: .logo)
                
            
            
            
                do {
                    brandTier = try container.decode(String.self, forKey: .brandTier)
                
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
                
            
            
                banner = try container.decode(BrandBannerSchema.self, forKey: .banner)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                
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
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(brandTier, forKey: .brandTier)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
        }
        
    }
}





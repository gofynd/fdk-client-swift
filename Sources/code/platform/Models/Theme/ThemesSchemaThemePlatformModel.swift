

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ThemesSchema
        Used By: Theme
    */

    class ThemesSchema: Codable {
        
        
        public var font: Font?
        
        public var config: Config?
        
        public var applied: Bool?
        
        public var isPrivate: Bool?
        
        public var tags: [String]?
        
        public var id: String?
        
        public var applicationId: String?
        
        public var marketplaceThemeId: String?
        
        public var meta: ThemeMeta?
        
        public var name: String?
        
        public var templateThemeId: String?
        
        public var version: String?
        
        public var styles: [String: Any]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var assets: Assets?
        
        public var availableSections: [SectionItem]?
        
        public var themeType: String?
        
        public var companyId: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case font = "font"
            
            case config = "config"
            
            case applied = "applied"
            
            case isPrivate = "is_private"
            
            case tags = "tags"
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case marketplaceThemeId = "marketplace_theme_id"
            
            case meta = "meta"
            
            case name = "name"
            
            case templateThemeId = "template_theme_id"
            
            case version = "version"
            
            case styles = "styles"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case assets = "assets"
            
            case availableSections = "available_sections"
            
            case themeType = "theme_type"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String? = nil, applied: Bool? = nil, assets: Assets? = nil, availableSections: [SectionItem]? = nil, companyId: Double? = nil, config: Config? = nil, createdAt: String? = nil, font: Font? = nil, isPrivate: Bool? = nil, marketplaceThemeId: String? = nil, meta: ThemeMeta? = nil, name: String? = nil, styles: [String: Any]? = nil, tags: [String]? = nil, templateThemeId: String? = nil, themeType: String? = nil, updatedAt: String? = nil, version: String? = nil, id: String? = nil) {
            
            self.font = font
            
            self.config = config
            
            self.applied = applied
            
            self.isPrivate = isPrivate
            
            self.tags = tags
            
            self.id = id
            
            self.applicationId = applicationId
            
            self.marketplaceThemeId = marketplaceThemeId
            
            self.meta = meta
            
            self.name = name
            
            self.templateThemeId = templateThemeId
            
            self.version = version
            
            self.styles = styles
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.assets = assets
            
            self.availableSections = availableSections
            
            self.themeType = themeType
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    font = try container.decode(Font.self, forKey: .font)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(Config.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applied = try container.decode(Bool.self, forKey: .applied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrivate = try container.decode(Bool.self, forKey: .isPrivate)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceThemeId = try container.decode(String.self, forKey: .marketplaceThemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(ThemeMeta.self, forKey: .meta)
                
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
                    templateThemeId = try container.decode(String.self, forKey: .templateThemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    styles = try container.decode([String: Any].self, forKey: .styles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assets = try container.decode(Assets.self, forKey: .assets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableSections = try container.decode([SectionItem].self, forKey: .availableSections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    themeType = try container.decode(String.self, forKey: .themeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(font, forKey: .font)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            
            
            
            try? container.encodeIfPresent(isPrivate, forKey: .isPrivate)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(styles, forKey: .styles)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            
            
            
            try? container.encodeIfPresent(availableSections, forKey: .availableSections)
            
            
            
            
            try? container.encodeIfPresent(themeType, forKey: .themeType)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ThemesSchema
        Used By: Theme
    */

    class ThemesSchema: Codable {
        
        
        public var font: Font?
        
        public var config: Config?
        
        public var applied: Bool?
        
        public var isPrivate: Bool?
        
        public var tags: [String]?
        
        public var id: String?
        
        public var applicationId: String?
        
        public var marketplaceThemeId: String?
        
        public var meta: ThemeMeta?
        
        public var name: String?
        
        public var templateThemeId: String?
        
        public var version: String?
        
        public var styles: [String: Any]?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var assets: Assets?
        
        public var availableSections: [SectionItem]?
        
        public var themeType: String?
        
        public var companyId: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case font = "font"
            
            case config = "config"
            
            case applied = "applied"
            
            case isPrivate = "is_private"
            
            case tags = "tags"
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case marketplaceThemeId = "marketplace_theme_id"
            
            case meta = "meta"
            
            case name = "name"
            
            case templateThemeId = "template_theme_id"
            
            case version = "version"
            
            case styles = "styles"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case assets = "assets"
            
            case availableSections = "available_sections"
            
            case themeType = "theme_type"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String? = nil, applied: Bool? = nil, assets: Assets? = nil, availableSections: [SectionItem]? = nil, companyId: Double? = nil, config: Config? = nil, createdAt: String? = nil, font: Font? = nil, isPrivate: Bool? = nil, marketplaceThemeId: String? = nil, meta: ThemeMeta? = nil, name: String? = nil, styles: [String: Any]? = nil, tags: [String]? = nil, templateThemeId: String? = nil, themeType: String? = nil, updatedAt: String? = nil, version: String? = nil, id: String? = nil) {
            
            self.font = font
            
            self.config = config
            
            self.applied = applied
            
            self.isPrivate = isPrivate
            
            self.tags = tags
            
            self.id = id
            
            self.applicationId = applicationId
            
            self.marketplaceThemeId = marketplaceThemeId
            
            self.meta = meta
            
            self.name = name
            
            self.templateThemeId = templateThemeId
            
            self.version = version
            
            self.styles = styles
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.assets = assets
            
            self.availableSections = availableSections
            
            self.themeType = themeType
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    font = try container.decode(Font.self, forKey: .font)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(Config.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applied = try container.decode(Bool.self, forKey: .applied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrivate = try container.decode(Bool.self, forKey: .isPrivate)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplaceThemeId = try container.decode(String.self, forKey: .marketplaceThemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(ThemeMeta.self, forKey: .meta)
                
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
                    templateThemeId = try container.decode(String.self, forKey: .templateThemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    styles = try container.decode([String: Any].self, forKey: .styles)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assets = try container.decode(Assets.self, forKey: .assets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableSections = try container.decode([SectionItem].self, forKey: .availableSections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    themeType = try container.decode(String.self, forKey: .themeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(font, forKey: .font)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            
            
            
            try? container.encodeIfPresent(isPrivate, forKey: .isPrivate)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(styles, forKey: .styles)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            
            
            
            try? container.encodeIfPresent(availableSections, forKey: .availableSections)
            
            
            
            
            try? container.encodeIfPresent(themeType, forKey: .themeType)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}



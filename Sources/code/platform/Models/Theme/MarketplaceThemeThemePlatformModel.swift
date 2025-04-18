

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: MarketplaceTheme
        Used By: Theme
    */

    class MarketplaceTheme: Codable {
        
        
        public var id: String?
        
        public var payment: PaymentInfo?
        
        public var contact: ContactInfo?
        
        public var industry: [String]?
        
        public var isUpdate: Bool?
        
        public var isDefault: Bool?
        
        public var name: String?
        
        public var tagline: String?
        
        public var description: String?
        
        public var catalogSize: CatalogSize?
        
        public var images: MarketplaceThemeImages?
        
        public var carousel: [CarouselItem]?
        
        public var src: String?
        
        public var explore: ExploreInfo?
        
        public var features: [Feature]?
        
        public var highlights: [Highlight]?
        
        public var variations: [Variation]?
        
        public var documentation: Documentation?
        
        public var status: String?
        
        public var step: Int?
        
        public var comments: Comments?
        
        public var release: Release?
        
        public var slug: String?
        
        public var organizationId: String?
        
        public var userId: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var templateThemeId: String?
        
        public var themeType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case payment = "payment"
            
            case contact = "contact"
            
            case industry = "industry"
            
            case isUpdate = "is_update"
            
            case isDefault = "is_default"
            
            case name = "name"
            
            case tagline = "tagline"
            
            case description = "description"
            
            case catalogSize = "catalog_size"
            
            case images = "images"
            
            case carousel = "carousel"
            
            case src = "src"
            
            case explore = "explore"
            
            case features = "features"
            
            case highlights = "highlights"
            
            case variations = "variations"
            
            case documentation = "documentation"
            
            case status = "status"
            
            case step = "step"
            
            case comments = "comments"
            
            case release = "release"
            
            case slug = "slug"
            
            case organizationId = "organization_id"
            
            case userId = "user_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case templateThemeId = "template_theme_id"
            
            case themeType = "theme_type"
            
        }

        public init(carousel: [CarouselItem]? = nil, catalogSize: CatalogSize? = nil, comments: Comments? = nil, contact: ContactInfo? = nil, createdAt: String? = nil, description: String? = nil, documentation: Documentation? = nil, explore: ExploreInfo? = nil, features: [Feature]? = nil, highlights: [Highlight]? = nil, images: MarketplaceThemeImages? = nil, industry: [String]? = nil, isDefault: Bool? = nil, isUpdate: Bool? = nil, name: String? = nil, organizationId: String? = nil, payment: PaymentInfo? = nil, release: Release? = nil, slug: String? = nil, src: String? = nil, status: String? = nil, step: Int? = nil, tagline: String? = nil, templateThemeId: String? = nil, themeType: String? = nil, updatedAt: String? = nil, userId: String? = nil, variations: [Variation]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.payment = payment
            
            self.contact = contact
            
            self.industry = industry
            
            self.isUpdate = isUpdate
            
            self.isDefault = isDefault
            
            self.name = name
            
            self.tagline = tagline
            
            self.description = description
            
            self.catalogSize = catalogSize
            
            self.images = images
            
            self.carousel = carousel
            
            self.src = src
            
            self.explore = explore
            
            self.features = features
            
            self.highlights = highlights
            
            self.variations = variations
            
            self.documentation = documentation
            
            self.status = status
            
            self.step = step
            
            self.comments = comments
            
            self.release = release
            
            self.slug = slug
            
            self.organizationId = organizationId
            
            self.userId = userId
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.templateThemeId = templateThemeId
            
            self.themeType = themeType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(PaymentInfo.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode(ContactInfo.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    industry = try container.decode([String].self, forKey: .industry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isUpdate = try container.decode(Bool.self, forKey: .isUpdate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
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
                    tagline = try container.decode(String.self, forKey: .tagline)
                
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
                    catalogSize = try container.decode(CatalogSize.self, forKey: .catalogSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    images = try container.decode(MarketplaceThemeImages.self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    carousel = try container.decode([CarouselItem].self, forKey: .carousel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    src = try container.decode(String.self, forKey: .src)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    explore = try container.decode(ExploreInfo.self, forKey: .explore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    features = try container.decode([Feature].self, forKey: .features)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highlights = try container.decode([Highlight].self, forKey: .highlights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variations = try container.decode([Variation].self, forKey: .variations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documentation = try container.decode(Documentation.self, forKey: .documentation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    step = try container.decode(Int.self, forKey: .step)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comments = try container.decode(Comments.self, forKey: .comments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    release = try container.decode(Release.self, forKey: .release)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                    templateThemeId = try container.decode(String.self, forKey: .templateThemeId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(industry, forKey: .industry)
            
            
            
            
            try? container.encodeIfPresent(isUpdate, forKey: .isUpdate)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(tagline, forKey: .tagline)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(catalogSize, forKey: .catalogSize)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(carousel, forKey: .carousel)
            
            
            
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            
            
            
            try? container.encodeIfPresent(explore, forKey: .explore)
            
            
            
            
            try? container.encodeIfPresent(features, forKey: .features)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(variations, forKey: .variations)
            
            
            
            
            try? container.encodeIfPresent(documentation, forKey: .documentation)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(step, forKey: .step)
            
            
            
            
            try? container.encodeIfPresent(comments, forKey: .comments)
            
            
            
            
            try? container.encodeIfPresent(release, forKey: .release)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)
            
            
            
            
            try? container.encodeIfPresent(themeType, forKey: .themeType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: MarketplaceTheme
        Used By: Theme
    */

    class MarketplaceTheme: Codable {
        
        
        public var id: String?
        
        public var payment: PaymentInfo?
        
        public var contact: ContactInfo?
        
        public var industry: [String]?
        
        public var isUpdate: Bool?
        
        public var isDefault: Bool?
        
        public var name: String?
        
        public var tagline: String?
        
        public var description: String?
        
        public var catalogSize: CatalogSize?
        
        public var images: MarketplaceThemeImages?
        
        public var carousel: [CarouselItem]?
        
        public var src: String?
        
        public var explore: ExploreInfo?
        
        public var features: [Feature]?
        
        public var highlights: [Highlight]?
        
        public var variations: [Variation]?
        
        public var documentation: Documentation?
        
        public var status: String?
        
        public var step: Int?
        
        public var comments: Comments?
        
        public var release: Release?
        
        public var slug: String?
        
        public var organizationId: String?
        
        public var userId: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var templateThemeId: String?
        
        public var themeType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case payment = "payment"
            
            case contact = "contact"
            
            case industry = "industry"
            
            case isUpdate = "is_update"
            
            case isDefault = "is_default"
            
            case name = "name"
            
            case tagline = "tagline"
            
            case description = "description"
            
            case catalogSize = "catalog_size"
            
            case images = "images"
            
            case carousel = "carousel"
            
            case src = "src"
            
            case explore = "explore"
            
            case features = "features"
            
            case highlights = "highlights"
            
            case variations = "variations"
            
            case documentation = "documentation"
            
            case status = "status"
            
            case step = "step"
            
            case comments = "comments"
            
            case release = "release"
            
            case slug = "slug"
            
            case organizationId = "organization_id"
            
            case userId = "user_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case templateThemeId = "template_theme_id"
            
            case themeType = "theme_type"
            
        }

        public init(carousel: [CarouselItem]? = nil, catalogSize: CatalogSize? = nil, comments: Comments? = nil, contact: ContactInfo? = nil, createdAt: String? = nil, description: String? = nil, documentation: Documentation? = nil, explore: ExploreInfo? = nil, features: [Feature]? = nil, highlights: [Highlight]? = nil, images: MarketplaceThemeImages? = nil, industry: [String]? = nil, isDefault: Bool? = nil, isUpdate: Bool? = nil, name: String? = nil, organizationId: String? = nil, payment: PaymentInfo? = nil, release: Release? = nil, slug: String? = nil, src: String? = nil, status: String? = nil, step: Int? = nil, tagline: String? = nil, templateThemeId: String? = nil, themeType: String? = nil, updatedAt: String? = nil, userId: String? = nil, variations: [Variation]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.payment = payment
            
            self.contact = contact
            
            self.industry = industry
            
            self.isUpdate = isUpdate
            
            self.isDefault = isDefault
            
            self.name = name
            
            self.tagline = tagline
            
            self.description = description
            
            self.catalogSize = catalogSize
            
            self.images = images
            
            self.carousel = carousel
            
            self.src = src
            
            self.explore = explore
            
            self.features = features
            
            self.highlights = highlights
            
            self.variations = variations
            
            self.documentation = documentation
            
            self.status = status
            
            self.step = step
            
            self.comments = comments
            
            self.release = release
            
            self.slug = slug
            
            self.organizationId = organizationId
            
            self.userId = userId
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.templateThemeId = templateThemeId
            
            self.themeType = themeType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(PaymentInfo.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode(ContactInfo.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    industry = try container.decode([String].self, forKey: .industry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isUpdate = try container.decode(Bool.self, forKey: .isUpdate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
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
                    tagline = try container.decode(String.self, forKey: .tagline)
                
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
                    catalogSize = try container.decode(CatalogSize.self, forKey: .catalogSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    images = try container.decode(MarketplaceThemeImages.self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    carousel = try container.decode([CarouselItem].self, forKey: .carousel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    src = try container.decode(String.self, forKey: .src)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    explore = try container.decode(ExploreInfo.self, forKey: .explore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    features = try container.decode([Feature].self, forKey: .features)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highlights = try container.decode([Highlight].self, forKey: .highlights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    variations = try container.decode([Variation].self, forKey: .variations)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documentation = try container.decode(Documentation.self, forKey: .documentation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    step = try container.decode(Int.self, forKey: .step)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comments = try container.decode(Comments.self, forKey: .comments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    release = try container.decode(Release.self, forKey: .release)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                    templateThemeId = try container.decode(String.self, forKey: .templateThemeId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(industry, forKey: .industry)
            
            
            
            
            try? container.encodeIfPresent(isUpdate, forKey: .isUpdate)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(tagline, forKey: .tagline)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(catalogSize, forKey: .catalogSize)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(carousel, forKey: .carousel)
            
            
            
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            
            
            
            try? container.encodeIfPresent(explore, forKey: .explore)
            
            
            
            
            try? container.encodeIfPresent(features, forKey: .features)
            
            
            
            
            try? container.encodeIfPresent(highlights, forKey: .highlights)
            
            
            
            
            try? container.encodeIfPresent(variations, forKey: .variations)
            
            
            
            
            try? container.encodeIfPresent(documentation, forKey: .documentation)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(step, forKey: .step)
            
            
            
            
            try? container.encodeIfPresent(comments, forKey: .comments)
            
            
            
            
            try? container.encodeIfPresent(release, forKey: .release)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)
            
            
            
            
            try? container.encodeIfPresent(themeType, forKey: .themeType)
            
            
        }
        
    }
}



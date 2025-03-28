

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: BrandItem
        Used By: Catalog
    */
    class BrandItem: Codable {
        
        public var id: Int?
        
        public var uid: Int?
        
        public var logo: Media?
        
        public var seo: ApplicationItemSEO?
        
        public var description: String?
        
        public var banners: ImageUrls?
        
        public var departments: [String]?
        
        public var discount: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var action: ProductListingAction?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case uid = "uid"
            
            case logo = "logo"
            
            case seo = "seo"
            
            case description = "description"
            
            case banners = "banners"
            
            case departments = "departments"
            
            case discount = "discount"
            
            case name = "name"
            
            case slug = "slug"
            
            case action = "action"
            
        }

        public init(action: ProductListingAction? = nil, banners: ImageUrls? = nil, departments: [String]? = nil, description: String? = nil, discount: String? = nil, id: Int? = nil, logo: Media? = nil, name: String? = nil, seo: ApplicationItemSEO? = nil, slug: String? = nil, uid: Int? = nil) {
            
            self.id = id
            
            self.uid = uid
            
            self.logo = logo
            
            self.seo = seo
            
            self.description = description
            
            self.banners = banners
            
            self.departments = departments
            
            self.discount = discount
            
            self.name = name
            
            self.slug = slug
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(Int.self, forKey: .id)
            
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
                logo = try container.decode(Media.self, forKey: .logo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                seo = try container.decode(ApplicationItemSEO.self, forKey: .seo)
            
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
                banners = try container.decode(ImageUrls.self, forKey: .banners)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                departments = try container.decode([String].self, forKey: .departments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discount = try container.decode(String.self, forKey: .discount)
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}

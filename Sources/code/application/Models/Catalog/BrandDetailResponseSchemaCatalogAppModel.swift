

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: BrandDetailResponseSchema
        Used By: Catalog
    */
    class BrandDetailResponseSchema: Codable {
        
        public var logo: Media?
        
        public var uid: Int?
        
        public var description: String?
        
        public var banners: ImageUrls?
        
        public var customJson: [String: Any]?
        
        public var name: String?
        
        public var slug: String?
        
        public var app: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case uid = "uid"
            
            case description = "description"
            
            case banners = "banners"
            
            case customJson = "_custom_json"
            
            case name = "name"
            
            case slug = "slug"
            
            case app = "_app"
            
        }

        public init(banners: ImageUrls? = nil, description: String? = nil, logo: Media? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil, app: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            
            self.logo = logo
            
            self.uid = uid
            
            self.description = description
            
            self.banners = banners
            
            self.customJson = customJson
            
            self.name = name
            
            self.slug = slug
            
            self.app = app
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                logo = try container.decode(Media.self, forKey: .logo)
            
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
                customJson = try container.decode([String: Any].self, forKey: .customJson)
            
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
                app = try container.decode([String: Any].self, forKey: .app)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
        }
        
    }
}

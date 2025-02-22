

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: SecondLevelChild
        Used By: Catalog
    */
    class SecondLevelChild: Codable {
        
        public var uid: Int?
        
        public var banners: ImageUrls?
        
        public var childs: [ThirdLevelChild]?
        
        public var customJson: [String: Any]?
        
        public var name: String?
        
        public var slug: String?
        
        public var action: ProductListingAction?
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case banners = "banners"
            
            case childs = "childs"
            
            case customJson = "_custom_json"
            
            case name = "name"
            
            case slug = "slug"
            
            case action = "action"
            
            case priority = "priority"
            
        }

        public init(action: ProductListingAction? = nil, banners: ImageUrls? = nil, childs: [ThirdLevelChild]? = nil, name: String? = nil, priority: Int? = nil, slug: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.uid = uid
            
            self.banners = banners
            
            self.childs = childs
            
            self.customJson = customJson
            
            self.name = name
            
            self.slug = slug
            
            self.action = action
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
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
                childs = try container.decode([ThirdLevelChild].self, forKey: .childs)
            
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
                action = try container.decode(ProductListingAction.self, forKey: .action)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            try? container.encodeIfPresent(childs, forKey: .childs)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}

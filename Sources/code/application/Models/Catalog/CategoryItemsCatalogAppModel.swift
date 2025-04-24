

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: CategoryItems
        Used By: Catalog
    */
    class CategoryItems: Codable {
        
        public var uid: Int
        
        public var banners: CategoryBanner
        
        public var childs: [Child]?
        
        public var name: String
        
        public var slug: String
        
        public var action: ProductListingAction
        
        public var priority: Int?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case banners = "banners"
            
            case childs = "childs"
            
            case name = "name"
            
            case slug = "slug"
            
            case action = "action"
            
            case priority = "priority"
            
            case customJson = "_custom_json"
            
        }

        public init(action: ProductListingAction, banners: CategoryBanner, childs: [Child]? = nil, name: String, priority: Int? = nil, slug: String, uid: Int, customJson: [String: Any]? = nil) {
            
            self.uid = uid
            
            self.banners = banners
            
            self.childs = childs
            
            self.name = name
            
            self.slug = slug
            
            self.action = action
            
            self.priority = priority
            
            self.customJson = customJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            uid = try container.decode(Int.self, forKey: .uid)
            
            
            
            
            banners = try container.decode(CategoryBanner.self, forKey: .banners)
            
            
            
            
            do {
                childs = try container.decode([Child].self, forKey: .childs)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            slug = try container.decode(String.self, forKey: .slug)
            
            
            
            
            action = try container.decode(ProductListingAction.self, forKey: .action)
            
            
            
            
            do {
                priority = try container.decode(Int.self, forKey: .priority)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            try? container.encodeIfPresent(childs, forKey: .childs)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
}

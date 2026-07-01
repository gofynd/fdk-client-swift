

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: AppStoreDepartment
        Used By: Catalog
    */
    class AppStoreDepartment: Codable {
        
        public var priorityOrder: Int?
        
        public var name: String?
        
        public var isActive: Bool?
        
        public var logo: Media?
        
        public var uid: Int?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case priorityOrder = "priority_order"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case uid = "uid"
            
            case slug = "slug"
            
        }

        public init(isActive: Bool? = nil, logo: Media? = nil, name: String? = nil, priorityOrder: Int? = nil, slug: String? = nil, uid: Int? = nil) {
            
            self.priorityOrder = priorityOrder
            
            self.name = name
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.uid = uid
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
            
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
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
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
                uid = try container.decode(Int.self, forKey: .uid)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}

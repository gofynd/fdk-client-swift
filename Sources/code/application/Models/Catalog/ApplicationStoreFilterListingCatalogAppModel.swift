

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ApplicationStoreFilterListing
        Used By: Catalog
    */
    class ApplicationStoreFilterListing: Codable {
        
        public var slug: String?
        
        public var uid: Int?
        
        public var isActive: Bool?
        
        public var priorityOrder: Int?
        
        public var name: String?
        
        public var logo: String?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case uid = "uid"
            
            case isActive = "is_active"
            
            case priorityOrder = "priority_order"
            
            case name = "name"
            
            case logo = "logo"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
        }

        public init(isActive: Bool? = nil, logo: String? = nil, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String? = nil, priorityOrder: Int? = nil, slug: String? = nil, uid: Int? = nil) {
            
            self.slug = slug
            
            self.uid = uid
            
            self.isActive = isActive
            
            self.priorityOrder = priorityOrder
            
            self.name = name
            
            self.logo = logo
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
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
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
                logo = try container.decode(String.self, forKey: .logo)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}

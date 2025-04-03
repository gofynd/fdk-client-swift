

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductVariantResponse
        Used By: Catalog
    */
    class ProductVariantResponse: Codable {
        
        public var displayType: String?
        
        public var header: String?
        
        public var groupId: String?
        
        public var items: [ProductVariantItemResponse]?
        
        public var key: String?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayType = "display_type"
            
            case header = "header"
            
            case groupId = "group_id"
            
            case items = "items"
            
            case key = "key"
            
            case logo = "logo"
            
        }

        public init(displayType: String? = nil, groupId: String? = nil, header: String? = nil, items: [ProductVariantItemResponse]? = nil, key: String? = nil, logo: String? = nil) {
            
            self.displayType = displayType
            
            self.header = header
            
            self.groupId = groupId
            
            self.items = items
            
            self.key = key
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                displayType = try container.decode(String.self, forKey: .displayType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                header = try container.decode(String.self, forKey: .header)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                groupId = try container.decode(String.self, forKey: .groupId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([ProductVariantItemResponse].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                key = try container.decode(String.self, forKey: .key)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}

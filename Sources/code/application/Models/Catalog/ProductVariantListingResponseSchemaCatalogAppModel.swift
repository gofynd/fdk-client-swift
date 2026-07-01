

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductVariantListingResponseSchema
        Used By: Catalog
    */
    class ProductVariantListingResponseSchema: Codable {
        
        public var header: String?
        
        public var items: [ProductVariantItemResponseSchema]?
        
        public var total: Int?
        
        public var key: String?
        
        public var displayType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case header = "header"
            
            case items = "items"
            
            case total = "total"
            
            case key = "key"
            
            case displayType = "display_type"
            
        }

        public init(displayType: String? = nil, header: String? = nil, items: [ProductVariantItemResponseSchema]? = nil, key: String? = nil, total: Int? = nil) {
            
            self.header = header
            
            self.items = items
            
            self.total = total
            
            self.key = key
            
            self.displayType = displayType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                header = try container.decode(String.self, forKey: .header)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([ProductVariantItemResponseSchema].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                total = try container.decode(Int.self, forKey: .total)
            
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
                displayType = try container.decode(String.self, forKey: .displayType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(header, forKey: .header)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            
        }
        
    }
}

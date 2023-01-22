

import Foundation
public extension ApplicationClient {
    /*
        Model: OrderList
        Used By: Order
    */
    class OrderList: Codable {
        
        public var filters: OrderFilters?
        
        public var items: [OrderSchema]?
        
        public var page: OrderPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(filters: OrderFilters? = nil, items: [OrderSchema]? = nil, page: OrderPage? = nil) {
            
            self.filters = filters
            
            self.items = items
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                filters = try container.decode(OrderFilters.self, forKey: .filters)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([OrderSchema].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                page = try container.decode(OrderPage.self, forKey: .page)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}

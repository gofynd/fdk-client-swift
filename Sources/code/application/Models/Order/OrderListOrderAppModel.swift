

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderList
        Used By: Order
    */
    class OrderList: Codable {
        
        public var page: OrderPage?
        
        public var items: [OrderInfo]?
        
        public var filters: OrderFilters?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
            case filters = "filters"
            
        }

        public init(filters: OrderFilters? = nil, items: [OrderInfo]? = nil, page: OrderPage? = nil) {
            
            self.page = page
            
            self.items = items
            
            self.filters = filters
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                page = try container.decode(OrderPage.self, forKey: .page)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([OrderInfo].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                filters = try container.decode(OrderFilters.self, forKey: .filters)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
}

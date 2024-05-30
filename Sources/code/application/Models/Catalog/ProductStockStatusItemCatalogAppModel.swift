

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductStockStatusItem
        Used By: Catalog
    */
    class ProductStockStatusItem: Codable {
        
        public var uid: String?
        
        public var quantity: Int?
        
        public var store: StoreDetail?
        
        public var size: String?
        
        public var price: ProductStockPrice?
        
        public var company: CompanyDetail?
        
        public var itemId: Int?
        
        public var seller: Seller?
        
        public var identifier: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case quantity = "quantity"
            
            case store = "store"
            
            case size = "size"
            
            case price = "price"
            
            case company = "company"
            
            case itemId = "item_id"
            
            case seller = "seller"
            
            case identifier = "identifier"
            
        }

        public init(company: CompanyDetail? = nil, identifier: [String: Any]? = nil, itemId: Int? = nil, price: ProductStockPrice? = nil, quantity: Int? = nil, seller: Seller? = nil, size: String? = nil, store: StoreDetail? = nil, uid: String? = nil) {
            
            self.uid = uid
            
            self.quantity = quantity
            
            self.store = store
            
            self.size = size
            
            self.price = price
            
            self.company = company
            
            self.itemId = itemId
            
            self.seller = seller
            
            self.identifier = identifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                uid = try container.decode(String.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                store = try container.decode(StoreDetail.self, forKey: .store)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                size = try container.decode(String.self, forKey: .size)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                price = try container.decode(ProductStockPrice.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                company = try container.decode(CompanyDetail.self, forKey: .company)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemId = try container.decode(Int.self, forKey: .itemId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                seller = try container.decode(Seller.self, forKey: .seller)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
}

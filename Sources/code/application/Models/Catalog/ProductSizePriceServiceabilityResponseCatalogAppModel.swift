

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizePriceServiceabilityResponse
        Used By: Catalog
    */
    class ProductSizePriceServiceabilityResponse: Codable {
        
        public var store: StoreV3?
        
        public var isCod: Bool?
        
        public var quantity: Int?
        
        public var itemType: String?
        
        public var discount: String?
        
        public var price: ProductStockPriceV3?
        
        public var pricePerUnit: ProductStockUnitPriceV3?
        
        public var seller: SellerV3?
        
        public var deliveryPromise: PromiseSchema?
        
        public var isServiceable: String?
        
        public var tags: [String]?
        
        public var slug: String?
        
        public var itemCode: String?
        
        public var size: String?
        
        public var itemId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case isCod = "is_cod"
            
            case quantity = "quantity"
            
            case itemType = "item_type"
            
            case discount = "discount"
            
            case price = "price"
            
            case pricePerUnit = "price_per_unit"
            
            case seller = "seller"
            
            case deliveryPromise = "delivery_promise"
            
            case isServiceable = "is_serviceable"
            
            case tags = "tags"
            
            case slug = "slug"
            
            case itemCode = "item_code"
            
            case size = "size"
            
            case itemId = "item_id"
            
        }

        public init(deliveryPromise: PromiseSchema? = nil, discount: String? = nil, isCod: Bool? = nil, isServiceable: String? = nil, itemCode: String? = nil, itemId: Int? = nil, itemType: String? = nil, price: ProductStockPriceV3? = nil, pricePerUnit: ProductStockUnitPriceV3? = nil, quantity: Int? = nil, seller: SellerV3? = nil, size: String? = nil, slug: String? = nil, store: StoreV3? = nil, tags: [String]? = nil) {
            
            self.store = store
            
            self.isCod = isCod
            
            self.quantity = quantity
            
            self.itemType = itemType
            
            self.discount = discount
            
            self.price = price
            
            self.pricePerUnit = pricePerUnit
            
            self.seller = seller
            
            self.deliveryPromise = deliveryPromise
            
            self.isServiceable = isServiceable
            
            self.tags = tags
            
            self.slug = slug
            
            self.itemCode = itemCode
            
            self.size = size
            
            self.itemId = itemId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                store = try container.decode(StoreV3.self, forKey: .store)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCod = try container.decode(Bool.self, forKey: .isCod)
            
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
                itemType = try container.decode(String.self, forKey: .itemType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discount = try container.decode(String.self, forKey: .discount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                price = try container.decode(ProductStockPriceV3.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pricePerUnit = try container.decode(ProductStockUnitPriceV3.self, forKey: .pricePerUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                seller = try container.decode(SellerV3.self, forKey: .seller)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryPromise = try container.decode(PromiseSchema.self, forKey: .deliveryPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isServiceable = try container.decode(String.self, forKey: .isServiceable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
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
                itemCode = try container.decode(String.self, forKey: .itemCode)
            
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
                itemId = try container.decode(Int.self, forKey: .itemId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            try? container.encodeIfPresent(isCod, forKey: .isCod)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            try? container.encodeIfPresent(isServiceable, forKey: .isServiceable)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
        }
        
    }
}

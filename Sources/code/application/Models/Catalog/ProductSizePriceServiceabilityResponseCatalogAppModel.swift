

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizePriceServiceabilityResponse
        Used By: Catalog
    */
    class ProductSizePriceServiceabilityResponse: Codable {
        
        public var store: StoreV3?
        
        public var isCod: Bool?
        
        public var strategyWiseListing: [StrategyWiseListingSchemaServiceability]?
        
        public var quantity: Int?
        
        public var itemType: String?
        
        public var discount: String?
        
        public var price: ProductStockPriceV3?
        
        public var pricePerUnit: ProductStockUnitPriceV3?
        
        public var seller: SellerV3?
        
        public var deliveryPromise: PromiseSchema?
        
        public var isServiceable: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case isCod = "is_cod"
            
            case strategyWiseListing = "strategy_wise_listing"
            
            case quantity = "quantity"
            
            case itemType = "item_type"
            
            case discount = "discount"
            
            case price = "price"
            
            case pricePerUnit = "price_per_unit"
            
            case seller = "seller"
            
            case deliveryPromise = "delivery_promise"
            
            case isServiceable = "is_serviceable"
            
        }

        public init(deliveryPromise: PromiseSchema? = nil, discount: String? = nil, isCod: Bool? = nil, isServiceable: String? = nil, itemType: String? = nil, price: ProductStockPriceV3? = nil, pricePerUnit: ProductStockUnitPriceV3? = nil, quantity: Int? = nil, seller: SellerV3? = nil, store: StoreV3? = nil, strategyWiseListing: [StrategyWiseListingSchemaServiceability]? = nil) {
            
            self.store = store
            
            self.isCod = isCod
            
            self.strategyWiseListing = strategyWiseListing
            
            self.quantity = quantity
            
            self.itemType = itemType
            
            self.discount = discount
            
            self.price = price
            
            self.pricePerUnit = pricePerUnit
            
            self.seller = seller
            
            self.deliveryPromise = deliveryPromise
            
            self.isServiceable = isServiceable
            
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
                strategyWiseListing = try container.decode([StrategyWiseListingSchemaServiceability].self, forKey: .strategyWiseListing)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            try? container.encodeIfPresent(isCod, forKey: .isCod)
            
            
            
            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            try? container.encodeIfPresent(isServiceable, forKey: .isServiceable)
            
            
        }
        
    }
}

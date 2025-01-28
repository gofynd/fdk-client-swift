

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductStockStatusItem
        Used By: Catalog
    */
    class ProductStockStatusItem: Codable {
        
        public var uid: String?
        
        public var quantity: Int?
        
        public var brand: BrandItem?
        
        public var sellerIdentifier: String?
        
        public var priceEffective: Double?
        
        public var priceSelling: Double?
        
        public var priceMarked: Double?
        
        public var discountMeta: DiscountMeta?
        
        public var discountApplied: [String: Any]?
        
        public var store: StoreDetail?
        
        public var size: String?
        
        public var price: ProductStockPrice?
        
        public var company: CompanyDetail?
        
        public var itemId: Int?
        
        public var seller: Seller?
        
        public var identifier: ArticleIdentifier?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case quantity = "quantity"
            
            case brand = "brand"
            
            case sellerIdentifier = "seller_identifier"
            
            case priceEffective = "price_effective"
            
            case priceSelling = "price_selling"
            
            case priceMarked = "price_marked"
            
            case discountMeta = "discount_meta"
            
            case discountApplied = "discount_applied"
            
            case store = "store"
            
            case size = "size"
            
            case price = "price"
            
            case company = "company"
            
            case itemId = "item_id"
            
            case seller = "seller"
            
            case identifier = "identifier"
            
        }

        public init(brand: BrandItem? = nil, company: CompanyDetail? = nil, discountApplied: [String: Any]? = nil, discountMeta: DiscountMeta? = nil, identifier: ArticleIdentifier? = nil, itemId: Int? = nil, price: ProductStockPrice? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, priceSelling: Double? = nil, quantity: Int? = nil, seller: Seller? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: StoreDetail? = nil, uid: String? = nil) {
            
            self.uid = uid
            
            self.quantity = quantity
            
            self.brand = brand
            
            self.sellerIdentifier = sellerIdentifier
            
            self.priceEffective = priceEffective
            
            self.priceSelling = priceSelling
            
            self.priceMarked = priceMarked
            
            self.discountMeta = discountMeta
            
            self.discountApplied = discountApplied
            
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
                brand = try container.decode(BrandItem.self, forKey: .brand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priceSelling = try container.decode(Double.self, forKey: .priceSelling)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discountApplied = try container.decode([String: Any].self, forKey: .discountApplied)
            
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
                identifier = try container.decode(ArticleIdentifier.self, forKey: .identifier)
            
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
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            try? container.encodeIfPresent(priceSelling, forKey: .priceSelling)
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            try? container.encodeIfPresent(discountApplied, forKey: .discountApplied)
            
            
            
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

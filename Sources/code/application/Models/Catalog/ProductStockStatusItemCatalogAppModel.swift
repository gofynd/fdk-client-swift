

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductStockStatusItem
        Used By: Catalog
    */
    class ProductStockStatusItem: Codable {
        
        public var uid: String?
        
        public var sellerIdentifier: String?
        
        public var identifier: ArticleIdentifier?
        
        public var price: ProductStockPrice?
        
        public var size: String?
        
        public var itemId: Int?
        
        public var brand: BrandDetail?
        
        public var company: CompanyDetail?
        
        public var store: StoreDetail?
        
        public var quantity: Int?
        
        public var companyId: Int?
        
        public var brandId: Int?
        
        public var storeId: Int?
        
        public var seller: Seller?
        
        public var priceMarked: Double?
        
        public var priceEffective: Double?
        
        public var currency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case sellerIdentifier = "seller_identifier"
            
            case identifier = "identifier"
            
            case price = "price"
            
            case size = "size"
            
            case itemId = "item_id"
            
            case brand = "brand"
            
            case company = "company"
            
            case store = "store"
            
            case quantity = "quantity"
            
            case companyId = "company_id"
            
            case brandId = "brand_id"
            
            case storeId = "store_id"
            
            case seller = "seller"
            
            case priceMarked = "price_marked"
            
            case priceEffective = "price_effective"
            
            case currency = "currency"
            
        }

        public init(brand: BrandDetail? = nil, brandId: Int? = nil, company: CompanyDetail? = nil, companyId: Int? = nil, currency: String? = nil, identifier: ArticleIdentifier? = nil, itemId: Int? = nil, price: ProductStockPrice? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, seller: Seller? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: StoreDetail? = nil, storeId: Int? = nil, uid: String? = nil) {
            
            self.uid = uid
            
            self.sellerIdentifier = sellerIdentifier
            
            self.identifier = identifier
            
            self.price = price
            
            self.size = size
            
            self.itemId = itemId
            
            self.brand = brand
            
            self.company = company
            
            self.store = store
            
            self.quantity = quantity
            
            self.companyId = companyId
            
            self.brandId = brandId
            
            self.storeId = storeId
            
            self.seller = seller
            
            self.priceMarked = priceMarked
            
            self.priceEffective = priceEffective
            
            self.currency = currency
            
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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
            
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
            
            
            
            do {
                price = try container.decode(ProductStockPrice.self, forKey: .price)
            
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
            
            
            
            do {
                brand = try container.decode(BrandDetail.self, forKey: .brand)
            
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
                store = try container.decode(StoreDetail.self, forKey: .store)
            
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
                companyId = try container.decode(Int.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                brandId = try container.decode(Int.self, forKey: .brandId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeId = try container.decode(Int.self, forKey: .storeId)
            
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
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
            
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
                currency = try container.decode(String.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}

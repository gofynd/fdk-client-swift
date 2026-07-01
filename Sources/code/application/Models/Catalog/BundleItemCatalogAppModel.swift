

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: BundleItem
        Used By: Catalog
    */
    class BundleItem: Codable {
        
        public var brand: ProductBrand?
        
        public var media: [Media]?
        
        public var netQuantity: Int?
        
        public var size: String?
        
        public var sellerIdentifiers: [String]?
        
        public var price: Double?
        
        public var priceEffective: Double?
        
        public var currency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case media = "media"
            
            case netQuantity = "net_quantity"
            
            case size = "size"
            
            case sellerIdentifiers = "seller_identifiers"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case currency = "currency"
            
        }

        public init(brand: ProductBrand? = nil, currency: String? = nil, media: [Media]? = nil, netQuantity: Int? = nil, price: Double? = nil, priceEffective: Double? = nil, sellerIdentifiers: [String]? = nil, size: String? = nil) {
            
            self.brand = brand
            
            self.media = media
            
            self.netQuantity = netQuantity
            
            self.size = size
            
            self.sellerIdentifiers = sellerIdentifiers
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                media = try container.decode([Media].self, forKey: .media)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                netQuantity = try container.decode(Int.self, forKey: .netQuantity)
            
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
                sellerIdentifiers = try container.decode([String].self, forKey: .sellerIdentifiers)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                price = try container.decode(Double.self, forKey: .price)
            
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
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(sellerIdentifiers, forKey: .sellerIdentifiers)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}

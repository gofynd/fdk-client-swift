

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductInGroup
        Used By: Catalog
    */
    class ProductInGroup: Codable {
        
        public var maxQuantity: Int
        
        public var sizes: [Size]?
        
        public var price: ProductGroupPrice?
        
        public var productDetails: ProductDetails?
        
        public var minQuantity: Int?
        
        public var productUid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case maxQuantity = "max_quantity"
            
            case sizes = "sizes"
            
            case price = "price"
            
            case productDetails = "product_details"
            
            case minQuantity = "min_quantity"
            
            case productUid = "product_uid"
            
        }

        public init(maxQuantity: Int, minQuantity: Int? = nil, price: ProductGroupPrice? = nil, productDetails: ProductDetails? = nil, productUid: Int, sizes: [Size]? = nil) {
            
            self.maxQuantity = maxQuantity
            
            self.sizes = sizes
            
            self.price = price
            
            self.productDetails = productDetails
            
            self.minQuantity = minQuantity
            
            self.productUid = productUid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
            
            
            
            
            do {
                sizes = try container.decode([Size].self, forKey: .sizes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                price = try container.decode(ProductGroupPrice.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            productUid = try container.decode(Int.self, forKey: .productUid)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(productDetails, forKey: .productDetails)
            
            
            
            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
            
            
            
            try? container.encodeIfPresent(productUid, forKey: .productUid)
            
            
        }
        
    }
}

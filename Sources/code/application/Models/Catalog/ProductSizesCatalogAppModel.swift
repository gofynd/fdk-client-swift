

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizes
        Used By: Catalog
    */
    class ProductSizes: Codable {
        
        public var sizes: [ProductSize]?
        
        public var price: ProductSizesPrice?
        
        public var pricePerPiece: ProductSizesPrice?
        
        public var sizeChart: SizeChart?
        
        public var sellable: Bool?
        
        public var multiSize: Bool?
        
        public var discount: String?
        
        public var stores: ProductSizeStores?
        
        public var discountMeta: DiscountMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case price = "price"
            
            case pricePerPiece = "price_per_piece"
            
            case sizeChart = "size_chart"
            
            case sellable = "sellable"
            
            case multiSize = "multi_size"
            
            case discount = "discount"
            
            case stores = "stores"
            
            case discountMeta = "discount_meta"
            
        }

        public init(discount: String? = nil, discountMeta: DiscountMeta? = nil, multiSize: Bool? = nil, price: ProductSizesPrice? = nil, pricePerPiece: ProductSizesPrice? = nil, sellable: Bool? = nil, sizes: [ProductSize]? = nil, sizeChart: SizeChart? = nil, stores: ProductSizeStores? = nil) {
            
            self.sizes = sizes
            
            self.price = price
            
            self.pricePerPiece = pricePerPiece
            
            self.sizeChart = sizeChart
            
            self.sellable = sellable
            
            self.multiSize = multiSize
            
            self.discount = discount
            
            self.stores = stores
            
            self.discountMeta = discountMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                sizes = try container.decode([ProductSize].self, forKey: .sizes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                price = try container.decode(ProductSizesPrice.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pricePerPiece = try container.decode(ProductSizesPrice.self, forKey: .pricePerPiece)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sizeChart = try container.decode(SizeChart.self, forKey: .sizeChart)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sellable = try container.decode(Bool.self, forKey: .sellable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)
            
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
                stores = try container.decode(ProductSizeStores.self, forKey: .stores)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)
            
            
            
            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
        }
        
    }
}

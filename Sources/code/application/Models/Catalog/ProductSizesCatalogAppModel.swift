

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizes
        Used By: Catalog
    */
    class ProductSizes: Codable {
        
        public var sizes: [ProductSize]?
        
        public var price: ProductSizesPrice?
        
        public var sizeChart: SizeChart?
        
        public var sellable: Bool?
        
        public var multiSize: Bool?
        
        public var discount: String?
        
        public var stores: ProductSizeStores?
        
        public var discountMeta: DiscountMeta?
        
        public var moq: MOQ?
        
        public var tags: [String]?
        
        public var customOrder: [String: Any]?
        
        public var productName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case price = "price"
            
            case sizeChart = "size_chart"
            
            case sellable = "sellable"
            
            case multiSize = "multi_size"
            
            case discount = "discount"
            
            case stores = "stores"
            
            case discountMeta = "discount_meta"
            
            case moq = "moq"
            
            case tags = "tags"
            
            case customOrder = "custom_order"
            
            case productName = "product_name"
            
        }

        public init(customOrder: [String: Any]? = nil, discount: String? = nil, discountMeta: DiscountMeta? = nil, moq: MOQ? = nil, multiSize: Bool? = nil, price: ProductSizesPrice? = nil, productName: String? = nil, sellable: Bool? = nil, sizes: [ProductSize]? = nil, sizeChart: SizeChart? = nil, stores: ProductSizeStores? = nil, tags: [String]? = nil) {
            
            self.sizes = sizes
            
            self.price = price
            
            self.sizeChart = sizeChart
            
            self.sellable = sellable
            
            self.multiSize = multiSize
            
            self.discount = discount
            
            self.stores = stores
            
            self.discountMeta = discountMeta
            
            self.moq = moq
            
            self.tags = tags
            
            self.customOrder = customOrder
            
            self.productName = productName
            
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
            
            
            
            do {
                moq = try container.decode(MOQ.self, forKey: .moq)
            
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
                customOrder = try container.decode([String: Any].self, forKey: .customOrder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productName = try container.decode(String.self, forKey: .productName)
            
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
            
            
            
            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            try? container.encodeIfPresent(multiSize, forKey: .multiSize)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            try? container.encodeIfPresent(moq, forKey: .moq)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(customOrder, forKey: .customOrder)
            
            
            
            try? container.encodeIfPresent(productName, forKey: .productName)
            
            
        }
        
    }
}

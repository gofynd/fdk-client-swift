

import Foundation
public extension PlatformClient {
    /*
        Model: InvSize
        Used By: Catalog
    */

    class InvSize: Codable {
        
        
        public var size: [String: Any]
        
        public var priceTransfer: Double?
        
        public var price: Double?
        
        public var priceEffective: Double
        
        public var itemWeightUnitOfMeasure: String?
        
        public var itemLength: Double?
        
        public var itemHeight: Double?
        
        public var expirationDate: String?
        
        public var identifiers: [GTIN]
        
        public var quantity: Int
        
        public var isSet: Bool?
        
        public var itemWidth: Double?
        
        public var set: InventorySet?
        
        public var currency: String
        
        public var storeCode: String
        
        public var itemWeight: Double?
        
        public var itemDimensionsUnitOfMeasure: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case priceTransfer = "price_transfer"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case itemLength = "item_length"
            
            case itemHeight = "item_height"
            
            case expirationDate = "expiration_date"
            
            case identifiers = "identifiers"
            
            case quantity = "quantity"
            
            case isSet = "is_set"
            
            case itemWidth = "item_width"
            
            case set = "set"
            
            case currency = "currency"
            
            case storeCode = "store_code"
            
            case itemWeight = "item_weight"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            
            self.size = size
            
            self.priceTransfer = priceTransfer
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.itemLength = itemLength
            
            self.itemHeight = itemHeight
            
            self.expirationDate = expirationDate
            
            self.identifiers = identifiers
            
            self.quantity = quantity
            
            self.isSet = isSet
            
            self.itemWidth = itemWidth
            
            self.set = set
            
            self.currency = currency
            
            self.storeCode = storeCode
            
            self.itemWeight = itemWeight
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode([String: Any].self, forKey: .size)
                
            
            
            
                do {
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                do {
                    itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemLength = try container.decode(Double.self, forKey: .itemLength)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemHeight = try container.decode(Double.self, forKey: .itemHeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifiers = try container.decode([GTIN].self, forKey: .identifiers)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemWidth = try container.decode(Double.self, forKey: .itemWidth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    set = try container.decode(InventorySet.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                do {
                    itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encode(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encode(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encode(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encode(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encode(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
        }
        
    }
}

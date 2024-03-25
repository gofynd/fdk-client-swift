

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InvSizeSchema
        Used By: Catalog
    */

    class InvSizeSchema: Codable {
        
        
        public var itemHeight: Double?
        
        public var itemWidth: Double?
        
        public var itemLength: Double?
        
        public var itemDimensionsUnitOfMeasure: String?
        
        public var itemWeight: Double?
        
        public var itemWeightUnitOfMeasure: String?
        
        public var currency: String
        
        public var quantity: Int
        
        public var storeCode: String
        
        public var identifiers: [GTINSchema]
        
        public var size: String
        
        public var price: Double?
        
        public var priceEffective: Double
        
        public var priceTransfer: Double?
        
        public var expirationDate: String?
        
        public var isSet: Bool?
        
        public var set: InventorySetSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemHeight = "item_height"
            
            case itemWidth = "item_width"
            
            case itemLength = "item_length"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
            case itemWeight = "item_weight"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case currency = "currency"
            
            case quantity = "quantity"
            
            case storeCode = "store_code"
            
            case identifiers = "identifiers"
            
            case size = "size"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case priceTransfer = "price_transfer"
            
            case expirationDate = "expiration_date"
            
            case isSet = "is_set"
            
            case set = "set"
            
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTINSchema], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySetSchema? = nil, size: String, storeCode: String) {
            
            self.itemHeight = itemHeight
            
            self.itemWidth = itemWidth
            
            self.itemLength = itemLength
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
            self.itemWeight = itemWeight
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.currency = currency
            
            self.quantity = quantity
            
            self.storeCode = storeCode
            
            self.identifiers = identifiers
            
            self.size = size
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.priceTransfer = priceTransfer
            
            self.expirationDate = expirationDate
            
            self.isSet = isSet
            
            self.set = set
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemHeight = try container.decode(Double.self, forKey: .itemHeight)
                
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
                    itemLength = try container.decode(Double.self, forKey: .itemLength)
                
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
                
            
            
                do {
                    itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                identifiers = try container.decode([GTINSchema].self, forKey: .identifiers)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    price = try container.decode(Double.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                do {
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    set = try container.decode(InventorySetSchema.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InvSizeSchema
        Used By: Catalog
    */

    class InvSizeSchema: Codable {
        
        
        public var itemHeight: Double?
        
        public var itemWidth: Double?
        
        public var itemLength: Double?
        
        public var itemDimensionsUnitOfMeasure: String?
        
        public var itemWeight: Double?
        
        public var itemWeightUnitOfMeasure: String?
        
        public var currency: String
        
        public var quantity: Int
        
        public var storeCode: String
        
        public var identifiers: [GTINSchema]
        
        public var size: String
        
        public var price: Double?
        
        public var priceEffective: Double
        
        public var priceTransfer: Double?
        
        public var expirationDate: String?
        
        public var isSet: Bool?
        
        public var set: InventorySetSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemHeight = "item_height"
            
            case itemWidth = "item_width"
            
            case itemLength = "item_length"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
            case itemWeight = "item_weight"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case currency = "currency"
            
            case quantity = "quantity"
            
            case storeCode = "store_code"
            
            case identifiers = "identifiers"
            
            case size = "size"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case priceTransfer = "price_transfer"
            
            case expirationDate = "expiration_date"
            
            case isSet = "is_set"
            
            case set = "set"
            
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTINSchema], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySetSchema? = nil, size: String, storeCode: String) {
            
            self.itemHeight = itemHeight
            
            self.itemWidth = itemWidth
            
            self.itemLength = itemLength
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
            self.itemWeight = itemWeight
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.currency = currency
            
            self.quantity = quantity
            
            self.storeCode = storeCode
            
            self.identifiers = identifiers
            
            self.size = size
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.priceTransfer = priceTransfer
            
            self.expirationDate = expirationDate
            
            self.isSet = isSet
            
            self.set = set
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemHeight = try container.decode(Double.self, forKey: .itemHeight)
                
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
                    itemLength = try container.decode(Double.self, forKey: .itemLength)
                
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
                
            
            
                do {
                    itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                storeCode = try container.decode(String.self, forKey: .storeCode)
                
            
            
            
                identifiers = try container.decode([GTINSchema].self, forKey: .identifiers)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    price = try container.decode(Double.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                do {
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    set = try container.decode(InventorySetSchema.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
        }
        
    }
}



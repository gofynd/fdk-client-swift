

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Size
        Used By: Serviceability
    */

    class Size: Codable {
        
        
        public var size: String?
        
        public var sizePriority: Int?
        
        public var itemDimensionsUnitOfMeasure: String?
        
        public var priceTransfer: Double?
        
        public var itemHeight: Double?
        
        public var itemLength: Double?
        
        public var itemWidth: Double?
        
        public var itemWeight: Double?
        
        public var itemWeightUnitOfMeasure: String?
        
        public var price: Double?
        
        public var priceEffective: Double?
        
        public var isSet: Bool?
        
        public var trackInventory: Bool?
        
        public var identifiers: [Identifier]?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case sizePriority = "size_priority"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
            case priceTransfer = "price_transfer"
            
            case itemHeight = "item_height"
            
            case itemLength = "item_length"
            
            case itemWidth = "item_width"
            
            case itemWeight = "item_weight"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case isSet = "is_set"
            
            case trackInventory = "track_inventory"
            
            case identifiers = "identifiers"
            
            case customJson = "_custom_json"
            
        }

        public init(identifiers: [Identifier]? = nil, isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double? = nil, priceTransfer: Double? = nil, size: String? = nil, sizePriority: Int? = nil, trackInventory: Bool? = nil, customJson: [String: Any]? = nil) {
            
            self.size = size
            
            self.sizePriority = sizePriority
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
            self.priceTransfer = priceTransfer
            
            self.itemHeight = itemHeight
            
            self.itemLength = itemLength
            
            self.itemWidth = itemWidth
            
            self.itemWeight = itemWeight
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.isSet = isSet
            
            self.trackInventory = trackInventory
            
            self.identifiers = identifiers
            
            self.customJson = customJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizePriority = try container.decode(Int.self, forKey: .sizePriority)
                
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
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                    itemLength = try container.decode(Double.self, forKey: .itemLength)
                
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
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifiers = try container.decode([Identifier].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(sizePriority, forKey: .sizePriority)
            
            
            
            
            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Size
        Used By: Serviceability
    */

    class Size: Codable {
        
        
        public var size: String?
        
        public var sizePriority: Int?
        
        public var itemDimensionsUnitOfMeasure: String?
        
        public var priceTransfer: Double?
        
        public var itemHeight: Double?
        
        public var itemLength: Double?
        
        public var itemWidth: Double?
        
        public var itemWeight: Double?
        
        public var itemWeightUnitOfMeasure: String?
        
        public var price: Double?
        
        public var priceEffective: Double?
        
        public var isSet: Bool?
        
        public var trackInventory: Bool?
        
        public var identifiers: [Identifier]?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case sizePriority = "size_priority"
            
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
            
            case priceTransfer = "price_transfer"
            
            case itemHeight = "item_height"
            
            case itemLength = "item_length"
            
            case itemWidth = "item_width"
            
            case itemWeight = "item_weight"
            
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case isSet = "is_set"
            
            case trackInventory = "track_inventory"
            
            case identifiers = "identifiers"
            
            case customJson = "_custom_json"
            
        }

        public init(identifiers: [Identifier]? = nil, isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double? = nil, priceTransfer: Double? = nil, size: String? = nil, sizePriority: Int? = nil, trackInventory: Bool? = nil, customJson: [String: Any]? = nil) {
            
            self.size = size
            
            self.sizePriority = sizePriority
            
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
            
            self.priceTransfer = priceTransfer
            
            self.itemHeight = itemHeight
            
            self.itemLength = itemLength
            
            self.itemWidth = itemWidth
            
            self.itemWeight = itemWeight
            
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.isSet = isSet
            
            self.trackInventory = trackInventory
            
            self.identifiers = identifiers
            
            self.customJson = customJson
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizePriority = try container.decode(Int.self, forKey: .sizePriority)
                
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
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                    itemLength = try container.decode(Double.self, forKey: .itemLength)
                
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
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifiers = try container.decode([Identifier].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(sizePriority, forKey: .sizePriority)
            
            
            
            
            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
}



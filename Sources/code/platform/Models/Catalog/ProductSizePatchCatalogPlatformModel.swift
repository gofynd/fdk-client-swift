

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductSizePatch
        Used By: Catalog
    */

    class ProductSizePatch: Codable {
        
        
        public var itemWidth: Double?
        
        public var itemHeight: Double?
        
        public var itemWeight: Double?
        
        public var price: Double?
        
        public var trackInventory: Bool?
        
        public var customJson: [String: Any]?
        
        public var sellerIdentifier: String?
        
        public var itemLength: Double?
        
        public var priceEffective: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemWidth = "item_width"
            
            case itemHeight = "item_height"
            
            case itemWeight = "item_weight"
            
            case price = "price"
            
            case trackInventory = "track_inventory"
            
            case customJson = "_custom_json"
            
            case sellerIdentifier = "seller_identifier"
            
            case itemLength = "item_length"
            
            case priceEffective = "price_effective"
            
        }

        public init(itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double? = nil, sellerIdentifier: String? = nil, trackInventory: Bool? = nil, customJson: [String: Any]? = nil) {
            
            self.itemWidth = itemWidth
            
            self.itemHeight = itemHeight
            
            self.itemWeight = itemWeight
            
            self.price = price
            
            self.trackInventory = trackInventory
            
            self.customJson = customJson
            
            self.sellerIdentifier = sellerIdentifier
            
            self.itemLength = itemLength
            
            self.priceEffective = priceEffective
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemWidth = try container.decode(Double.self, forKey: .itemWidth)
                
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
                    itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
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
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
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
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
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
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductSizePatch
        Used By: Catalog
    */

    class ProductSizePatch: Codable {
        
        
        public var itemWidth: Double?
        
        public var itemHeight: Double?
        
        public var itemWeight: Double?
        
        public var price: Double?
        
        public var trackInventory: Bool?
        
        public var customJson: [String: Any]?
        
        public var sellerIdentifier: String?
        
        public var itemLength: Double?
        
        public var priceEffective: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemWidth = "item_width"
            
            case itemHeight = "item_height"
            
            case itemWeight = "item_weight"
            
            case price = "price"
            
            case trackInventory = "track_inventory"
            
            case customJson = "_custom_json"
            
            case sellerIdentifier = "seller_identifier"
            
            case itemLength = "item_length"
            
            case priceEffective = "price_effective"
            
        }

        public init(itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double? = nil, sellerIdentifier: String? = nil, trackInventory: Bool? = nil, customJson: [String: Any]? = nil) {
            
            self.itemWidth = itemWidth
            
            self.itemHeight = itemHeight
            
            self.itemWeight = itemWeight
            
            self.price = price
            
            self.trackInventory = trackInventory
            
            self.customJson = customJson
            
            self.sellerIdentifier = sellerIdentifier
            
            self.itemLength = itemLength
            
            self.priceEffective = priceEffective
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemWidth = try container.decode(Double.self, forKey: .itemWidth)
                
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
                    itemWeight = try container.decode(Double.self, forKey: .itemWeight)
                
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
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
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
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
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
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemWidth, forKey: .itemWidth)
            
            
            
            
            try? container.encodeIfPresent(itemHeight, forKey: .itemHeight)
            
            
            
            
            try? container.encodeIfPresent(itemWeight, forKey: .itemWeight)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(itemLength, forKey: .itemLength)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
        }
        
    }
}



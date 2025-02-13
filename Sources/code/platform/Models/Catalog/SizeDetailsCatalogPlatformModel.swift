

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SizeDetails
        Used By: Catalog
    */

    class SizeDetails: Codable {
        
        
        public var size: String?
        
        public var storeCount: Int?
        
        public var sellableQuantity: Int?
        
        public var sellable: Bool?
        
        public var sizePriority: Int?
        
        public var identifiers: [Identifier]?
        
        public var price: [String: Any]?
        
        public var sellerIdentifier: String?
        
        public var priceTransfer: Double?
        
        public var trackInventory: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case storeCount = "store_count"
            
            case sellableQuantity = "sellable_quantity"
            
            case sellable = "sellable"
            
            case sizePriority = "size_priority"
            
            case identifiers = "identifiers"
            
            case price = "price"
            
            case sellerIdentifier = "seller_identifier"
            
            case priceTransfer = "price_transfer"
            
            case trackInventory = "track_inventory"
            
        }

        public init(identifiers: [Identifier]? = nil, price: [String: Any]? = nil, priceTransfer: Double? = nil, sellable: Bool? = nil, sellableQuantity: Int? = nil, sellerIdentifier: String? = nil, size: String? = nil, sizePriority: Int? = nil, storeCount: Int? = nil, trackInventory: Bool? = nil) {
            
            self.size = size
            
            self.storeCount = storeCount
            
            self.sellableQuantity = sellableQuantity
            
            self.sellable = sellable
            
            self.sizePriority = sizePriority
            
            self.identifiers = identifiers
            
            self.price = price
            
            self.sellerIdentifier = sellerIdentifier
            
            self.priceTransfer = priceTransfer
            
            self.trackInventory = trackInventory
            
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
                    storeCount = try container.decode(Int.self, forKey: .storeCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellableQuantity = try container.decode(Int.self, forKey: .sellableQuantity)
                
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
                    sizePriority = try container.decode(Int.self, forKey: .sizePriority)
                
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
                    price = try container.decode([String: Any].self, forKey: .price)
                
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
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(storeCount, forKey: .storeCount)
            
            
            
            
            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)
            
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            
            try? container.encodeIfPresent(sizePriority, forKey: .sizePriority)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SizeDetails
        Used By: Catalog
    */

    class SizeDetails: Codable {
        
        
        public var size: String?
        
        public var storeCount: Int?
        
        public var sellableQuantity: Int?
        
        public var sellable: Bool?
        
        public var sizePriority: Int?
        
        public var identifiers: [Identifier]?
        
        public var price: [String: Any]?
        
        public var sellerIdentifier: String?
        
        public var priceTransfer: Double?
        
        public var trackInventory: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case storeCount = "store_count"
            
            case sellableQuantity = "sellable_quantity"
            
            case sellable = "sellable"
            
            case sizePriority = "size_priority"
            
            case identifiers = "identifiers"
            
            case price = "price"
            
            case sellerIdentifier = "seller_identifier"
            
            case priceTransfer = "price_transfer"
            
            case trackInventory = "track_inventory"
            
        }

        public init(identifiers: [Identifier]? = nil, price: [String: Any]? = nil, priceTransfer: Double? = nil, sellable: Bool? = nil, sellableQuantity: Int? = nil, sellerIdentifier: String? = nil, size: String? = nil, sizePriority: Int? = nil, storeCount: Int? = nil, trackInventory: Bool? = nil) {
            
            self.size = size
            
            self.storeCount = storeCount
            
            self.sellableQuantity = sellableQuantity
            
            self.sellable = sellable
            
            self.sizePriority = sizePriority
            
            self.identifiers = identifiers
            
            self.price = price
            
            self.sellerIdentifier = sellerIdentifier
            
            self.priceTransfer = priceTransfer
            
            self.trackInventory = trackInventory
            
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
                    storeCount = try container.decode(Int.self, forKey: .storeCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellableQuantity = try container.decode(Int.self, forKey: .sellableQuantity)
                
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
                    sizePriority = try container.decode(Int.self, forKey: .sizePriority)
                
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
                    price = try container.decode([String: Any].self, forKey: .price)
                
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
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(storeCount, forKey: .storeCount)
            
            
            
            
            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)
            
            
            
            
            try? container.encodeIfPresent(sellable, forKey: .sellable)
            
            
            
            
            try? container.encodeIfPresent(sizePriority, forKey: .sizePriority)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
        }
        
    }
}



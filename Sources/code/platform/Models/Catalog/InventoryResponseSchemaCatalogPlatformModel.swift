

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryResponseSchema
        Used By: Catalog
    */

    class InventoryResponseSchema: Codable {
        
        
        public var currency: String?
        
        public var inventoryUpdatedOn: String?
        
        public var itemId: Int?
        
        public var price: Double?
        
        public var priceEffective: Double?
        
        public var priceTransfer: Double?
        
        public var quantity: Int?
        
        public var sellableQuantity: Int?
        
        public var sellerIdentifier: String?
        
        public var size: String?
        
        public var uid: String?
        
        public var expirationDate: String?
        
        public var tags: [String]?
        
        public var store: InventoryStore?
        
        public var createdBy: UserInfo?
        
        public var modifiedBy: UserInfo?
        
        public var identifiers: [InventoryIdentifier]?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case inventoryUpdatedOn = "inventory_updated_on"
            
            case itemId = "item_id"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case priceTransfer = "price_transfer"
            
            case quantity = "quantity"
            
            case sellableQuantity = "sellable_quantity"
            
            case sellerIdentifier = "seller_identifier"
            
            case size = "size"
            
            case uid = "uid"
            
            case expirationDate = "expiration_date"
            
            case tags = "tags"
            
            case store = "store"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case identifiers = "identifiers"
            
        }

        public init(createdBy: UserInfo? = nil, currency: String? = nil, expirationDate: String? = nil, identifiers: [InventoryIdentifier]? = nil, inventoryUpdatedOn: String? = nil, itemId: Int? = nil, modifiedBy: UserInfo? = nil, price: Double? = nil, priceEffective: Double? = nil, priceTransfer: Double? = nil, quantity: Int? = nil, sellableQuantity: Int? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: InventoryStore? = nil, tags: [String]? = nil, uid: String? = nil) {
            
            self.currency = currency
            
            self.inventoryUpdatedOn = inventoryUpdatedOn
            
            self.itemId = itemId
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.priceTransfer = priceTransfer
            
            self.quantity = quantity
            
            self.sellableQuantity = sellableQuantity
            
            self.sellerIdentifier = sellerIdentifier
            
            self.size = size
            
            self.uid = uid
            
            self.expirationDate = expirationDate
            
            self.tags = tags
            
            self.store = store
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.identifiers = identifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)
                
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
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                    sellableQuantity = try container.decode(Int.self, forKey: .sellableQuantity)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(InventoryStore.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifiers = try container.decode([InventoryIdentifier].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryResponseSchema
        Used By: Catalog
    */

    class InventoryResponseSchema: Codable {
        
        
        public var currency: String?
        
        public var inventoryUpdatedOn: String?
        
        public var itemId: Int?
        
        public var price: Double?
        
        public var priceEffective: Double?
        
        public var priceTransfer: Double?
        
        public var quantity: Int?
        
        public var sellableQuantity: Int?
        
        public var sellerIdentifier: String?
        
        public var size: String?
        
        public var uid: String?
        
        public var expirationDate: String?
        
        public var tags: [String]?
        
        public var store: InventoryStore?
        
        public var createdBy: UserInfo?
        
        public var modifiedBy: UserInfo?
        
        public var identifiers: [InventoryIdentifier]?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case inventoryUpdatedOn = "inventory_updated_on"
            
            case itemId = "item_id"
            
            case price = "price"
            
            case priceEffective = "price_effective"
            
            case priceTransfer = "price_transfer"
            
            case quantity = "quantity"
            
            case sellableQuantity = "sellable_quantity"
            
            case sellerIdentifier = "seller_identifier"
            
            case size = "size"
            
            case uid = "uid"
            
            case expirationDate = "expiration_date"
            
            case tags = "tags"
            
            case store = "store"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case identifiers = "identifiers"
            
        }

        public init(createdBy: UserInfo? = nil, currency: String? = nil, expirationDate: String? = nil, identifiers: [InventoryIdentifier]? = nil, inventoryUpdatedOn: String? = nil, itemId: Int? = nil, modifiedBy: UserInfo? = nil, price: Double? = nil, priceEffective: Double? = nil, priceTransfer: Double? = nil, quantity: Int? = nil, sellableQuantity: Int? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: InventoryStore? = nil, tags: [String]? = nil, uid: String? = nil) {
            
            self.currency = currency
            
            self.inventoryUpdatedOn = inventoryUpdatedOn
            
            self.itemId = itemId
            
            self.price = price
            
            self.priceEffective = priceEffective
            
            self.priceTransfer = priceTransfer
            
            self.quantity = quantity
            
            self.sellableQuantity = sellableQuantity
            
            self.sellerIdentifier = sellerIdentifier
            
            self.size = size
            
            self.uid = uid
            
            self.expirationDate = expirationDate
            
            self.tags = tags
            
            self.store = store
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.identifiers = identifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)
                
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
                    priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)
                
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
                    sellableQuantity = try container.decode(Int.self, forKey: .sellableQuantity)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(InventoryStore.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserInfo.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifiers = try container.decode([InventoryIdentifier].self, forKey: .identifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
        }
        
    }
}



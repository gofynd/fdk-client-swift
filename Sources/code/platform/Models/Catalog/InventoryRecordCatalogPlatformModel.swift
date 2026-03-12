

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryRecord
        Used By: Catalog
    */

    class InventoryRecord: Codable {
        
        
        public var command: String?
        
        public var currency: String?
        
        public var inventoryBucket: String?
        
        public var priceEffective: Double?
        
        public var priceMarked: Double?
        
        public var sellerIdentifier: String?
        
        public var storeCode: String?
        
        public var totalQuantity: Int?
        
        public var traceId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case command = "command"
            
            case currency = "currency"
            
            case inventoryBucket = "inventory_bucket"
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case sellerIdentifier = "seller_identifier"
            
            case storeCode = "store_code"
            
            case totalQuantity = "total_quantity"
            
            case traceId = "trace_id"
            
        }

        public init(command: String? = nil, currency: String? = nil, inventoryBucket: String? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, sellerIdentifier: String? = nil, storeCode: String? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            
            self.command = command
            
            self.currency = currency
            
            self.inventoryBucket = inventoryBucket
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.sellerIdentifier = sellerIdentifier
            
            self.storeCode = storeCode
            
            self.totalQuantity = totalQuantity
            
            self.traceId = traceId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    command = try container.decode(String.self, forKey: .command)
                
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
                
            
            
                do {
                    inventoryBucket = try container.decode(String.self, forKey: .inventoryBucket)
                
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
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
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
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    traceId = try container.decode(String.self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(command, forKey: .command)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(inventoryBucket, forKey: .inventoryBucket)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryRecord
        Used By: Catalog
    */

    class InventoryRecord: Codable {
        
        
        public var command: String?
        
        public var currency: String?
        
        public var inventoryBucket: String?
        
        public var priceEffective: Double?
        
        public var priceMarked: Double?
        
        public var sellerIdentifier: String?
        
        public var storeCode: String?
        
        public var totalQuantity: Int?
        
        public var traceId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case command = "command"
            
            case currency = "currency"
            
            case inventoryBucket = "inventory_bucket"
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case sellerIdentifier = "seller_identifier"
            
            case storeCode = "store_code"
            
            case totalQuantity = "total_quantity"
            
            case traceId = "trace_id"
            
        }

        public init(command: String? = nil, currency: String? = nil, inventoryBucket: String? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, sellerIdentifier: String? = nil, storeCode: String? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            
            self.command = command
            
            self.currency = currency
            
            self.inventoryBucket = inventoryBucket
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.sellerIdentifier = sellerIdentifier
            
            self.storeCode = storeCode
            
            self.totalQuantity = totalQuantity
            
            self.traceId = traceId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    command = try container.decode(String.self, forKey: .command)
                
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
                
            
            
                do {
                    inventoryBucket = try container.decode(String.self, forKey: .inventoryBucket)
                
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
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
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
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    traceId = try container.decode(String.self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(command, forKey: .command)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(inventoryBucket, forKey: .inventoryBucket)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
        }
        
    }
}



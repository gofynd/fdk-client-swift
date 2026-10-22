

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LocationPriceRequestSchema
        Used By: Catalog
    */

    class LocationPriceRequestSchema: Codable {
        
        
        public var priceEffective: Double
        
        public var priceMarked: Double
        
        public var priceCost: Double?
        
        public var tags: [String]?
        
        public var transactionType: String?
        
        public var transaction: InventoryTransaction?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case priceCost = "price_cost"
            
            case tags = "tags"
            
            case transactionType = "transaction_type"
            
            case transaction = "transaction"
            
        }

        public init(priceCost: Double? = nil, priceEffective: Double, priceMarked: Double, tags: [String]? = nil, transaction: InventoryTransaction? = nil, transactionType: String? = nil) {
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.priceCost = priceCost
            
            self.tags = tags
            
            self.transactionType = transactionType
            
            self.transaction = transaction
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                do {
                    priceCost = try container.decode(Double.self, forKey: .priceCost)
                
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
                    transactionType = try container.decode(String.self, forKey: .transactionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transaction = try container.decode(InventoryTransaction.self, forKey: .transaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(priceCost, forKey: .priceCost)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: LocationPriceRequestSchema
        Used By: Catalog
    */

    class LocationPriceRequestSchema: Codable {
        
        
        public var priceEffective: Double
        
        public var priceMarked: Double
        
        public var priceCost: Double?
        
        public var tags: [String]?
        
        public var transactionType: String?
        
        public var transaction: InventoryTransaction?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case priceCost = "price_cost"
            
            case tags = "tags"
            
            case transactionType = "transaction_type"
            
            case transaction = "transaction"
            
        }

        public init(priceCost: Double? = nil, priceEffective: Double, priceMarked: Double, tags: [String]? = nil, transaction: InventoryTransaction? = nil, transactionType: String? = nil) {
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.priceCost = priceCost
            
            self.tags = tags
            
            self.transactionType = transactionType
            
            self.transaction = transaction
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                do {
                    priceCost = try container.decode(Double.self, forKey: .priceCost)
                
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
                    transactionType = try container.decode(String.self, forKey: .transactionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transaction = try container.decode(InventoryTransaction.self, forKey: .transaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(priceCost, forKey: .priceCost)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
        }
        
    }
}



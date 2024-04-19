

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryPayload
        Used By: Catalog
    */

    class InventoryPayload: Codable {
        
        
        public var expirationDate: String?
        
        public var priceEffective: Double?
        
        public var priceMarked: Double?
        
        public var sellerIdentifier: String
        
        public var storeId: Int
        
        public var tags: [String]?
        
        public var totalQuantity: Int?
        
        public var traceId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case expirationDate = "expiration_date"
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case sellerIdentifier = "seller_identifier"
            
            case storeId = "store_id"
            
            case tags = "tags"
            
            case totalQuantity = "total_quantity"
            
            case traceId = "trace_id"
            
        }

        public init(expirationDate: String? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, sellerIdentifier: String, storeId: Int, tags: [String]? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            
            self.expirationDate = expirationDate
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.sellerIdentifier = sellerIdentifier
            
            self.storeId = storeId
            
            self.tags = tags
            
            self.totalQuantity = totalQuantity
            
            self.traceId = traceId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
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
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
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
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encode(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryPayload
        Used By: Catalog
    */

    class InventoryPayload: Codable {
        
        
        public var expirationDate: String?
        
        public var priceEffective: Double?
        
        public var priceMarked: Double?
        
        public var sellerIdentifier: String
        
        public var storeId: Int
        
        public var tags: [String]?
        
        public var totalQuantity: Int?
        
        public var traceId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case expirationDate = "expiration_date"
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case sellerIdentifier = "seller_identifier"
            
            case storeId = "store_id"
            
            case tags = "tags"
            
            case totalQuantity = "total_quantity"
            
            case traceId = "trace_id"
            
        }

        public init(expirationDate: String? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, sellerIdentifier: String, storeId: Int, tags: [String]? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            
            self.expirationDate = expirationDate
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.sellerIdentifier = sellerIdentifier
            
            self.storeId = storeId
            
            self.tags = tags
            
            self.totalQuantity = totalQuantity
            
            self.traceId = traceId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
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
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                storeId = try container.decode(Int.self, forKey: .storeId)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
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
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encode(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
        }
        
    }
}



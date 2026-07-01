

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryRequestSchemaV2
        Used By: Catalog
    */

    class InventoryRequestSchemaV2: Codable {
        
        
        public var companyId: Int
        
        public var meta: [String: Any]?
        
        public var payload: [InventoryPayload]?
        
        public var transactionType: String?
        
        public var transaction: InventoryTransaction?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case meta = "meta"
            
            case payload = "payload"
            
            case transactionType = "transaction_type"
            
            case transaction = "transaction"
            
        }

        public init(companyId: Int, meta: [String: Any]? = nil, payload: [InventoryPayload]? = nil, transaction: InventoryTransaction? = nil, transactionType: String? = nil) {
            
            self.companyId = companyId
            
            self.meta = meta
            
            self.payload = payload
            
            self.transactionType = transactionType
            
            self.transaction = transaction
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payload = try container.decode([InventoryPayload].self, forKey: .payload)
                
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
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryRequestSchemaV2
        Used By: Catalog
    */

    class InventoryRequestSchemaV2: Codable {
        
        
        public var companyId: Int
        
        public var meta: [String: Any]?
        
        public var payload: [InventoryPayload]?
        
        public var transactionType: String?
        
        public var transaction: InventoryTransaction?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case meta = "meta"
            
            case payload = "payload"
            
            case transactionType = "transaction_type"
            
            case transaction = "transaction"
            
        }

        public init(companyId: Int, meta: [String: Any]? = nil, payload: [InventoryPayload]? = nil, transaction: InventoryTransaction? = nil, transactionType: String? = nil) {
            
            self.companyId = companyId
            
            self.meta = meta
            
            self.payload = payload
            
            self.transactionType = transactionType
            
            self.transaction = transaction
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payload = try container.decode([InventoryPayload].self, forKey: .payload)
                
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
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
        }
        
    }
}



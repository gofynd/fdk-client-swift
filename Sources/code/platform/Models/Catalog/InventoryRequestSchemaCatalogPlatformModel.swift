

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryRequestSchema
        Used By: Catalog
    */

    class InventoryRequestSchema: Codable {
        
        
        public var companyId: Int
        
        public var item: ItemQuery
        
        public var sizes: [InvSize]
        
        public var transactionType: String?
        
        public var transaction: InventoryTransaction?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case item = "item"
            
            case sizes = "sizes"
            
            case transactionType = "transaction_type"
            
            case transaction = "transaction"
            
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize], transaction: InventoryTransaction? = nil, transactionType: String? = nil) {
            
            self.companyId = companyId
            
            self.item = item
            
            self.sizes = sizes
            
            self.transactionType = transactionType
            
            self.transaction = transaction
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                item = try container.decode(ItemQuery.self, forKey: .item)
                
            
            
            
                sizes = try container.decode([InvSize].self, forKey: .sizes)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryRequestSchema
        Used By: Catalog
    */

    class InventoryRequestSchema: Codable {
        
        
        public var companyId: Int
        
        public var item: ItemQuery
        
        public var sizes: [InvSize]
        
        public var transactionType: String?
        
        public var transaction: InventoryTransaction?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case item = "item"
            
            case sizes = "sizes"
            
            case transactionType = "transaction_type"
            
            case transaction = "transaction"
            
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize], transaction: InventoryTransaction? = nil, transactionType: String? = nil) {
            
            self.companyId = companyId
            
            self.item = item
            
            self.sizes = sizes
            
            self.transactionType = transactionType
            
            self.transaction = transaction
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                item = try container.decode(ItemQuery.self, forKey: .item)
                
            
            
            
                sizes = try container.decode([InvSize].self, forKey: .sizes)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encodeIfPresent(transaction, forKey: .transaction)
            
            
        }
        
    }
}



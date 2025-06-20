

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryBulkRequestSchema
        Used By: Catalog
    */

    class InventoryBulkRequestSchema: Codable {
        
        
        public var batchId: String
        
        public var companyId: Int
        
        public var sizes: [InventoryJobPayload]
        
        public var user: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case companyId = "company_id"
            
            case sizes = "sizes"
            
            case user = "user"
            
        }

        public init(batchId: String, companyId: Int, sizes: [InventoryJobPayload], user: [String: Any]? = nil) {
            
            self.batchId = batchId
            
            self.companyId = companyId
            
            self.sizes = sizes
            
            self.user = user
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                sizes = try container.decode([InventoryJobPayload].self, forKey: .sizes)
                
            
            
            
                do {
                    user = try container.decode([String: Any].self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryBulkRequestSchema
        Used By: Catalog
    */

    class InventoryBulkRequestSchema: Codable {
        
        
        public var batchId: String
        
        public var companyId: Int
        
        public var sizes: [InventoryJobPayload]
        
        public var user: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case companyId = "company_id"
            
            case sizes = "sizes"
            
            case user = "user"
            
        }

        public init(batchId: String, companyId: Int, sizes: [InventoryJobPayload], user: [String: Any]? = nil) {
            
            self.batchId = batchId
            
            self.companyId = companyId
            
            self.sizes = sizes
            
            self.user = user
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                sizes = try container.decode([InventoryJobPayload].self, forKey: .sizes)
                
            
            
            
                do {
                    user = try container.decode([String: Any].self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
}



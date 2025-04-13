

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryBulkResponse
        Used By: Catalog
    */

    class InventoryBulkResponse: Codable {
        
        
        public var batchId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
        }

        public init(batchId: String? = nil) {
            
            self.batchId = batchId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryBulkResponse
        Used By: Catalog
    */

    class InventoryBulkResponse: Codable {
        
        
        public var batchId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
        }

        public init(batchId: String? = nil) {
            
            self.batchId = batchId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
        }
        
    }
}



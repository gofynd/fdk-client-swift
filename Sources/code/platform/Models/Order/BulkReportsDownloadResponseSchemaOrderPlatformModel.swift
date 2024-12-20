

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BulkReportsDownloadResponseSchema
        Used By: Order
    */

    class BulkReportsDownloadResponseSchema: Codable {
        
        
        public var success: Bool?
        
        public var batchId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case batchId = "batch_id"
            
        }

        public init(batchId: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.batchId = batchId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BulkReportsDownloadResponseSchema
        Used By: Order
    */

    class BulkReportsDownloadResponseSchema: Codable {
        
        
        public var success: Bool?
        
        public var batchId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case batchId = "batch_id"
            
        }

        public init(batchId: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.batchId = batchId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
        }
        
    }
}



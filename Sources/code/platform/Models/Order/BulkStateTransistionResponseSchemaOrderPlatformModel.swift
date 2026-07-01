

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BulkStateTransistionResponseSchema
        Used By: Order
    */

    class BulkStateTransistionResponseSchema: Codable {
        
        
        public var status: Bool?
        
        public var message: String?
        
        public var batchId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case message = "message"
            
            case batchId = "batch_id"
            
        }

        public init(batchId: String? = nil, message: String? = nil, status: Bool? = nil) {
            
            self.status = status
            
            self.message = message
            
            self.batchId = batchId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
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
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BulkStateTransistionResponseSchema
        Used By: Order
    */

    class BulkStateTransistionResponseSchema: Codable {
        
        
        public var status: Bool?
        
        public var message: String?
        
        public var batchId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case message = "message"
            
            case batchId = "batch_id"
            
        }

        public init(batchId: String? = nil, message: String? = nil, status: Bool? = nil) {
            
            self.status = status
            
            self.message = message
            
            self.batchId = batchId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
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
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
        }
        
    }
}



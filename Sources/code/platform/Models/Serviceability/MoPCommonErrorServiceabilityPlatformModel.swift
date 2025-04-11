

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: MoPCommonError
        Used By: Serviceability
    */

    class MoPCommonError: Codable {
        
        
        public var batchId: String?
        
        public var statusCode: Int?
        
        public var error: [ErrorResponseSchema]?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(batchId: String? = nil, error: [ErrorResponseSchema]? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            
            self.batchId = batchId
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.success = success
            
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
                
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode([ErrorResponseSchema].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: MoPCommonError
        Used By: Serviceability
    */

    class MoPCommonError: Codable {
        
        
        public var batchId: String?
        
        public var statusCode: Int?
        
        public var error: [ErrorResponseSchema]?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(batchId: String? = nil, error: [ErrorResponseSchema]? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            
            self.batchId = batchId
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.success = success
            
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
                
            
            
                do {
                    statusCode = try container.decode(Int.self, forKey: .statusCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode([ErrorResponseSchema].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



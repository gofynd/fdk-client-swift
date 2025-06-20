

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkErrorResult
        Used By: Serviceability
    */

    class BulkErrorResult: Codable {
        
        
        public var success: Bool
        
        public var statusCode: Int
        
        public var error: String?
        
        public var batchId: String?
        
        public var totalCount: Int?
        
        public var totalErrorCount: Int?
        
        public var errorFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case batchId = "batch_id"
            
            case totalCount = "total_count"
            
            case totalErrorCount = "total_error_count"
            
            case errorFileUrl = "error_file_url"
            
        }

        public init(batchId: String? = nil, error: String? = nil, errorFileUrl: String? = nil, statusCode: Int, success: Bool, totalCount: Int? = nil, totalErrorCount: Int? = nil) {
            
            self.success = success
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.batchId = batchId
            
            self.totalCount = totalCount
            
            self.totalErrorCount = totalErrorCount
            
            self.errorFileUrl = errorFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
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
                
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalErrorCount = try container.decode(Int.self, forKey: .totalErrorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(totalErrorCount, forKey: .totalErrorCount)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkErrorResult
        Used By: Serviceability
    */

    class BulkErrorResult: Codable {
        
        
        public var success: Bool
        
        public var statusCode: Int
        
        public var error: String?
        
        public var batchId: String?
        
        public var totalCount: Int?
        
        public var totalErrorCount: Int?
        
        public var errorFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case statusCode = "status_code"
            
            case error = "error"
            
            case batchId = "batch_id"
            
            case totalCount = "total_count"
            
            case totalErrorCount = "total_error_count"
            
            case errorFileUrl = "error_file_url"
            
        }

        public init(batchId: String? = nil, error: String? = nil, errorFileUrl: String? = nil, statusCode: Int, success: Bool, totalCount: Int? = nil, totalErrorCount: Int? = nil) {
            
            self.success = success
            
            self.statusCode = statusCode
            
            self.error = error
            
            self.batchId = batchId
            
            self.totalCount = totalCount
            
            self.totalErrorCount = totalErrorCount
            
            self.errorFileUrl = errorFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
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
                
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalErrorCount = try container.decode(Int.self, forKey: .totalErrorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(totalErrorCount, forKey: .totalErrorCount)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
        }
        
    }
}





import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkOperation
        Used By: User
    */

    class BulkOperation: Codable {
        
        
        public var success: Bool?
        
        public var total: Int?
        
        public var processed: Int?
        
        public var errorsCount: Int?
        
        public var errors: [BulkOperationError]?
        
        public var processingType: String?
        
        public var errorSummary: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case total = "total"
            
            case processed = "processed"
            
            case errorsCount = "errors_count"
            
            case errors = "errors"
            
            case processingType = "processing_type"
            
            case errorSummary = "error_summary"
            
        }

        public init(errors: [BulkOperationError]? = nil, errorsCount: Int? = nil, errorSummary: [String: Any]? = nil, processed: Int? = nil, processingType: String? = nil, success: Bool? = nil, total: Int? = nil) {
            
            self.success = success
            
            self.total = total
            
            self.processed = processed
            
            self.errorsCount = errorsCount
            
            self.errors = errors
            
            self.processingType = processingType
            
            self.errorSummary = errorSummary
            
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
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processed = try container.decode(Int.self, forKey: .processed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorsCount = try container.decode(Int.self, forKey: .errorsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errors = try container.decode([BulkOperationError].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processingType = try container.decode(String.self, forKey: .processingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorSummary = try container.decode([String: Any].self, forKey: .errorSummary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(processed, forKey: .processed)
            
            
            
            
            try? container.encodeIfPresent(errorsCount, forKey: .errorsCount)
            
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(processingType, forKey: .processingType)
            
            
            
            
            try? container.encodeIfPresent(errorSummary, forKey: .errorSummary)
            
            
        }
        
    }
}



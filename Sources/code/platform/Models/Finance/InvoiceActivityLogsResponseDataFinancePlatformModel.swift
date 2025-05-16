

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoiceActivityLogsResponseData
        Used By: Finance
    */

    class InvoiceActivityLogsResponseData: Codable {
        
        
        public var performedBy: String?
        
        public var status: String?
        
        public var reason: String?
        
        public var isResolved: Bool?
        
        public var retryAttempts: Double?
        
        public var maxRetryAttempts: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case performedBy = "performed_by"
            
            case status = "status"
            
            case reason = "reason"
            
            case isResolved = "is_resolved"
            
            case retryAttempts = "retry_attempts"
            
            case maxRetryAttempts = "max_retry_attempts"
            
        }

        public init(isResolved: Bool? = nil, maxRetryAttempts: Double? = nil, performedBy: String? = nil, reason: String? = nil, retryAttempts: Double? = nil, status: String? = nil) {
            
            self.performedBy = performedBy
            
            self.status = status
            
            self.reason = reason
            
            self.isResolved = isResolved
            
            self.retryAttempts = retryAttempts
            
            self.maxRetryAttempts = maxRetryAttempts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    performedBy = try container.decode(String.self, forKey: .performedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isResolved = try container.decode(Bool.self, forKey: .isResolved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    retryAttempts = try container.decode(Double.self, forKey: .retryAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxRetryAttempts = try container.decode(Double.self, forKey: .maxRetryAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(performedBy, forKey: .performedBy)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(isResolved, forKey: .isResolved)
            
            
            
            
            try? container.encodeIfPresent(retryAttempts, forKey: .retryAttempts)
            
            
            
            
            try? container.encodeIfPresent(maxRetryAttempts, forKey: .maxRetryAttempts)
            
            
        }
        
    }
}





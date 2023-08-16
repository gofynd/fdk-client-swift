

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: RetryStatusResponse
        Used By: Webhook
    */

    class RetryStatusResponse: Codable {
        
        
        public var totalEvent: Int?
        
        public var successCount: Int?
        
        public var failureCount: Int?
        
        public var status: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalEvent = "total_event"
            
            case successCount = "success_count"
            
            case failureCount = "failure_count"
            
            case status = "status"
            
        }

        public init(failureCount: Int? = nil, status: String? = nil, successCount: Int? = nil, totalEvent: Int? = nil) {
            
            self.totalEvent = totalEvent
            
            self.successCount = successCount
            
            self.failureCount = failureCount
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalEvent = try container.decode(Int.self, forKey: .totalEvent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successCount = try container.decode(Int.self, forKey: .successCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failureCount = try container.decode(Int.self, forKey: .failureCount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalEvent, forKey: .totalEvent)
            
            
            
            
            try? container.encodeIfPresent(successCount, forKey: .successCount)
            
            
            
            
            try? container.encodeIfPresent(failureCount, forKey: .failureCount)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}





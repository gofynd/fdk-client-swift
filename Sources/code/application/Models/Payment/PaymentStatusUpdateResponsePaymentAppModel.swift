

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentStatusUpdateResponse
        Used By: Payment
    */
    class PaymentStatusUpdateResponse: Codable {
        
        public var status: String
        
        public var success: Bool?
        
        public var retry: Bool?
        
        public var redirectUrl: String?
        
        public var aggregatorName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case success = "success"
            
            case retry = "retry"
            
            case redirectUrl = "redirect_url"
            
            case aggregatorName = "aggregator_name"
            
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool? = nil, status: String, success: Bool? = nil) {
            
            self.status = status
            
            self.success = success
            
            self.retry = retry
            
            self.redirectUrl = redirectUrl
            
            self.aggregatorName = aggregatorName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            status = try container.decode(String.self, forKey: .status)
            
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                retry = try container.decode(Bool.self, forKey: .retry)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(retry, forKey: .retry)
            
            
            
            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
        }
        
    }
}



import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriptionRenewRes
        Used By: Billing
    */

    class SubscriptionRenewRes: Codable {
        
        
        public var redirectUrl: String?
        
        public var transactionId: String?
        
        public var currentStatus: String?
        
        public var meta: SubscriptionRenewResMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirectUrl = "redirect_url"
            
            case transactionId = "transaction_id"
            
            case currentStatus = "current_status"
            
            case meta = "meta"
            
        }

        public init(currentStatus: String? = nil, meta: SubscriptionRenewResMeta? = nil, redirectUrl: String? = nil, transactionId: String? = nil) {
            
            self.redirectUrl = redirectUrl
            
            self.transactionId = transactionId
            
            self.currentStatus = currentStatus
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionId = try container.decode(String.self, forKey: .transactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(SubscriptionRenewResMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
            
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}





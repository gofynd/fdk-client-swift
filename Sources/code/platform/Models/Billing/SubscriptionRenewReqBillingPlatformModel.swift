

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriptionRenewReq
        Used By: Billing
    */

    class SubscriptionRenewReq: Codable {
        
        
        public var invoiceId: String?
        
        public var entityType: String?
        
        public var collectionType: String?
        
        public var callbackUrl: String?
        
        public var meta: RenewMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoiceId = "invoice_id"
            
            case entityType = "entity_type"
            
            case collectionType = "collection_type"
            
            case callbackUrl = "callback_url"
            
            case meta = "meta"
            
        }

        public init(callbackUrl: String? = nil, collectionType: String? = nil, entityType: String? = nil, invoiceId: String? = nil, meta: RenewMeta? = nil) {
            
            self.invoiceId = invoiceId
            
            self.entityType = entityType
            
            self.collectionType = collectionType
            
            self.callbackUrl = callbackUrl
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionType = try container.decode(String.self, forKey: .collectionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(RenewMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(collectionType, forKey: .collectionType)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}







import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscribePlan
        Used By: Billing
    */

    class SubscribePlan: Codable {
        
        
        public var entityType: String?
        
        public var collectionType: String?
        
        public var planId: String?
        
        public var callbackUrl: String?
        
        public var meta: Meta?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityType = "entity_type"
            
            case collectionType = "collection_type"
            
            case planId = "plan_id"
            
            case callbackUrl = "callback_url"
            
            case meta = "meta"
            
        }

        public init(callbackUrl: String? = nil, collectionType: String? = nil, entityType: String? = nil, meta: Meta? = nil, planId: String? = nil) {
            
            self.entityType = entityType
            
            self.collectionType = collectionType
            
            self.planId = planId
            
            self.callbackUrl = callbackUrl
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    planId = try container.decode(String.self, forKey: .planId)
                
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
                    meta = try container.decode(Meta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(collectionType, forKey: .collectionType)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}





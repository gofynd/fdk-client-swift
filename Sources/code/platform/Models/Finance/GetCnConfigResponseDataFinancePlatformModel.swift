

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetCnConfigResponseData
        Used By: Finance
    */

    class GetCnConfigResponseData: Codable {
        
        
        public var isCnAsRefundMethod: Bool?
        
        public var affiliateId: String?
        
        public var meta: [String: Any]?
        
        public var sellerId: Int?
        
        public var notificationEvents: CreditNoteConfigNotificationEvents?
        
        public var validity: Int?
        
        public var redemptionOrderingChannel: [String]?
        
        public var currencyType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isCnAsRefundMethod = "is_cn_as_refund_method"
            
            case affiliateId = "affiliate_id"
            
            case meta = "meta"
            
            case sellerId = "seller_id"
            
            case notificationEvents = "notification_events"
            
            case validity = "validity"
            
            case redemptionOrderingChannel = "redemption_ordering_channel"
            
            case currencyType = "currency_type"
            
        }

        public init(affiliateId: String? = nil, currencyType: String? = nil, isCnAsRefundMethod: Bool? = nil, meta: [String: Any]? = nil, notificationEvents: CreditNoteConfigNotificationEvents? = nil, redemptionOrderingChannel: [String]? = nil, sellerId: Int? = nil, validity: Int? = nil) {
            
            self.isCnAsRefundMethod = isCnAsRefundMethod
            
            self.affiliateId = affiliateId
            
            self.meta = meta
            
            self.sellerId = sellerId
            
            self.notificationEvents = notificationEvents
            
            self.validity = validity
            
            self.redemptionOrderingChannel = redemptionOrderingChannel
            
            self.currencyType = currencyType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isCnAsRefundMethod = try container.decode(Bool.self, forKey: .isCnAsRefundMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEvents = try container.decode(CreditNoteConfigNotificationEvents.self, forKey: .notificationEvents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validity = try container.decode(Int.self, forKey: .validity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    redemptionOrderingChannel = try container.decode([String].self, forKey: .redemptionOrderingChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyType = try container.decode(String.self, forKey: .currencyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isCnAsRefundMethod, forKey: .isCnAsRefundMethod)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(notificationEvents, forKey: .notificationEvents)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(redemptionOrderingChannel, forKey: .redemptionOrderingChannel)
            
            
            
            
            try? container.encodeIfPresent(currencyType, forKey: .currencyType)
            
            
        }
        
    }
}





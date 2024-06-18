

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: OneTimeChargeEntity
        Used By: Billing
    */

    class OneTimeChargeEntity: Codable {
        
        
        public var term: String?
        
        public var chargeType: String?
        
        public var cappedAmount: Double?
        
        public var billingDate: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Double?
        
        public var id: String?
        
        public var name: String?
        
        public var status: String?
        
        public var activatedOn: String?
        
        public var cancelledOn: String?
        
        public var metadata: [String: Any]?
        
        public var returnUrl: String?
        
        public var isTest: Bool?
        
        public var pricingType: String?
        
        public var subscriberId: String?
        
        public var entityType: String?
        
        public var entityId: String?
        
        public var meta: [String: Any]?
        
        public var price: EntityChargePrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case term = "term"
            
            case chargeType = "charge_type"
            
            case cappedAmount = "capped_amount"
            
            case billingDate = "billing_date"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
            case id = "_id"
            
            case name = "name"
            
            case status = "status"
            
            case activatedOn = "activated_on"
            
            case cancelledOn = "cancelled_on"
            
            case metadata = "metadata"
            
            case returnUrl = "return_url"
            
            case isTest = "is_test"
            
            case pricingType = "pricing_type"
            
            case subscriberId = "subscriber_id"
            
            case entityType = "entity_type"
            
            case entityId = "entity_id"
            
            case meta = "meta"
            
            case price = "price"
            
        }

        public init(activatedOn: String? = nil, billingDate: String? = nil, cancelledOn: String? = nil, cappedAmount: Double? = nil, chargeType: String? = nil, createdAt: String? = nil, entityId: String? = nil, entityType: String? = nil, isTest: Bool? = nil, meta: [String: Any]? = nil, metadata: [String: Any]? = nil, modifiedAt: String? = nil, name: String? = nil, price: EntityChargePrice? = nil, pricingType: String? = nil, returnUrl: String? = nil, status: String? = nil, subscriberId: String? = nil, term: String? = nil, id: String? = nil, v: Double? = nil) {
            
            self.term = term
            
            self.chargeType = chargeType
            
            self.cappedAmount = cappedAmount
            
            self.billingDate = billingDate
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
            self.id = id
            
            self.name = name
            
            self.status = status
            
            self.activatedOn = activatedOn
            
            self.cancelledOn = cancelledOn
            
            self.metadata = metadata
            
            self.returnUrl = returnUrl
            
            self.isTest = isTest
            
            self.pricingType = pricingType
            
            self.subscriberId = subscriberId
            
            self.entityType = entityType
            
            self.entityId = entityId
            
            self.meta = meta
            
            self.price = price
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    term = try container.decode(String.self, forKey: .term)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    chargeType = try container.decode(String.self, forKey: .chargeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cappedAmount = try container.decode(Double.self, forKey: .cappedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingDate = try container.decode(String.self, forKey: .billingDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    activatedOn = try container.decode(String.self, forKey: .activatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelledOn = try container.decode(String.self, forKey: .cancelledOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    metadata = try container.decode([String: Any].self, forKey: .metadata)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnUrl = try container.decode(String.self, forKey: .returnUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isTest = try container.decode(Bool.self, forKey: .isTest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pricingType = try container.decode(String.self, forKey: .pricingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriberId = try container.decode(String.self, forKey: .subscriberId)
                
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
                    entityId = try container.decode(String.self, forKey: .entityId)
                
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
                    price = try container.decode(EntityChargePrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(term, forKey: .term)
            
            
            
            
            try? container.encodeIfPresent(chargeType, forKey: .chargeType)
            
            
            
            
            try? container.encodeIfPresent(cappedAmount, forKey: .cappedAmount)
            
            
            
            
            try? container.encodeIfPresent(billingDate, forKey: .billingDate)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(activatedOn, forKey: .activatedOn)
            
            
            
            
            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
            
            
            
            
            try? container.encodeIfPresent(metadata, forKey: .metadata)
            
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(pricingType, forKey: .pricingType)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
        }
        
    }
}







import Foundation


public extension PlatformClient.Billing {
    /*
        Model: EntityChargeDetails
        Used By: Billing
    */

    class EntityChargeDetails: Codable {
        
        
        public var id: String?
        
        public var subscriptionId: String?
        
        public var subscriberId: String?
        
        public var entityType: String?
        
        public var entityId: String?
        
        public var name: String?
        
        public var term: String?
        
        public var chargeType: String?
        
        public var pricingType: String?
        
        public var price: EntityChargePrice?
        
        public var recurring: ChargeRecurring?
        
        public var status: String?
        
        public var cappedAmount: Double?
        
        public var activatedOn: String?
        
        public var cancelledOn: String?
        
        public var billingDate: String?
        
        public var currentPeriod: SubscriptionTrialPeriod?
        
        public var modifiedAt: String?
        
        public var createdAt: String?
        
        public var isTest: Bool?
        
        public var companyId: String?
        
        public var meta: [String: Any]?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case subscriptionId = "subscription_id"
            
            case subscriberId = "subscriber_id"
            
            case entityType = "entity_type"
            
            case entityId = "entity_id"
            
            case name = "name"
            
            case term = "term"
            
            case chargeType = "charge_type"
            
            case pricingType = "pricing_type"
            
            case price = "price"
            
            case recurring = "recurring"
            
            case status = "status"
            
            case cappedAmount = "capped_amount"
            
            case activatedOn = "activated_on"
            
            case cancelledOn = "cancelled_on"
            
            case billingDate = "billing_date"
            
            case currentPeriod = "current_period"
            
            case modifiedAt = "modified_at"
            
            case createdAt = "created_at"
            
            case isTest = "is_test"
            
            case companyId = "company_id"
            
            case meta = "meta"
            
            case v = "__v"
            
        }

        public init(activatedOn: String? = nil, billingDate: String? = nil, cancelledOn: String? = nil, cappedAmount: Double? = nil, chargeType: String? = nil, companyId: String? = nil, createdAt: String? = nil, currentPeriod: SubscriptionTrialPeriod? = nil, entityId: String? = nil, entityType: String? = nil, isTest: Bool? = nil, meta: [String: Any]? = nil, modifiedAt: String? = nil, name: String? = nil, price: EntityChargePrice? = nil, pricingType: String? = nil, recurring: ChargeRecurring? = nil, status: String? = nil, subscriberId: String? = nil, subscriptionId: String? = nil, term: String? = nil, id: String? = nil, v: Double? = nil) {
            
            self.id = id
            
            self.subscriptionId = subscriptionId
            
            self.subscriberId = subscriberId
            
            self.entityType = entityType
            
            self.entityId = entityId
            
            self.name = name
            
            self.term = term
            
            self.chargeType = chargeType
            
            self.pricingType = pricingType
            
            self.price = price
            
            self.recurring = recurring
            
            self.status = status
            
            self.cappedAmount = cappedAmount
            
            self.activatedOn = activatedOn
            
            self.cancelledOn = cancelledOn
            
            self.billingDate = billingDate
            
            self.currentPeriod = currentPeriod
            
            self.modifiedAt = modifiedAt
            
            self.createdAt = createdAt
            
            self.isTest = isTest
            
            self.companyId = companyId
            
            self.meta = meta
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriptionId = try container.decode(String.self, forKey: .subscriptionId)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    pricingType = try container.decode(String.self, forKey: .pricingType)
                
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
                
            
            
                do {
                    recurring = try container.decode(ChargeRecurring.self, forKey: .recurring)
                
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
                    cappedAmount = try container.decode(Double.self, forKey: .cappedAmount)
                
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
                    billingDate = try container.decode(String.self, forKey: .billingDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentPeriod = try container.decode(SubscriptionTrialPeriod.self, forKey: .currentPeriod)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
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
                    companyId = try container.decode(String.self, forKey: .companyId)
                
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
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subscriptionId, forKey: .subscriptionId)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(term, forKey: .term)
            
            
            
            
            try? container.encodeIfPresent(chargeType, forKey: .chargeType)
            
            
            
            
            try? container.encodeIfPresent(pricingType, forKey: .pricingType)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(recurring, forKey: .recurring)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(cappedAmount, forKey: .cappedAmount)
            
            
            
            
            try? container.encodeIfPresent(activatedOn, forKey: .activatedOn)
            
            
            
            
            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
            
            
            
            
            try? container.encodeIfPresent(billingDate, forKey: .billingDate)
            
            
            
            
            try? container.encodeIfPresent(currentPeriod, forKey: .currentPeriod)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}





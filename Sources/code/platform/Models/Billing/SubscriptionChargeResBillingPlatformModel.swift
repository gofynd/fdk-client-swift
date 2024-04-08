

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriptionChargeRes
        Used By: Billing
    */

    class SubscriptionChargeRes: Codable {
        
        
        public var id: String?
        
        public var productSuitId: String?
        
        public var entityId: String?
        
        public var entityType: String?
        
        public var name: String?
        
        public var status: String?
        
        public var trialDays: Double?
        
        public var activatedOn: String?
        
        public var cancelledOn: String?
        
        public var isTest: Bool?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var companyId: String?
        
        public var lineItems: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case productSuitId = "product_suit_id"
            
            case entityId = "entity_id"
            
            case entityType = "entity_type"
            
            case name = "name"
            
            case status = "status"
            
            case trialDays = "trial_days"
            
            case activatedOn = "activated_on"
            
            case cancelledOn = "cancelled_on"
            
            case isTest = "is_test"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case companyId = "company_id"
            
            case lineItems = "line_items"
            
        }

        public init(activatedOn: String? = nil, cancelledOn: String? = nil, companyId: String? = nil, createdAt: String? = nil, entityId: String? = nil, entityType: String? = nil, isTest: Bool? = nil, lineItems: [[String: Any]]? = nil, modifiedAt: String? = nil, name: String? = nil, productSuitId: String? = nil, status: String? = nil, trialDays: Double? = nil, id: String? = nil) {
            
            self.id = id
            
            self.productSuitId = productSuitId
            
            self.entityId = entityId
            
            self.entityType = entityType
            
            self.name = name
            
            self.status = status
            
            self.trialDays = trialDays
            
            self.activatedOn = activatedOn
            
            self.cancelledOn = cancelledOn
            
            self.isTest = isTest
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.companyId = companyId
            
            self.lineItems = lineItems
            
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
                    productSuitId = try container.decode(String.self, forKey: .productSuitId)
                
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
                    entityType = try container.decode(String.self, forKey: .entityType)
                
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
                    trialDays = try container.decode(Double.self, forKey: .trialDays)
                
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
                    isTest = try container.decode(Bool.self, forKey: .isTest)
                
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
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineItems = try container.decode([[String: Any]].self, forKey: .lineItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(productSuitId, forKey: .productSuitId)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(trialDays, forKey: .trialDays)
            
            
            
            
            try? container.encodeIfPresent(activatedOn, forKey: .activatedOn)
            
            
            
            
            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
        }
        
    }
}





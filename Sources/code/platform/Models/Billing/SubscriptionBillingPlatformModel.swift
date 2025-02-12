

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Subscription
        Used By: Billing
    */

    class Subscription: Codable {
        
        
        public var meta: [String: Any]?
        
        public var currentPeriod: SubscriptionCurrentPeriod?
        
        public var pauseCollection: SubscriptionPauseCollection?
        
        public var trial: SubscriptionTrial?
        
        public var invoiceSettings: SubscriptionInvoiceSettings?
        
        public var isActive: Bool?
        
        public var cancelAtPeriodEnd: Bool?
        
        public var id: String?
        
        public var subscriberId: String?
        
        public var planId: String?
        
        public var productSuiteId: String?
        
        public var isEligibleForPlanChange: Bool?
        
        public var planData: Plan?
        
        public var currentStatus: String?
        
        public var collectionMethod: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var latestInvoice: String?
        
        public var channelType: String?
        
        public var freezed: Bool?
        
        public var cancelAt: String?
        
        public var canceledAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case currentPeriod = "current_period"
            
            case pauseCollection = "pause_collection"
            
            case trial = "trial"
            
            case invoiceSettings = "invoice_settings"
            
            case isActive = "is_active"
            
            case cancelAtPeriodEnd = "cancel_at_period_end"
            
            case id = "_id"
            
            case subscriberId = "subscriber_id"
            
            case planId = "plan_id"
            
            case productSuiteId = "product_suite_id"
            
            case isEligibleForPlanChange = "is_eligible_for_plan_change"
            
            case planData = "plan_data"
            
            case currentStatus = "current_status"
            
            case collectionMethod = "collection_method"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case latestInvoice = "latest_invoice"
            
            case channelType = "channel_type"
            
            case freezed = "freezed"
            
            case cancelAt = "cancel_at"
            
            case canceledAt = "canceled_at"
            
        }

        public init(canceledAt: String? = nil, cancelAt: String? = nil, cancelAtPeriodEnd: Bool? = nil, channelType: String? = nil, collectionMethod: String? = nil, createdAt: String? = nil, currentPeriod: SubscriptionCurrentPeriod? = nil, currentStatus: String? = nil, freezed: Bool? = nil, invoiceSettings: SubscriptionInvoiceSettings? = nil, isActive: Bool? = nil, isEligibleForPlanChange: Bool? = nil, latestInvoice: String? = nil, meta: [String: Any]? = nil, modifiedAt: String? = nil, pauseCollection: SubscriptionPauseCollection? = nil, planData: Plan? = nil, planId: String? = nil, productSuiteId: String? = nil, subscriberId: String? = nil, trial: SubscriptionTrial? = nil, id: String? = nil) {
            
            self.meta = meta
            
            self.currentPeriod = currentPeriod
            
            self.pauseCollection = pauseCollection
            
            self.trial = trial
            
            self.invoiceSettings = invoiceSettings
            
            self.isActive = isActive
            
            self.cancelAtPeriodEnd = cancelAtPeriodEnd
            
            self.id = id
            
            self.subscriberId = subscriberId
            
            self.planId = planId
            
            self.productSuiteId = productSuiteId
            
            self.isEligibleForPlanChange = isEligibleForPlanChange
            
            self.planData = planData
            
            self.currentStatus = currentStatus
            
            self.collectionMethod = collectionMethod
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.latestInvoice = latestInvoice
            
            self.channelType = channelType
            
            self.freezed = freezed
            
            self.cancelAt = cancelAt
            
            self.canceledAt = canceledAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentPeriod = try container.decode(SubscriptionCurrentPeriod.self, forKey: .currentPeriod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pauseCollection = try container.decode(SubscriptionPauseCollection.self, forKey: .pauseCollection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trial = try container.decode(SubscriptionTrial.self, forKey: .trial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceSettings = try container.decode(SubscriptionInvoiceSettings.self, forKey: .invoiceSettings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelAtPeriodEnd = try container.decode(Bool.self, forKey: .cancelAtPeriodEnd)
                
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
                    subscriberId = try container.decode(String.self, forKey: .subscriberId)
                
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
                    productSuiteId = try container.decode(String.self, forKey: .productSuiteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isEligibleForPlanChange = try container.decode(Bool.self, forKey: .isEligibleForPlanChange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    planData = try container.decode(Plan.self, forKey: .planData)
                
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
                    collectionMethod = try container.decode(String.self, forKey: .collectionMethod)
                
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
                    latestInvoice = try container.decode(String.self, forKey: .latestInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelType = try container.decode(String.self, forKey: .channelType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    freezed = try container.decode(Bool.self, forKey: .freezed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelAt = try container.decode(String.self, forKey: .cancelAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canceledAt = try container.decode(String.self, forKey: .canceledAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(currentPeriod, forKey: .currentPeriod)
            
            
            
            
            try? container.encodeIfPresent(pauseCollection, forKey: .pauseCollection)
            
            
            
            
            try? container.encodeIfPresent(trial, forKey: .trial)
            
            
            
            
            try? container.encodeIfPresent(invoiceSettings, forKey: .invoiceSettings)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cancelAtPeriodEnd, forKey: .cancelAtPeriodEnd)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(productSuiteId, forKey: .productSuiteId)
            
            
            
            
            try? container.encodeIfPresent(isEligibleForPlanChange, forKey: .isEligibleForPlanChange)
            
            
            
            
            try? container.encodeIfPresent(planData, forKey: .planData)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(collectionMethod, forKey: .collectionMethod)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(latestInvoice, forKey: .latestInvoice)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(freezed, forKey: .freezed)
            
            
            
            
            try? container.encodeIfPresent(cancelAt, forKey: .cancelAt)
            
            
            
            
            try? container.encodeIfPresent(canceledAt, forKey: .canceledAt)
            
            
        }
        
    }
}







import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Plan
        Used By: Billing
    */

    class Plan: Codable {
        
        
        public var feeComponents: [[String: Any]]?
        
        public var recurring: PlanRecurring?
        
        public var isTrialPlan: Bool?
        
        public var planGroup: String?
        
        public var tagLines: [String]?
        
        public var currency: String?
        
        public var isActive: Bool?
        
        public var isVisible: Bool?
        
        public var trialPeriod: Double?
        
        public var addons: [String]?
        
        public var tags: [String]?
        
        public var type: String?
        
        public var country: String?
        
        public var id: String?
        
        public var name: String?
        
        public var description: String?
        
        public var amount: Double?
        
        public var productSuiteId: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var taxation: Taxation?
        
        public var oneTimeFees: OneTimeFees?
        
        public var creditLine: CreditLine?
        
        public var currentStatus: String?
        
        public var channelType: String?
        
        public var companyIds: [[String: Any]]?
        
        public var platform: String?
        
        public var activatedOn: String?
        
        public var meta: PlanMeta?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case feeComponents = "fee_components"
            
            case recurring = "recurring"
            
            case isTrialPlan = "is_trial_plan"
            
            case planGroup = "plan_group"
            
            case tagLines = "tag_lines"
            
            case currency = "currency"
            
            case isActive = "is_active"
            
            case isVisible = "is_visible"
            
            case trialPeriod = "trial_period"
            
            case addons = "addons"
            
            case tags = "tags"
            
            case type = "type"
            
            case country = "country"
            
            case id = "_id"
            
            case name = "name"
            
            case description = "description"
            
            case amount = "amount"
            
            case productSuiteId = "product_suite_id"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case taxation = "taxation"
            
            case oneTimeFees = "one_time_fees"
            
            case creditLine = "credit_line"
            
            case currentStatus = "current_status"
            
            case channelType = "channel_type"
            
            case companyIds = "company_ids"
            
            case platform = "platform"
            
            case activatedOn = "activated_on"
            
            case meta = "meta"
            
            case createdBy = "created_by"
            
        }

        public init(activatedOn: String? = nil, addons: [String]? = nil, amount: Double? = nil, channelType: String? = nil, companyIds: [[String: Any]]? = nil, country: String? = nil, createdAt: String? = nil, createdBy: String? = nil, creditLine: CreditLine? = nil, currency: String? = nil, currentStatus: String? = nil, description: String? = nil, feeComponents: [[String: Any]]? = nil, isActive: Bool? = nil, isTrialPlan: Bool? = nil, isVisible: Bool? = nil, meta: PlanMeta? = nil, modifiedAt: String? = nil, name: String? = nil, oneTimeFees: OneTimeFees? = nil, planGroup: String? = nil, platform: String? = nil, productSuiteId: String? = nil, recurring: PlanRecurring? = nil, tags: [String]? = nil, tagLines: [String]? = nil, taxation: Taxation? = nil, trialPeriod: Double? = nil, type: String? = nil, id: String? = nil) {
            
            self.feeComponents = feeComponents
            
            self.recurring = recurring
            
            self.isTrialPlan = isTrialPlan
            
            self.planGroup = planGroup
            
            self.tagLines = tagLines
            
            self.currency = currency
            
            self.isActive = isActive
            
            self.isVisible = isVisible
            
            self.trialPeriod = trialPeriod
            
            self.addons = addons
            
            self.tags = tags
            
            self.type = type
            
            self.country = country
            
            self.id = id
            
            self.name = name
            
            self.description = description
            
            self.amount = amount
            
            self.productSuiteId = productSuiteId
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.taxation = taxation
            
            self.oneTimeFees = oneTimeFees
            
            self.creditLine = creditLine
            
            self.currentStatus = currentStatus
            
            self.channelType = channelType
            
            self.companyIds = companyIds
            
            self.platform = platform
            
            self.activatedOn = activatedOn
            
            self.meta = meta
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    feeComponents = try container.decode([[String: Any]].self, forKey: .feeComponents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    recurring = try container.decode(PlanRecurring.self, forKey: .recurring)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isTrialPlan = try container.decode(Bool.self, forKey: .isTrialPlan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    planGroup = try container.decode(String.self, forKey: .planGroup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tagLines = try container.decode([String].self, forKey: .tagLines)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
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
                    isVisible = try container.decode(Bool.self, forKey: .isVisible)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trialPeriod = try container.decode(Double.self, forKey: .trialPeriod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addons = try container.decode([String].self, forKey: .addons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
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
                    taxation = try container.decode(Taxation.self, forKey: .taxation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    oneTimeFees = try container.decode(OneTimeFees.self, forKey: .oneTimeFees)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditLine = try container.decode(CreditLine.self, forKey: .creditLine)
                
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
                    channelType = try container.decode(String.self, forKey: .channelType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyIds = try container.decode([[String: Any]].self, forKey: .companyIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
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
                    meta = try container.decode(PlanMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(feeComponents, forKey: .feeComponents)
            
            
            
            
            try? container.encodeIfPresent(recurring, forKey: .recurring)
            
            
            
            
            try? container.encodeIfPresent(isTrialPlan, forKey: .isTrialPlan)
            
            
            
            
            try? container.encodeIfPresent(planGroup, forKey: .planGroup)
            
            
            
            
            try? container.encodeIfPresent(tagLines, forKey: .tagLines)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isVisible, forKey: .isVisible)
            
            
            
            
            try? container.encodeIfPresent(trialPeriod, forKey: .trialPeriod)
            
            
            
            
            try? container.encodeIfPresent(addons, forKey: .addons)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(productSuiteId, forKey: .productSuiteId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(taxation, forKey: .taxation)
            
            
            
            
            try? container.encodeIfPresent(oneTimeFees, forKey: .oneTimeFees)
            
            
            
            
            try? container.encodeIfPresent(creditLine, forKey: .creditLine)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            
            try? container.encodeIfPresent(activatedOn, forKey: .activatedOn)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}





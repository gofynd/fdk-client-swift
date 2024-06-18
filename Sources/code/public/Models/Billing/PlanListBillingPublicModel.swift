

import Foundation
public extension PublicClient.Billing {
    /*
        Model: PlanList
        Used By: Billing
    */

    class PlanList: Codable {
        
        
        public var approvedBy: String?
        
        public var updatedBy: String?
        
        public var recurring: Recurring?
        
        public var taxation: Taxation?
        
        public var oneTimeFees: OneTimeFees?
        
        public var creditLine: CreditLine?
        
        public var id: String?
        
        public var productSuiteId: String?
        
        public var isTrialPlan: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var planGroup: String?
        
        public var tagLines: [String]?
        
        public var currency: String?
        
        public var amount: Int?
        
        public var isActive: Bool?
        
        public var isVisible: Bool?
        
        public var trialPeriod: Int?
        
        public var addons: [[String: Any]]?
        
        public var tags: [String]?
        
        public var type: String?
        
        public var meta: [String: Any]?
        
        public var country: String?
        
        public var companyIds: [String]?
        
        public var createdBy: String?
        
        public var currentStatus: String?
        
        public var channelType: String?
        
        public var platform: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case approvedBy = "approved_by"
            
            case updatedBy = "updated_by"
            
            case recurring = "recurring"
            
            case taxation = "taxation"
            
            case oneTimeFees = "one_time_fees"
            
            case creditLine = "credit_line"
            
            case id = "_id"
            
            case productSuiteId = "product_suite_id"
            
            case isTrialPlan = "is_trial_plan"
            
            case name = "name"
            
            case description = "description"
            
            case planGroup = "plan_group"
            
            case tagLines = "tag_lines"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case isActive = "is_active"
            
            case isVisible = "is_visible"
            
            case trialPeriod = "trial_period"
            
            case addons = "addons"
            
            case tags = "tags"
            
            case type = "type"
            
            case meta = "meta"
            
            case country = "country"
            
            case companyIds = "company_ids"
            
            case createdBy = "created_by"
            
            case currentStatus = "current_status"
            
            case channelType = "channel_type"
            
            case platform = "platform"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
        }

        public init(addons: [[String: Any]]? = nil, amount: Int? = nil, approvedBy: String? = nil, channelType: String? = nil, companyIds: [String]? = nil, country: String? = nil, createdAt: String? = nil, createdBy: String? = nil, creditLine: CreditLine? = nil, currency: String? = nil, currentStatus: String? = nil, description: String? = nil, isActive: Bool? = nil, isTrialPlan: Bool? = nil, isVisible: Bool? = nil, meta: [String: Any]? = nil, modifiedAt: String? = nil, name: String? = nil, oneTimeFees: OneTimeFees? = nil, planGroup: String? = nil, platform: String? = nil, productSuiteId: String? = nil, recurring: Recurring? = nil, tags: [String]? = nil, tagLines: [String]? = nil, taxation: Taxation? = nil, trialPeriod: Int? = nil, type: String? = nil, updatedBy: String? = nil, id: String? = nil) {
            
            self.approvedBy = approvedBy
            
            self.updatedBy = updatedBy
            
            self.recurring = recurring
            
            self.taxation = taxation
            
            self.oneTimeFees = oneTimeFees
            
            self.creditLine = creditLine
            
            self.id = id
            
            self.productSuiteId = productSuiteId
            
            self.isTrialPlan = isTrialPlan
            
            self.name = name
            
            self.description = description
            
            self.planGroup = planGroup
            
            self.tagLines = tagLines
            
            self.currency = currency
            
            self.amount = amount
            
            self.isActive = isActive
            
            self.isVisible = isVisible
            
            self.trialPeriod = trialPeriod
            
            self.addons = addons
            
            self.tags = tags
            
            self.type = type
            
            self.meta = meta
            
            self.country = country
            
            self.companyIds = companyIds
            
            self.createdBy = createdBy
            
            self.currentStatus = currentStatus
            
            self.channelType = channelType
            
            self.platform = platform
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    approvedBy = try container.decode(String.self, forKey: .approvedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    recurring = try container.decode(Recurring.self, forKey: .recurring)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                    isTrialPlan = try container.decode(Bool.self, forKey: .isTrialPlan)
                
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
                    amount = try container.decode(Int.self, forKey: .amount)
                
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
                    trialPeriod = try container.decode(Int.self, forKey: .trialPeriod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addons = try container.decode([[String: Any]].self, forKey: .addons)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    companyIds = try container.decode([String].self, forKey: .companyIds)
                
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
                    platform = try container.decode(String.self, forKey: .platform)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(approvedBy, forKey: .approvedBy)
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            try? container.encodeIfPresent(recurring, forKey: .recurring)
            
            
            
            try? container.encodeIfPresent(taxation, forKey: .taxation)
            
            
            
            try? container.encodeIfPresent(oneTimeFees, forKey: .oneTimeFees)
            
            
            
            try? container.encodeIfPresent(creditLine, forKey: .creditLine)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(productSuiteId, forKey: .productSuiteId)
            
            
            
            try? container.encodeIfPresent(isTrialPlan, forKey: .isTrialPlan)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(planGroup, forKey: .planGroup)
            
            
            
            try? container.encodeIfPresent(tagLines, forKey: .tagLines)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(isVisible, forKey: .isVisible)
            
            
            
            try? container.encodeIfPresent(trialPeriod, forKey: .trialPeriod)
            
            
            
            try? container.encodeIfPresent(addons, forKey: .addons)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(companyIds, forKey: .companyIds)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
        }
        
    }
}
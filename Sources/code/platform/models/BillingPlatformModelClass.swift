import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: UnauthenticatedUser
        Used By: Billing
    */

    class UnauthenticatedUser: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> UnauthenticatedUser {
            let dict = self.dictionary!
            let copy = UnauthenticatedUser(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: UnauthenticatedApplication
        Used By: Billing
    */

    class UnauthenticatedApplication: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> UnauthenticatedApplication {
            let dict = self.dictionary!
            let copy = UnauthenticatedApplication(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: BadRequest
        Used By: Billing
    */

    class BadRequest: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> BadRequest {
            let dict = self.dictionary!
            let copy = BadRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: ResourceNotFound
        Used By: Billing
    */

    class ResourceNotFound: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> ResourceNotFound {
            let dict = self.dictionary!
            let copy = ResourceNotFound(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: InternalServerError
        Used By: Billing
    */

    class InternalServerError: Codable {
        
        
        public var message: String?
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case code = "code"
            
        }

        public init(code: String?, message: String?) {
            
            self.message = message
            
            self.code = code
            
        }

        public func duplicate() -> InternalServerError {
            let dict = self.dictionary!
            let copy = InternalServerError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
    
    /*
        Model: CheckValidityResponse
        Used By: Billing
    */

    class CheckValidityResponse: Codable {
        
        
        public var isValid: Bool?
        
        public var discountAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case isValid = "is_valid"
            
            case discountAmount = "discount_amount"
            
        }

        public init(discountAmount: Double?, isValid: Bool?) {
            
            self.isValid = isValid
            
            self.discountAmount = discountAmount
            
        }

        public func duplicate() -> CheckValidityResponse {
            let dict = self.dictionary!
            let copy = CheckValidityResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountAmount = try container.decode(Double.self, forKey: .discountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)
            
            
        }
        
    }
    
    /*
        Model: PlanRecurring
        Used By: Billing
    */

    class PlanRecurring: Codable {
        
        
        public var interval: String?
        
        public var intervalCount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case interval = "interval"
            
            case intervalCount = "interval_count"
            
        }

        public init(interval: String?, intervalCount: Double?) {
            
            self.interval = interval
            
            self.intervalCount = intervalCount
            
        }

        public func duplicate() -> PlanRecurring {
            let dict = self.dictionary!
            let copy = PlanRecurring(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    interval = try container.decode(String.self, forKey: .interval)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intervalCount = try container.decode(Double.self, forKey: .intervalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            
            
            
            try? container.encodeIfPresent(intervalCount, forKey: .intervalCount)
            
            
        }
        
    }
    
    /*
        Model: Plan
        Used By: Billing
    */

    class Plan: Codable {
        
        
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
        

        public enum CodingKeys: String, CodingKey {
            
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
            
        }

        public init(addons: [String]?, amount: Double?, country: String?, createdAt: String?, currency: String?, description: String?, isActive: Bool?, isTrialPlan: Bool?, isVisible: Bool?, modifiedAt: String?, name: String?, planGroup: String?, productSuiteId: String?, recurring: PlanRecurring?, tags: [String]?, tagLines: [String]?, trialPeriod: Double?, type: String?, id: String?) {
            
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
            
        }

        public func duplicate() -> Plan {
            let dict = self.dictionary!
            let copy = Plan(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
            
            
        }
        
    }
    
    /*
        Model: DetailedPlanComponents
        Used By: Billing
    */

    class DetailedPlanComponents: Codable {
        
        
        public var name: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var group: String?
        
        public var icon: String?
        
        public var links: [String: Any]?
        
        public var enabled: Bool?
        
        public var displayText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case description = "description"
            
            case group = "group"
            
            case icon = "icon"
            
            case links = "links"
            
            case enabled = "enabled"
            
            case displayText = "display_text"
            
        }

        public init(description: String?, displayText: String?, enabled: Bool?, group: String?, icon: String?, links: [String: Any]?, name: String?, slug: String?) {
            
            self.name = name
            
            self.slug = slug
            
            self.description = description
            
            self.group = group
            
            self.icon = icon
            
            self.links = links
            
            self.enabled = enabled
            
            self.displayText = displayText
            
        }

        public func duplicate() -> DetailedPlanComponents {
            let dict = self.dictionary!
            let copy = DetailedPlanComponents(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                    group = try container.decode(String.self, forKey: .group)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    links = try container.decode([String: Any].self, forKey: .links)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayText = try container.decode(String.self, forKey: .displayText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(group, forKey: .group)
            
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            
            try? container.encodeIfPresent(links, forKey: .links)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
        }
        
    }
    
    /*
        Model: DetailedPlan
        Used By: Billing
    */

    class DetailedPlan: Codable {
        
        
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
        
        public var components: [DetailedPlanComponents]?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
            case components = "components"
            
        }

        public init(addons: [String]?, amount: Double?, components: [DetailedPlanComponents]?, country: String?, createdAt: String?, currency: String?, description: String?, isActive: Bool?, isTrialPlan: Bool?, isVisible: Bool?, modifiedAt: String?, name: String?, planGroup: String?, productSuiteId: String?, recurring: PlanRecurring?, tags: [String]?, tagLines: [String]?, trialPeriod: Double?, type: String?, id: String?) {
            
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
            
            self.components = components
            
        }

        public func duplicate() -> DetailedPlan {
            let dict = self.dictionary!
            let copy = DetailedPlan(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    components = try container.decode([DetailedPlanComponents].self, forKey: .components)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionTrialPeriod
        Used By: Billing
    */

    class SubscriptionTrialPeriod: Codable {
        
        
        public var startDate: String?
        
        public var endDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
        }

        public init(endDate: String?, startDate: String?) {
            
            self.startDate = startDate
            
            self.endDate = endDate
            
        }

        public func duplicate() -> SubscriptionTrialPeriod {
            let dict = self.dictionary!
            let copy = SubscriptionTrialPeriod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
        }
        
    }
    
    /*
        Model: EntityChargePrice
        Used By: Billing
    */

    class EntityChargePrice: Codable {
        
        
        public var amount: Double
        
        public var currencyCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case currencyCode = "currency_code"
            
        }

        public init(amount: Double, currencyCode: String) {
            
            self.amount = amount
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> EntityChargePrice {
            let dict = self.dictionary!
            let copy = EntityChargePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: EntityChargeRecurring
        Used By: Billing
    */

    class EntityChargeRecurring: Codable {
        
        
        public var interval: String
        

        public enum CodingKeys: String, CodingKey {
            
            case interval = "interval"
            
        }

        public init(interval: String) {
            
            self.interval = interval
            
        }

        public func duplicate() -> EntityChargeRecurring {
            let dict = self.dictionary!
            let copy = EntityChargeRecurring(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                interval = try container.decode(String.self, forKey: .interval)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            
        }
        
    }
    
    /*
        Model: ChargeLineItem
        Used By: Billing
    */

    class ChargeLineItem: Codable {
        
        
        public var name: String
        
        public var term: String
        
        public var pricingType: String
        
        public var price: EntityChargePrice
        
        public var recurring: EntityChargeRecurring?
        
        public var cappedAmount: Double?
        
        public var trialDays: Int?
        
        public var isTest: Bool?
        
        public var metadata: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case term = "term"
            
            case pricingType = "pricing_type"
            
            case price = "price"
            
            case recurring = "recurring"
            
            case cappedAmount = "capped_amount"
            
            case trialDays = "trial_days"
            
            case isTest = "is_test"
            
            case metadata = "metadata"
            
        }

        public init(cappedAmount: Double?, isTest: Bool?, metadata: [String: Any]?, name: String, price: EntityChargePrice, pricingType: String, recurring: EntityChargeRecurring?, term: String, trialDays: Int?) {
            
            self.name = name
            
            self.term = term
            
            self.pricingType = pricingType
            
            self.price = price
            
            self.recurring = recurring
            
            self.cappedAmount = cappedAmount
            
            self.trialDays = trialDays
            
            self.isTest = isTest
            
            self.metadata = metadata
            
        }

        public func duplicate() -> ChargeLineItem {
            let dict = self.dictionary!
            let copy = ChargeLineItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                term = try container.decode(String.self, forKey: .term)
                
            
            
            
                pricingType = try container.decode(String.self, forKey: .pricingType)
                
            
            
            
                price = try container.decode(EntityChargePrice.self, forKey: .price)
                
            
            
            
                do {
                    recurring = try container.decode(EntityChargeRecurring.self, forKey: .recurring)
                
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
                    trialDays = try container.decode(Int.self, forKey: .trialDays)
                
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
                    metadata = try container.decode([String: Any].self, forKey: .metadata)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(term, forKey: .term)
            
            
            
            
            try? container.encodeIfPresent(pricingType, forKey: .pricingType)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(recurring, forKey: .recurring)
            
            
            
            
            try? container.encodeIfPresent(cappedAmount, forKey: .cappedAmount)
            
            
            
            
            try? container.encodeIfPresent(trialDays, forKey: .trialDays)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(metadata, forKey: .metadata)
            
            
        }
        
    }
    
    /*
        Model: CreateSubscriptionCharge
        Used By: Billing
    */

    class CreateSubscriptionCharge: Codable {
        
        
        public var name: String
        
        public var trialDays: Int?
        
        public var lineItems: [ChargeLineItem]
        
        public var isTest: Bool?
        
        public var returnUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case trialDays = "trial_days"
            
            case lineItems = "line_items"
            
            case isTest = "is_test"
            
            case returnUrl = "return_url"
            
        }

        public init(isTest: Bool?, lineItems: [ChargeLineItem], name: String, returnUrl: String, trialDays: Int?) {
            
            self.name = name
            
            self.trialDays = trialDays
            
            self.lineItems = lineItems
            
            self.isTest = isTest
            
            self.returnUrl = returnUrl
            
        }

        public func duplicate() -> CreateSubscriptionCharge {
            let dict = self.dictionary!
            let copy = CreateSubscriptionCharge(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    trialDays = try container.decode(Int.self, forKey: .trialDays)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                lineItems = try container.decode([ChargeLineItem].self, forKey: .lineItems)
                
            
            
            
                do {
                    isTest = try container.decode(Bool.self, forKey: .isTest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                returnUrl = try container.decode(String.self, forKey: .returnUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(trialDays, forKey: .trialDays)
            
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
        }
        
    }
    
    /*
        Model: CurrentPeriod
        Used By: Billing
    */

    class CurrentPeriod: Codable {
        
        
        public var startDate: String?
        
        public var endDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
        }

        public init(endDate: String?, startDate: String?) {
            
            self.startDate = startDate
            
            self.endDate = endDate
            
        }

        public func duplicate() -> CurrentPeriod {
            let dict = self.dictionary!
            let copy = CurrentPeriod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionCharge
        Used By: Billing
    */

    class SubscriptionCharge: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var term: String?
        
        public var pricingType: String?
        
        public var price: EntityChargePrice?
        
        public var recurring: EntityChargeRecurring?
        
        public var cappedAmount: Double?
        
        public var activatedOn: String?
        
        public var cancelledOn: String?
        
        public var billingDate: String?
        
        public var currentPeriod: CurrentPeriod?
        
        public var status: String?
        
        public var isTest: Bool?
        
        public var metadata: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case term = "term"
            
            case pricingType = "pricing_type"
            
            case price = "price"
            
            case recurring = "recurring"
            
            case cappedAmount = "capped_amount"
            
            case activatedOn = "activated_on"
            
            case cancelledOn = "cancelled_on"
            
            case billingDate = "billing_date"
            
            case currentPeriod = "current_period"
            
            case status = "status"
            
            case isTest = "is_test"
            
            case metadata = "metadata"
            
        }

        public init(activatedOn: String?, billingDate: String?, cancelledOn: String?, cappedAmount: Double?, currentPeriod: CurrentPeriod?, isTest: Bool?, metadata: [String: Any]?, name: String?, price: EntityChargePrice?, pricingType: String?, recurring: EntityChargeRecurring?, status: String?, term: String?, id: String?) {
            
            self.id = id
            
            self.name = name
            
            self.term = term
            
            self.pricingType = pricingType
            
            self.price = price
            
            self.recurring = recurring
            
            self.cappedAmount = cappedAmount
            
            self.activatedOn = activatedOn
            
            self.cancelledOn = cancelledOn
            
            self.billingDate = billingDate
            
            self.currentPeriod = currentPeriod
            
            self.status = status
            
            self.isTest = isTest
            
            self.metadata = metadata
            
        }

        public func duplicate() -> SubscriptionCharge {
            let dict = self.dictionary!
            let copy = SubscriptionCharge(dictionary: dict)!
            return copy
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
                    recurring = try container.decode(EntityChargeRecurring.self, forKey: .recurring)
                
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
                    currentPeriod = try container.decode(CurrentPeriod.self, forKey: .currentPeriod)
                
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
                    isTest = try container.decode(Bool.self, forKey: .isTest)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(term, forKey: .term)
            
            
            
            
            try? container.encodeIfPresent(pricingType, forKey: .pricingType)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(recurring, forKey: .recurring)
            
            
            
            
            try? container.encodeIfPresent(cappedAmount, forKey: .cappedAmount)
            
            
            
            
            try? container.encodeIfPresent(activatedOn, forKey: .activatedOn)
            
            
            
            
            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
            
            
            
            
            try? container.encodeIfPresent(billingDate, forKey: .billingDate)
            
            
            
            
            try? container.encodeIfPresent(currentPeriod, forKey: .currentPeriod)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(isTest, forKey: .isTest)
            
            
            
            
            try? container.encodeIfPresent(metadata, forKey: .metadata)
            
            
        }
        
    }
    
    /*
        Model: EntitySubscription
        Used By: Billing
    */

    class EntitySubscription: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var status: String?
        
        public var companyId: Int?
        
        public var activatedOn: String?
        
        public var cancelledOn: String?
        
        public var trialDays: Int?
        
        public var trialPeriod: SubscriptionTrialPeriod?
        
        public var metadata: [String: Any]?
        
        public var lineItems: [SubscriptionCharge]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case name = "name"
            
            case status = "status"
            
            case companyId = "company_id"
            
            case activatedOn = "activated_on"
            
            case cancelledOn = "cancelled_on"
            
            case trialDays = "trial_days"
            
            case trialPeriod = "trial_period"
            
            case metadata = "metadata"
            
            case lineItems = "line_items"
            
        }

        public init(activatedOn: String?, cancelledOn: String?, companyId: Int?, lineItems: [SubscriptionCharge]?, metadata: [String: Any]?, name: String?, status: String?, trialDays: Int?, trialPeriod: SubscriptionTrialPeriod?, id: String?) {
            
            self.id = id
            
            self.name = name
            
            self.status = status
            
            self.companyId = companyId
            
            self.activatedOn = activatedOn
            
            self.cancelledOn = cancelledOn
            
            self.trialDays = trialDays
            
            self.trialPeriod = trialPeriod
            
            self.metadata = metadata
            
            self.lineItems = lineItems
            
        }

        public func duplicate() -> EntitySubscription {
            let dict = self.dictionary!
            let copy = EntitySubscription(dictionary: dict)!
            return copy
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
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
                    trialDays = try container.decode(Int.self, forKey: .trialDays)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trialPeriod = try container.decode(SubscriptionTrialPeriod.self, forKey: .trialPeriod)
                
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
                    lineItems = try container.decode([SubscriptionCharge].self, forKey: .lineItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(activatedOn, forKey: .activatedOn)
            
            
            
            
            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
            
            
            
            
            try? container.encodeIfPresent(trialDays, forKey: .trialDays)
            
            
            
            
            try? container.encodeIfPresent(trialPeriod, forKey: .trialPeriod)
            
            
            
            
            try? container.encodeIfPresent(metadata, forKey: .metadata)
            
            
            
            
            try? container.encodeIfPresent(lineItems, forKey: .lineItems)
            
            
        }
        
    }
    
    /*
        Model: CreateSubscriptionResponse
        Used By: Billing
    */

    class CreateSubscriptionResponse: Codable {
        
        
        public var subscription: EntitySubscription?
        
        public var confirmUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case subscription = "subscription"
            
            case confirmUrl = "confirm_url"
            
        }

        public init(confirmUrl: String?, subscription: EntitySubscription?) {
            
            self.subscription = subscription
            
            self.confirmUrl = confirmUrl
            
        }

        public func duplicate() -> CreateSubscriptionResponse {
            let dict = self.dictionary!
            let copy = CreateSubscriptionResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subscription = try container.decode(EntitySubscription.self, forKey: .subscription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    confirmUrl = try container.decode(String.self, forKey: .confirmUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subscription, forKey: .subscription)
            
            
            
            
            try? container.encodeIfPresent(confirmUrl, forKey: .confirmUrl)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsPeriod
        Used By: Billing
    */

    class InvoiceDetailsPeriod: Codable {
        
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String?, start: String?) {
            
            self.start = start
            
            self.end = end
            
        }

        public func duplicate() -> InvoiceDetailsPeriod {
            let dict = self.dictionary!
            let copy = InvoiceDetailsPeriod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsClient
        Used By: Billing
    */

    class InvoiceDetailsClient: Codable {
        
        
        public var addressLines: [String]?
        
        public var name: String?
        
        public var email: String?
        
        public var phone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case addressLines = "address_lines"
            
            case name = "name"
            
            case email = "email"
            
            case phone = "phone"
            
        }

        public init(addressLines: [String]?, email: String?, name: String?, phone: String?) {
            
            self.addressLines = addressLines
            
            self.name = name
            
            self.email = email
            
            self.phone = phone
            
        }

        public func duplicate() -> InvoiceDetailsClient {
            let dict = self.dictionary!
            let copy = InvoiceDetailsClient(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addressLines = try container.decode([String].self, forKey: .addressLines)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addressLines, forKey: .addressLines)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsStatusTrail
        Used By: Billing
    */

    class InvoiceDetailsStatusTrail: Codable {
        
        
        public var id: String?
        
        public var value: String?
        
        public var timestamp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case value = "value"
            
            case timestamp = "timestamp"
            
        }

        public init(timestamp: String?, value: String?, id: String?) {
            
            self.id = id
            
            self.value = value
            
            self.timestamp = timestamp
            
        }

        public func duplicate() -> InvoiceDetailsStatusTrail {
            let dict = self.dictionary!
            let copy = InvoiceDetailsStatusTrail(dictionary: dict)!
            return copy
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
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timestamp = try container.decode(String.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsPaymentMethodsDataChecks
        Used By: Billing
    */

    class InvoiceDetailsPaymentMethodsDataChecks: Codable {
        
        
        public var cvcCheck: String?
        
        public var addressLine1Check: String?
        
        public var addressPostalCodeCheck: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cvcCheck = "cvc_check"
            
            case addressLine1Check = "address_line1_check"
            
            case addressPostalCodeCheck = "address_postal_code_check"
            
        }

        public init(addressLine1Check: String?, addressPostalCodeCheck: String?, cvcCheck: String?) {
            
            self.cvcCheck = cvcCheck
            
            self.addressLine1Check = addressLine1Check
            
            self.addressPostalCodeCheck = addressPostalCodeCheck
            
        }

        public func duplicate() -> InvoiceDetailsPaymentMethodsDataChecks {
            let dict = self.dictionary!
            let copy = InvoiceDetailsPaymentMethodsDataChecks(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cvcCheck = try container.decode(String.self, forKey: .cvcCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressLine1Check = try container.decode(String.self, forKey: .addressLine1Check)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressPostalCodeCheck = try container.decode(String.self, forKey: .addressPostalCodeCheck)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cvcCheck, forKey: .cvcCheck)
            
            
            
            
            try? container.encodeIfPresent(addressLine1Check, forKey: .addressLine1Check)
            
            
            
            
            try? container.encodeIfPresent(addressPostalCodeCheck, forKey: .addressPostalCodeCheck)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsPaymentMethodsDataNetworks
        Used By: Billing
    */

    class InvoiceDetailsPaymentMethodsDataNetworks: Codable {
        
        
        public var available: [String]?
        
        public var preferred: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case available = "available"
            
            case preferred = "preferred"
            
        }

        public init(available: [String]?, preferred: String?) {
            
            self.available = available
            
            self.preferred = preferred
            
        }

        public func duplicate() -> InvoiceDetailsPaymentMethodsDataNetworks {
            let dict = self.dictionary!
            let copy = InvoiceDetailsPaymentMethodsDataNetworks(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    available = try container.decode([String].self, forKey: .available)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    preferred = try container.decode(String.self, forKey: .preferred)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(available, forKey: .available)
            
            
            
            
            try? container.encodeIfPresent(preferred, forKey: .preferred)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsPaymentMethodsDataThreeDSecureUsage
        Used By: Billing
    */

    class InvoiceDetailsPaymentMethodsDataThreeDSecureUsage: Codable {
        
        
        public var supported: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case supported = "supported"
            
        }

        public init(supported: Bool?) {
            
            self.supported = supported
            
        }

        public func duplicate() -> InvoiceDetailsPaymentMethodsDataThreeDSecureUsage {
            let dict = self.dictionary!
            let copy = InvoiceDetailsPaymentMethodsDataThreeDSecureUsage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    supported = try container.decode(Bool.self, forKey: .supported)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(supported, forKey: .supported)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsPaymentMethodsData
        Used By: Billing
    */

    class InvoiceDetailsPaymentMethodsData: Codable {
        
        
        public var brand: String?
        
        public var last4: String?
        
        public var checks: InvoiceDetailsPaymentMethodsDataChecks?
        
        public var wallet: String?
        
        public var country: String?
        
        public var funding: String?
        
        public var expYear: Int?
        
        public var networks: InvoiceDetailsPaymentMethodsDataNetworks?
        
        public var expMonth: Int?
        
        public var fingerprint: String?
        
        public var generatedFrom: String?
        
        public var threeDSecureUsage: InvoiceDetailsPaymentMethodsDataThreeDSecureUsage?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case last4 = "last4"
            
            case checks = "checks"
            
            case wallet = "wallet"
            
            case country = "country"
            
            case funding = "funding"
            
            case expYear = "exp_year"
            
            case networks = "networks"
            
            case expMonth = "exp_month"
            
            case fingerprint = "fingerprint"
            
            case generatedFrom = "generated_from"
            
            case threeDSecureUsage = "three_d_secure_usage"
            
        }

        public init(brand: String?, checks: InvoiceDetailsPaymentMethodsDataChecks?, country: String?, expMonth: Int?, expYear: Int?, fingerprint: String?, funding: String?, generatedFrom: String?, last4: String?, networks: InvoiceDetailsPaymentMethodsDataNetworks?, threeDSecureUsage: InvoiceDetailsPaymentMethodsDataThreeDSecureUsage?, wallet: String?) {
            
            self.brand = brand
            
            self.last4 = last4
            
            self.checks = checks
            
            self.wallet = wallet
            
            self.country = country
            
            self.funding = funding
            
            self.expYear = expYear
            
            self.networks = networks
            
            self.expMonth = expMonth
            
            self.fingerprint = fingerprint
            
            self.generatedFrom = generatedFrom
            
            self.threeDSecureUsage = threeDSecureUsage
            
        }

        public func duplicate() -> InvoiceDetailsPaymentMethodsData {
            let dict = self.dictionary!
            let copy = InvoiceDetailsPaymentMethodsData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode(String.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    last4 = try container.decode(String.self, forKey: .last4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checks = try container.decode(InvoiceDetailsPaymentMethodsDataChecks.self, forKey: .checks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
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
                    funding = try container.decode(String.self, forKey: .funding)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networks = try container.decode(InvoiceDetailsPaymentMethodsDataNetworks.self, forKey: .networks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fingerprint = try container.decode(String.self, forKey: .fingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    generatedFrom = try container.decode(String.self, forKey: .generatedFrom)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    threeDSecureUsage = try container.decode(InvoiceDetailsPaymentMethodsDataThreeDSecureUsage.self, forKey: .threeDSecureUsage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(last4, forKey: .last4)
            
            
            
            
            try? container.encodeIfPresent(checks, forKey: .checks)
            
            
            
            
            try? container.encodeIfPresent(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(funding, forKey: .funding)
            
            
            
            
            try? container.encodeIfPresent(expYear, forKey: .expYear)
            
            
            
            
            try? container.encodeIfPresent(networks, forKey: .networks)
            
            
            
            
            try? container.encodeIfPresent(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encodeIfPresent(fingerprint, forKey: .fingerprint)
            
            
            
            
            try? container.encodeIfPresent(generatedFrom, forKey: .generatedFrom)
            
            
            
            
            try? container.encodeIfPresent(threeDSecureUsage, forKey: .threeDSecureUsage)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsPaymentMethods
        Used By: Billing
    */

    class InvoiceDetailsPaymentMethods: Codable {
        
        
        public var id: Int?
        
        public var type: String?
        
        public var pgPaymentMethodId: String?
        
        public var data: InvoiceDetailsPaymentMethodsData?
        
        public var isDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case type = "type"
            
            case pgPaymentMethodId = "pg_payment_method_id"
            
            case data = "data"
            
            case isDefault = "is_default"
            
        }

        public init(data: InvoiceDetailsPaymentMethodsData?, id: Int?, isDefault: Bool?, pgPaymentMethodId: String?, type: String?) {
            
            self.id = id
            
            self.type = type
            
            self.pgPaymentMethodId = pgPaymentMethodId
            
            self.data = data
            
            self.isDefault = isDefault
            
        }

        public func duplicate() -> InvoiceDetailsPaymentMethods {
            let dict = self.dictionary!
            let copy = InvoiceDetailsPaymentMethods(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
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
                    pgPaymentMethodId = try container.decode(String.self, forKey: .pgPaymentMethodId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(InvoiceDetailsPaymentMethodsData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(pgPaymentMethodId, forKey: .pgPaymentMethodId)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
    
    /*
        Model: InvoicePaymentMethod
        Used By: Billing
    */

    class InvoicePaymentMethod: Codable {
        
        
        public var pgPaymentMethodId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pgPaymentMethodId = "pg_payment_method_id"
            
        }

        public init(pgPaymentMethodId: String?) {
            
            self.pgPaymentMethodId = pgPaymentMethodId
            
        }

        public func duplicate() -> InvoicePaymentMethod {
            let dict = self.dictionary!
            let copy = InvoicePaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pgPaymentMethodId = try container.decode(String.self, forKey: .pgPaymentMethodId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pgPaymentMethodId, forKey: .pgPaymentMethodId)
            
            
        }
        
    }
    
    /*
        Model: InvoiceDetails
        Used By: Billing
    */

    class InvoiceDetails: Codable {
        
        
        public var period: InvoiceDetailsPeriod?
        
        public var client: InvoiceDetailsClient?
        
        public var autoAdvance: Bool?
        
        public var currency: String?
        
        public var paid: Bool?
        
        public var attemp: Int?
        
        public var id: String?
        
        public var collectionMethod: String?
        
        public var subscriberId: String?
        
        public var invoiceUrl: String?
        
        public var number: String?
        
        public var pgData: [String: Any]?
        
        public var receiptNumber: String?
        
        public var statementDescriptor: String?
        
        public var currentStatus: String?
        
        public var statusTrail: [InvoiceDetailsStatusTrail]?
        
        public var subtotal: Double?
        
        public var total: Double?
        
        public var subscription: String?
        
        public var nextActionTime: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var hashIdentifier: String?
        
        public var paymentMethod: InvoicePaymentMethod?
        

        public enum CodingKeys: String, CodingKey {
            
            case period = "period"
            
            case client = "client"
            
            case autoAdvance = "auto_advance"
            
            case currency = "currency"
            
            case paid = "paid"
            
            case attemp = "attemp"
            
            case id = "_id"
            
            case collectionMethod = "collection_method"
            
            case subscriberId = "subscriber_id"
            
            case invoiceUrl = "invoice_url"
            
            case number = "number"
            
            case pgData = "pg_data"
            
            case receiptNumber = "receipt_number"
            
            case statementDescriptor = "statement_descriptor"
            
            case currentStatus = "current_status"
            
            case statusTrail = "status_trail"
            
            case subtotal = "subtotal"
            
            case total = "total"
            
            case subscription = "subscription"
            
            case nextActionTime = "next_action_time"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case hashIdentifier = "hash_identifier"
            
            case paymentMethod = "payment_method"
            
        }

        public init(attemp: Int?, autoAdvance: Bool?, client: InvoiceDetailsClient?, collectionMethod: String?, createdAt: String?, currency: String?, currentStatus: String?, hashIdentifier: String?, invoiceUrl: String?, modifiedAt: String?, nextActionTime: String?, number: String?, paid: Bool?, paymentMethod: InvoicePaymentMethod?, period: InvoiceDetailsPeriod?, pgData: [String: Any]?, receiptNumber: String?, statementDescriptor: String?, statusTrail: [InvoiceDetailsStatusTrail]?, subscriberId: String?, subscription: String?, subtotal: Double?, total: Double?, id: String?) {
            
            self.period = period
            
            self.client = client
            
            self.autoAdvance = autoAdvance
            
            self.currency = currency
            
            self.paid = paid
            
            self.attemp = attemp
            
            self.id = id
            
            self.collectionMethod = collectionMethod
            
            self.subscriberId = subscriberId
            
            self.invoiceUrl = invoiceUrl
            
            self.number = number
            
            self.pgData = pgData
            
            self.receiptNumber = receiptNumber
            
            self.statementDescriptor = statementDescriptor
            
            self.currentStatus = currentStatus
            
            self.statusTrail = statusTrail
            
            self.subtotal = subtotal
            
            self.total = total
            
            self.subscription = subscription
            
            self.nextActionTime = nextActionTime
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.hashIdentifier = hashIdentifier
            
            self.paymentMethod = paymentMethod
            
        }

        public func duplicate() -> InvoiceDetails {
            let dict = self.dictionary!
            let copy = InvoiceDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    period = try container.decode(InvoiceDetailsPeriod.self, forKey: .period)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    client = try container.decode(InvoiceDetailsClient.self, forKey: .client)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoAdvance = try container.decode(Bool.self, forKey: .autoAdvance)
                
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
                    paid = try container.decode(Bool.self, forKey: .paid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attemp = try container.decode(Int.self, forKey: .attemp)
                
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
                    collectionMethod = try container.decode(String.self, forKey: .collectionMethod)
                
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
                    invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pgData = try container.decode([String: Any].self, forKey: .pgData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptNumber = try container.decode(String.self, forKey: .receiptNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statementDescriptor = try container.decode(String.self, forKey: .statementDescriptor)
                
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
                    statusTrail = try container.decode([InvoiceDetailsStatusTrail].self, forKey: .statusTrail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscription = try container.decode(String.self, forKey: .subscription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextActionTime = try container.decode(String.self, forKey: .nextActionTime)
                
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
                    hashIdentifier = try container.decode(String.self, forKey: .hashIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethod = try container.decode(InvoicePaymentMethod.self, forKey: .paymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(period, forKey: .period)
            
            
            
            
            try? container.encodeIfPresent(client, forKey: .client)
            
            
            
            
            try? container.encodeIfPresent(autoAdvance, forKey: .autoAdvance)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paid, forKey: .paid)
            
            
            
            
            try? container.encodeIfPresent(attemp, forKey: .attemp)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(collectionMethod, forKey: .collectionMethod)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            
            try? container.encodeIfPresent(pgData, forKey: .pgData)
            
            
            
            
            try? container.encodeIfPresent(receiptNumber, forKey: .receiptNumber)
            
            
            
            
            try? container.encodeIfPresent(statementDescriptor, forKey: .statementDescriptor)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(statusTrail, forKey: .statusTrail)
            
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(subscription, forKey: .subscription)
            
            
            
            
            try? container.encodeIfPresent(nextActionTime, forKey: .nextActionTime)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(hashIdentifier, forKey: .hashIdentifier)
            
            
            
            
            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            
            
        }
        
    }
    
    /*
        Model: InvoiceItemsPlanRecurring
        Used By: Billing
    */

    class InvoiceItemsPlanRecurring: Codable {
        
        
        public var interval: String?
        
        public var intervalCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case interval = "interval"
            
            case intervalCount = "interval_count"
            
        }

        public init(interval: String?, intervalCount: Int?) {
            
            self.interval = interval
            
            self.intervalCount = intervalCount
            
        }

        public func duplicate() -> InvoiceItemsPlanRecurring {
            let dict = self.dictionary!
            let copy = InvoiceItemsPlanRecurring(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    interval = try container.decode(String.self, forKey: .interval)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intervalCount = try container.decode(Int.self, forKey: .intervalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            
            
            
            try? container.encodeIfPresent(intervalCount, forKey: .intervalCount)
            
            
        }
        
    }
    
    /*
        Model: InvoiceItemsPlan
        Used By: Billing
    */

    class InvoiceItemsPlan: Codable {
        
        
        public var recurring: InvoiceItemsPlanRecurring?
        
        public var isTrialPlan: Bool?
        
        public var planGroup: String?
        
        public var tagLines: [String]?
        
        public var currency: String?
        
        public var isActive: Bool?
        
        public var isVisible: Bool?
        
        public var trialPeriod: Int?
        
        public var addons: [String]?
        
        public var tags: [String]?
        
        public var type: String?
        
        public var country: String?
        
        public var id: String?
        
        public var name: String?
        
        public var description: String?
        
        public var amount: Int?
        
        public var productSuiteId: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
        }

        public init(addons: [String]?, amount: Int?, country: String?, createdAt: String?, currency: String?, description: String?, isActive: Bool?, isTrialPlan: Bool?, isVisible: Bool?, modifiedAt: String?, name: String?, planGroup: String?, productSuiteId: String?, recurring: InvoiceItemsPlanRecurring?, tags: [String]?, tagLines: [String]?, trialPeriod: Int?, type: String?, id: String?) {
            
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
            
        }

        public func duplicate() -> InvoiceItemsPlan {
            let dict = self.dictionary!
            let copy = InvoiceItemsPlan(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    recurring = try container.decode(InvoiceItemsPlanRecurring.self, forKey: .recurring)
                
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
                    trialPeriod = try container.decode(Int.self, forKey: .trialPeriod)
                
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
                    amount = try container.decode(Int.self, forKey: .amount)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
            
            
        }
        
    }
    
    /*
        Model: InvoiceItemsPeriod
        Used By: Billing
    */

    class InvoiceItemsPeriod: Codable {
        
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String?, start: String?) {
            
            self.start = start
            
            self.end = end
            
        }

        public func duplicate() -> InvoiceItemsPeriod {
            let dict = self.dictionary!
            let copy = InvoiceItemsPeriod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
    
    /*
        Model: InvoiceItems
        Used By: Billing
    */

    class InvoiceItems: Codable {
        
        
        public var id: String?
        
        public var currency: String?
        
        public var plan: InvoiceItemsPlan?
        
        public var name: String?
        
        public var quantity: Int?
        
        public var description: String?
        
        public var period: InvoiceItemsPeriod?
        
        public var unitAmount: Double?
        
        public var amount: Double?
        
        public var type: String?
        
        public var invoiceId: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case currency = "currency"
            
            case plan = "plan"
            
            case name = "name"
            
            case quantity = "quantity"
            
            case description = "description"
            
            case period = "period"
            
            case unitAmount = "unit_amount"
            
            case amount = "amount"
            
            case type = "type"
            
            case invoiceId = "invoice_id"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
        }

        public init(amount: Double?, createdAt: String?, currency: String?, description: String?, invoiceId: String?, modifiedAt: String?, name: String?, period: InvoiceItemsPeriod?, plan: InvoiceItemsPlan?, quantity: Int?, type: String?, unitAmount: Double?, id: String?) {
            
            self.id = id
            
            self.currency = currency
            
            self.plan = plan
            
            self.name = name
            
            self.quantity = quantity
            
            self.description = description
            
            self.period = period
            
            self.unitAmount = unitAmount
            
            self.amount = amount
            
            self.type = type
            
            self.invoiceId = invoiceId
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
        }

        public func duplicate() -> InvoiceItems {
            let dict = self.dictionary!
            let copy = InvoiceItems(dictionary: dict)!
            return copy
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
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    plan = try container.decode(InvoiceItemsPlan.self, forKey: .plan)
                
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
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
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
                    period = try container.decode(InvoiceItemsPeriod.self, forKey: .period)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unitAmount = try container.decode(Double.self, forKey: .unitAmount)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
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
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(plan, forKey: .plan)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(period, forKey: .period)
            
            
            
            
            try? container.encodeIfPresent(unitAmount, forKey: .unitAmount)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
        }
        
    }
    
    /*
        Model: Invoice
        Used By: Billing
    */

    class Invoice: Codable {
        
        
        public var invoice: InvoiceDetails?
        
        public var invoiceItems: [InvoiceItems]?
        

        public enum CodingKeys: String, CodingKey {
            
            case invoice = "invoice"
            
            case invoiceItems = "invoice_items"
            
        }

        public init(invoice: InvoiceDetails?, invoiceItems: [InvoiceItems]?) {
            
            self.invoice = invoice
            
            self.invoiceItems = invoiceItems
            
        }

        public func duplicate() -> Invoice {
            let dict = self.dictionary!
            let copy = Invoice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    invoice = try container.decode(InvoiceDetails.self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceItems = try container.decode([InvoiceItems].self, forKey: .invoiceItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(invoiceItems, forKey: .invoiceItems)
            
            
        }
        
    }
    
    /*
        Model: InvoicesDataClient
        Used By: Billing
    */

    class InvoicesDataClient: Codable {
        
        
        public var name: String?
        
        public var email: String?
        
        public var phone: String?
        
        public var addressLines: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case email = "email"
            
            case phone = "phone"
            
            case addressLines = "address_lines"
            
        }

        public init(addressLines: [String]?, email: String?, name: String?, phone: String?) {
            
            self.name = name
            
            self.email = email
            
            self.phone = phone
            
            self.addressLines = addressLines
            
        }

        public func duplicate() -> InvoicesDataClient {
            let dict = self.dictionary!
            let copy = InvoicesDataClient(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressLines = try container.decode([String].self, forKey: .addressLines)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(addressLines, forKey: .addressLines)
            
            
        }
        
    }
    
    /*
        Model: InvoicesDataPeriod
        Used By: Billing
    */

    class InvoicesDataPeriod: Codable {
        
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String?, start: String?) {
            
            self.start = start
            
            self.end = end
            
        }

        public func duplicate() -> InvoicesDataPeriod {
            let dict = self.dictionary!
            let copy = InvoicesDataPeriod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
    
    /*
        Model: InvoicesDataPaymentMethod
        Used By: Billing
    */

    class InvoicesDataPaymentMethod: Codable {
        
        
        public var pgPaymentMethodId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pgPaymentMethodId = "pg_payment_method_id"
            
        }

        public init(pgPaymentMethodId: String?) {
            
            self.pgPaymentMethodId = pgPaymentMethodId
            
        }

        public func duplicate() -> InvoicesDataPaymentMethod {
            let dict = self.dictionary!
            let copy = InvoicesDataPaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pgPaymentMethodId = try container.decode(String.self, forKey: .pgPaymentMethodId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pgPaymentMethodId, forKey: .pgPaymentMethodId)
            
            
        }
        
    }
    
    /*
        Model: InvoicesData
        Used By: Billing
    */

    class InvoicesData: Codable {
        
        
        public var id: String?
        
        public var client: InvoicesDataClient?
        
        public var autoAdvance: Bool?
        
        public var currency: String?
        
        public var paid: Bool?
        
        public var attemp: Int?
        
        public var collectionMethod: String?
        
        public var subscriberId: String?
        
        public var invoiceUrl: String?
        
        public var number: String?
        
        public var pgData: [String: Any]?
        
        public var period: InvoicesDataPeriod?
        
        public var receiptNumber: String?
        
        public var statementDescriptor: String?
        
        public var currentStatus: String?
        
        public var statusTrail: [InvoiceDetailsStatusTrail]?
        
        public var subtotal: Double?
        
        public var total: Double?
        
        public var subscription: String?
        
        public var nextActionTime: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var hashIdentifier: String?
        
        public var paymentMethod: InvoicesDataPaymentMethod?
        
        public var invoiceItems: [InvoiceItems]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case client = "client"
            
            case autoAdvance = "auto_advance"
            
            case currency = "currency"
            
            case paid = "paid"
            
            case attemp = "attemp"
            
            case collectionMethod = "collection_method"
            
            case subscriberId = "subscriber_id"
            
            case invoiceUrl = "invoice_url"
            
            case number = "number"
            
            case pgData = "pg_data"
            
            case period = "period"
            
            case receiptNumber = "receipt_number"
            
            case statementDescriptor = "statement_descriptor"
            
            case currentStatus = "current_status"
            
            case statusTrail = "status_trail"
            
            case subtotal = "subtotal"
            
            case total = "total"
            
            case subscription = "subscription"
            
            case nextActionTime = "next_action_time"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case hashIdentifier = "hash_identifier"
            
            case paymentMethod = "payment_method"
            
            case invoiceItems = "invoice_items"
            
        }

        public init(attemp: Int?, autoAdvance: Bool?, client: InvoicesDataClient?, collectionMethod: String?, createdAt: String?, currency: String?, currentStatus: String?, hashIdentifier: String?, invoiceItems: [InvoiceItems]?, invoiceUrl: String?, modifiedAt: String?, nextActionTime: String?, number: String?, paid: Bool?, paymentMethod: InvoicesDataPaymentMethod?, period: InvoicesDataPeriod?, pgData: [String: Any]?, receiptNumber: String?, statementDescriptor: String?, statusTrail: [InvoiceDetailsStatusTrail]?, subscriberId: String?, subscription: String?, subtotal: Double?, total: Double?, id: String?) {
            
            self.id = id
            
            self.client = client
            
            self.autoAdvance = autoAdvance
            
            self.currency = currency
            
            self.paid = paid
            
            self.attemp = attemp
            
            self.collectionMethod = collectionMethod
            
            self.subscriberId = subscriberId
            
            self.invoiceUrl = invoiceUrl
            
            self.number = number
            
            self.pgData = pgData
            
            self.period = period
            
            self.receiptNumber = receiptNumber
            
            self.statementDescriptor = statementDescriptor
            
            self.currentStatus = currentStatus
            
            self.statusTrail = statusTrail
            
            self.subtotal = subtotal
            
            self.total = total
            
            self.subscription = subscription
            
            self.nextActionTime = nextActionTime
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.hashIdentifier = hashIdentifier
            
            self.paymentMethod = paymentMethod
            
            self.invoiceItems = invoiceItems
            
        }

        public func duplicate() -> InvoicesData {
            let dict = self.dictionary!
            let copy = InvoicesData(dictionary: dict)!
            return copy
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
                    client = try container.decode(InvoicesDataClient.self, forKey: .client)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoAdvance = try container.decode(Bool.self, forKey: .autoAdvance)
                
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
                    paid = try container.decode(Bool.self, forKey: .paid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attemp = try container.decode(Int.self, forKey: .attemp)
                
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
                    subscriberId = try container.decode(String.self, forKey: .subscriberId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pgData = try container.decode([String: Any].self, forKey: .pgData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    period = try container.decode(InvoicesDataPeriod.self, forKey: .period)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    receiptNumber = try container.decode(String.self, forKey: .receiptNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statementDescriptor = try container.decode(String.self, forKey: .statementDescriptor)
                
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
                    statusTrail = try container.decode([InvoiceDetailsStatusTrail].self, forKey: .statusTrail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscription = try container.decode(String.self, forKey: .subscription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextActionTime = try container.decode(String.self, forKey: .nextActionTime)
                
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
                    hashIdentifier = try container.decode(String.self, forKey: .hashIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethod = try container.decode(InvoicesDataPaymentMethod.self, forKey: .paymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceItems = try container.decode([InvoiceItems].self, forKey: .invoiceItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(client, forKey: .client)
            
            
            
            
            try? container.encodeIfPresent(autoAdvance, forKey: .autoAdvance)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(paid, forKey: .paid)
            
            
            
            
            try? container.encodeIfPresent(attemp, forKey: .attemp)
            
            
            
            
            try? container.encodeIfPresent(collectionMethod, forKey: .collectionMethod)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)
            
            
            
            
            try? container.encodeIfPresent(number, forKey: .number)
            
            
            
            
            try? container.encodeIfPresent(pgData, forKey: .pgData)
            
            
            
            
            try? container.encodeIfPresent(period, forKey: .period)
            
            
            
            
            try? container.encodeIfPresent(receiptNumber, forKey: .receiptNumber)
            
            
            
            
            try? container.encodeIfPresent(statementDescriptor, forKey: .statementDescriptor)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(statusTrail, forKey: .statusTrail)
            
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(subscription, forKey: .subscription)
            
            
            
            
            try? container.encodeIfPresent(nextActionTime, forKey: .nextActionTime)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(hashIdentifier, forKey: .hashIdentifier)
            
            
            
            
            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            
            
            
            
            try? container.encodeIfPresent(invoiceItems, forKey: .invoiceItems)
            
            
        }
        
    }
    
    /*
        Model: Invoices
        Used By: Billing
    */

    class Invoices: Codable {
        
        
        public var data: [InvoicesData]?
        
        public var start: Int?
        
        public var end: Int?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var total: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case start = "start"
            
            case end = "end"
            
            case limit = "limit"
            
            case page = "page"
            
            case total = "total"
            
        }

        public init(data: [InvoicesData]?, end: Int?, limit: Int?, page: Int?, start: Int?, total: Int?) {
            
            self.data = data
            
            self.start = start
            
            self.end = end
            
            self.limit = limit
            
            self.page = page
            
            self.total = total
            
        }

        public func duplicate() -> Invoices {
            let dict = self.dictionary!
            let copy = Invoices(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([InvoicesData].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    start = try container.decode(Int.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(Int.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Int.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
    
    /*
        Model: Phone
        Used By: Billing
    */

    class Phone: Codable {
        
        
        public var phoneNumber: String?
        
        public var phoneCountryCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phoneNumber = "phone_number"
            
            case phoneCountryCode = "phone_country_code"
            
        }

        public init(phoneCountryCode: String?, phoneNumber: String?) {
            
            self.phoneNumber = phoneNumber
            
            self.phoneCountryCode = phoneCountryCode
            
        }

        public func duplicate() -> Phone {
            let dict = self.dictionary!
            let copy = Phone(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneCountryCode = try container.decode(String.self, forKey: .phoneCountryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(phoneCountryCode, forKey: .phoneCountryCode)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionBillingAddress
        Used By: Billing
    */

    class SubscriptionBillingAddress: Codable {
        
        
        public var country: String?
        
        public var state: String?
        
        public var city: String?
        
        public var line1: String?
        
        public var line2: String?
        
        public var postalCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case state = "state"
            
            case city = "city"
            
            case line1 = "line1"
            
            case line2 = "line2"
            
            case postalCode = "postal_code"
            
        }

        public init(city: String?, country: String?, line1: String?, line2: String?, postalCode: String?, state: String?) {
            
            self.country = country
            
            self.state = state
            
            self.city = city
            
            self.line1 = line1
            
            self.line2 = line2
            
            self.postalCode = postalCode
            
        }

        public func duplicate() -> SubscriptionBillingAddress {
            let dict = self.dictionary!
            let copy = SubscriptionBillingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    line1 = try container.decode(String.self, forKey: .line1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    line2 = try container.decode(String.self, forKey: .line2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postalCode = try container.decode(String.self, forKey: .postalCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(line1, forKey: .line1)
            
            
            
            
            try? container.encodeIfPresent(line2, forKey: .line2)
            
            
            
            
            try? container.encodeIfPresent(postalCode, forKey: .postalCode)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionCustomer
        Used By: Billing
    */

    class SubscriptionCustomer: Codable {
        
        
        public var phone: Phone?
        
        public var billingAddress: SubscriptionBillingAddress?
        
        public var id: String?
        
        public var uniqueId: String?
        
        public var type: String?
        
        public var name: String?
        
        public var email: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case billingAddress = "billing_address"
            
            case id = "_id"
            
            case uniqueId = "unique_id"
            
            case type = "type"
            
            case name = "name"
            
            case email = "email"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case data = "data"
            
        }

        public init(billingAddress: SubscriptionBillingAddress?, createdAt: String?, data: [String: Any]?, email: String?, modifiedAt: String?, name: String?, phone: Phone?, type: String?, uniqueId: String?, id: String?) {
            
            self.phone = phone
            
            self.billingAddress = billingAddress
            
            self.id = id
            
            self.uniqueId = uniqueId
            
            self.type = type
            
            self.name = name
            
            self.email = email
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.data = data
            
        }

        public func duplicate() -> SubscriptionCustomer {
            let dict = self.dictionary!
            let copy = SubscriptionCustomer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(Phone.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(SubscriptionBillingAddress.self, forKey: .billingAddress)
                
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
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
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
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionCustomerCreate
        Used By: Billing
    */

    class SubscriptionCustomerCreate: Codable {
        
        
        public var phone: Phone?
        
        public var billingAddress: SubscriptionBillingAddress?
        
        public var uniqueId: String?
        
        public var type: String?
        
        public var name: String?
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case billingAddress = "billing_address"
            
            case uniqueId = "unique_id"
            
            case type = "type"
            
            case name = "name"
            
            case email = "email"
            
        }

        public init(billingAddress: SubscriptionBillingAddress?, email: String?, name: String?, phone: Phone?, type: String?, uniqueId: String?) {
            
            self.phone = phone
            
            self.billingAddress = billingAddress
            
            self.uniqueId = uniqueId
            
            self.type = type
            
            self.name = name
            
            self.email = email
            
        }

        public func duplicate() -> SubscriptionCustomerCreate {
            let dict = self.dictionary!
            let copy = SubscriptionCustomerCreate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(Phone.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(SubscriptionBillingAddress.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionCurrentPeriod
        Used By: Billing
    */

    class SubscriptionCurrentPeriod: Codable {
        
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String?, start: String?) {
            
            self.start = start
            
            self.end = end
            
        }

        public func duplicate() -> SubscriptionCurrentPeriod {
            let dict = self.dictionary!
            let copy = SubscriptionCurrentPeriod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionPauseCollection
        Used By: Billing
    */

    class SubscriptionPauseCollection: Codable {
        
        
        public var behavior: String?
        
        public var resumeAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case behavior = "behavior"
            
            case resumeAt = "resume_at"
            
        }

        public init(behavior: String?, resumeAt: String?) {
            
            self.behavior = behavior
            
            self.resumeAt = resumeAt
            
        }

        public func duplicate() -> SubscriptionPauseCollection {
            let dict = self.dictionary!
            let copy = SubscriptionPauseCollection(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    behavior = try container.decode(String.self, forKey: .behavior)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resumeAt = try container.decode(String.self, forKey: .resumeAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(behavior, forKey: .behavior)
            
            
            
            
            try? container.encodeIfPresent(resumeAt, forKey: .resumeAt)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionTrial
        Used By: Billing
    */

    class SubscriptionTrial: Codable {
        
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(end: String?, start: String?) {
            
            self.start = start
            
            self.end = end
            
        }

        public func duplicate() -> SubscriptionTrial {
            let dict = self.dictionary!
            let copy = SubscriptionTrial(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionInvoiceSettings
        Used By: Billing
    */

    class SubscriptionInvoiceSettings: Codable {
        
        
        public var generation: Bool?
        
        public var charging: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case generation = "generation"
            
            case charging = "charging"
            
        }

        public init(charging: Bool?, generation: Bool?) {
            
            self.generation = generation
            
            self.charging = charging
            
        }

        public func duplicate() -> SubscriptionInvoiceSettings {
            let dict = self.dictionary!
            let copy = SubscriptionInvoiceSettings(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    generation = try container.decode(Bool.self, forKey: .generation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charging = try container.decode(Bool.self, forKey: .charging)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(generation, forKey: .generation)
            
            
            
            
            try? container.encodeIfPresent(charging, forKey: .charging)
            
            
        }
        
    }
    
    /*
        Model: Subscription
        Used By: Billing
    */

    class Subscription: Codable {
        
        
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
        
        public var planData: Plan?
        
        public var currentStatus: String?
        
        public var collectionMethod: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var latestInvoice: String?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
            case planData = "plan_data"
            
            case currentStatus = "current_status"
            
            case collectionMethod = "collection_method"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case latestInvoice = "latest_invoice"
            
        }

        public init(cancelAtPeriodEnd: Bool?, collectionMethod: String?, createdAt: String?, currentPeriod: SubscriptionCurrentPeriod?, currentStatus: String?, invoiceSettings: SubscriptionInvoiceSettings?, isActive: Bool?, latestInvoice: String?, modifiedAt: String?, pauseCollection: SubscriptionPauseCollection?, planData: Plan?, planId: String?, productSuiteId: String?, subscriberId: String?, trial: SubscriptionTrial?, id: String?) {
            
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
            
            self.planData = planData
            
            self.currentStatus = currentStatus
            
            self.collectionMethod = collectionMethod
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.latestInvoice = latestInvoice
            
        }

        public func duplicate() -> Subscription {
            let dict = self.dictionary!
            let copy = Subscription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(planData, forKey: .planData)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(collectionMethod, forKey: .collectionMethod)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(latestInvoice, forKey: .latestInvoice)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionStatus
        Used By: Billing
    */

    class SubscriptionStatus: Codable {
        
        
        public var isEnabled: Bool?
        
        public var subscription: Subscription?
        

        public enum CodingKeys: String, CodingKey {
            
            case isEnabled = "is_enabled"
            
            case subscription = "subscription"
            
        }

        public init(isEnabled: Bool?, subscription: Subscription?) {
            
            self.isEnabled = isEnabled
            
            self.subscription = subscription
            
        }

        public func duplicate() -> SubscriptionStatus {
            let dict = self.dictionary!
            let copy = SubscriptionStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isEnabled = try container.decode(Bool.self, forKey: .isEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscription = try container.decode(Subscription.self, forKey: .subscription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isEnabled, forKey: .isEnabled)
            
            
            
            
            try? container.encodeIfPresent(subscription, forKey: .subscription)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimitApplication
        Used By: Billing
    */

    class SubscriptionLimitApplication: Codable {
        
        
        public var enabled: Bool?
        
        public var hardLimit: Int?
        
        public var softLimit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case hardLimit = "hard_limit"
            
            case softLimit = "soft_limit"
            
        }

        public init(enabled: Bool?, hardLimit: Int?, softLimit: Int?) {
            
            self.enabled = enabled
            
            self.hardLimit = hardLimit
            
            self.softLimit = softLimit
            
        }

        public func duplicate() -> SubscriptionLimitApplication {
            let dict = self.dictionary!
            let copy = SubscriptionLimitApplication(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hardLimit = try container.decode(Int.self, forKey: .hardLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    softLimit = try container.decode(Int.self, forKey: .softLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(hardLimit, forKey: .hardLimit)
            
            
            
            
            try? container.encodeIfPresent(softLimit, forKey: .softLimit)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimitMarketplace
        Used By: Billing
    */

    class SubscriptionLimitMarketplace: Codable {
        
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
        }

        public init(enabled: Bool?) {
            
            self.enabled = enabled
            
        }

        public func duplicate() -> SubscriptionLimitMarketplace {
            let dict = self.dictionary!
            let copy = SubscriptionLimitMarketplace(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimitOtherPlatform
        Used By: Billing
    */

    class SubscriptionLimitOtherPlatform: Codable {
        
        
        public var enabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
        }

        public init(enabled: Bool?) {
            
            self.enabled = enabled
            
        }

        public func duplicate() -> SubscriptionLimitOtherPlatform {
            let dict = self.dictionary!
            let copy = SubscriptionLimitOtherPlatform(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimitTeam
        Used By: Billing
    */

    class SubscriptionLimitTeam: Codable {
        
        
        public var limit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case limit = "limit"
            
        }

        public init(limit: Int?) {
            
            self.limit = limit
            
        }

        public func duplicate() -> SubscriptionLimitTeam {
            let dict = self.dictionary!
            let copy = SubscriptionLimitTeam(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimitProducts
        Used By: Billing
    */

    class SubscriptionLimitProducts: Codable {
        
        
        public var bulk: Bool?
        
        public var limit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case bulk = "bulk"
            
            case limit = "limit"
            
        }

        public init(bulk: Bool?, limit: Int?) {
            
            self.bulk = bulk
            
            self.limit = limit
            
        }

        public func duplicate() -> SubscriptionLimitProducts {
            let dict = self.dictionary!
            let copy = SubscriptionLimitProducts(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bulk = try container.decode(Bool.self, forKey: .bulk)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bulk, forKey: .bulk)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimitExtensions
        Used By: Billing
    */

    class SubscriptionLimitExtensions: Codable {
        
        
        public var enabled: Bool?
        
        public var limit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case limit = "limit"
            
        }

        public init(enabled: Bool?, limit: Int?) {
            
            self.enabled = enabled
            
            self.limit = limit
            
        }

        public func duplicate() -> SubscriptionLimitExtensions {
            let dict = self.dictionary!
            let copy = SubscriptionLimitExtensions(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimitIntegrations
        Used By: Billing
    */

    class SubscriptionLimitIntegrations: Codable {
        
        
        public var enabled: Bool?
        
        public var limit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case limit = "limit"
            
        }

        public init(enabled: Bool?, limit: Int?) {
            
            self.enabled = enabled
            
            self.limit = limit
            
        }

        public func duplicate() -> SubscriptionLimitIntegrations {
            let dict = self.dictionary!
            let copy = SubscriptionLimitIntegrations(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionLimit
        Used By: Billing
    */

    class SubscriptionLimit: Codable {
        
        
        public var application: SubscriptionLimitApplication?
        
        public var marketplace: SubscriptionLimitMarketplace?
        
        public var otherPlatform: SubscriptionLimitOtherPlatform?
        
        public var team: SubscriptionLimitTeam?
        
        public var products: SubscriptionLimitProducts?
        
        public var extensions: SubscriptionLimitExtensions?
        
        public var integrations: SubscriptionLimitIntegrations?
        
        public var isTrialPlan: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case marketplace = "marketplace"
            
            case otherPlatform = "other_platform"
            
            case team = "team"
            
            case products = "products"
            
            case extensions = "extensions"
            
            case integrations = "integrations"
            
            case isTrialPlan = "is_trial_plan"
            
        }

        public init(application: SubscriptionLimitApplication?, extensions: SubscriptionLimitExtensions?, integrations: SubscriptionLimitIntegrations?, isTrialPlan: Bool?, marketplace: SubscriptionLimitMarketplace?, otherPlatform: SubscriptionLimitOtherPlatform?, products: SubscriptionLimitProducts?, team: SubscriptionLimitTeam?) {
            
            self.application = application
            
            self.marketplace = marketplace
            
            self.otherPlatform = otherPlatform
            
            self.team = team
            
            self.products = products
            
            self.extensions = extensions
            
            self.integrations = integrations
            
            self.isTrialPlan = isTrialPlan
            
        }

        public func duplicate() -> SubscriptionLimit {
            let dict = self.dictionary!
            let copy = SubscriptionLimit(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    application = try container.decode(SubscriptionLimitApplication.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketplace = try container.decode(SubscriptionLimitMarketplace.self, forKey: .marketplace)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otherPlatform = try container.decode(SubscriptionLimitOtherPlatform.self, forKey: .otherPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    team = try container.decode(SubscriptionLimitTeam.self, forKey: .team)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode(SubscriptionLimitProducts.self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensions = try container.decode(SubscriptionLimitExtensions.self, forKey: .extensions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrations = try container.decode(SubscriptionLimitIntegrations.self, forKey: .integrations)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(marketplace, forKey: .marketplace)
            
            
            
            
            try? container.encodeIfPresent(otherPlatform, forKey: .otherPlatform)
            
            
            
            
            try? container.encodeIfPresent(team, forKey: .team)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(extensions, forKey: .extensions)
            
            
            
            
            try? container.encodeIfPresent(integrations, forKey: .integrations)
            
            
            
            
            try? container.encodeIfPresent(isTrialPlan, forKey: .isTrialPlan)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionActivateReq
        Used By: Billing
    */

    class SubscriptionActivateReq: Codable {
        
        
        public var uniqueId: String?
        
        public var type: String?
        
        public var productSuite: String?
        
        public var planId: String?
        
        public var paymentMethod: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueId = "unique_id"
            
            case type = "type"
            
            case productSuite = "product_suite"
            
            case planId = "plan_id"
            
            case paymentMethod = "payment_method"
            
        }

        public init(paymentMethod: String?, planId: String?, productSuite: String?, type: String?, uniqueId: String?) {
            
            self.uniqueId = uniqueId
            
            self.type = type
            
            self.productSuite = productSuite
            
            self.planId = planId
            
            self.paymentMethod = paymentMethod
            
        }

        public func duplicate() -> SubscriptionActivateReq {
            let dict = self.dictionary!
            let copy = SubscriptionActivateReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
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
                    productSuite = try container.decode(String.self, forKey: .productSuite)
                
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
                    paymentMethod = try container.decode(String.self, forKey: .paymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(productSuite, forKey: .productSuite)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            
            
        }
        
    }
    
    /*
        Model: SubscriptionActivateRes
        Used By: Billing
    */

    class SubscriptionActivateRes: Codable {
        
        
        public var success: Bool?
        
        public var data: Subscription?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(data: Subscription?, success: Bool?) {
            
            self.success = success
            
            self.data = data
            
        }

        public func duplicate() -> SubscriptionActivateRes {
            let dict = self.dictionary!
            let copy = SubscriptionActivateRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(Subscription.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: CancelSubscriptionReq
        Used By: Billing
    */

    class CancelSubscriptionReq: Codable {
        
        
        public var uniqueId: String?
        
        public var type: String?
        
        public var productSuite: String?
        
        public var subscriptionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueId = "unique_id"
            
            case type = "type"
            
            case productSuite = "product_suite"
            
            case subscriptionId = "subscription_id"
            
        }

        public init(productSuite: String?, subscriptionId: String?, type: String?, uniqueId: String?) {
            
            self.uniqueId = uniqueId
            
            self.type = type
            
            self.productSuite = productSuite
            
            self.subscriptionId = subscriptionId
            
        }

        public func duplicate() -> CancelSubscriptionReq {
            let dict = self.dictionary!
            let copy = CancelSubscriptionReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
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
                    productSuite = try container.decode(String.self, forKey: .productSuite)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(productSuite, forKey: .productSuite)
            
            
            
            
            try? container.encodeIfPresent(subscriptionId, forKey: .subscriptionId)
            
            
        }
        
    }
    
    /*
        Model: CancelSubscriptionRes
        Used By: Billing
    */

    class CancelSubscriptionRes: Codable {
        
        
        public var success: Bool?
        
        public var data: Subscription?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
        }

        public init(data: Subscription?, success: Bool?) {
            
            self.success = success
            
            self.data = data
            
        }

        public func duplicate() -> CancelSubscriptionRes {
            let dict = self.dictionary!
            let copy = CancelSubscriptionRes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(Subscription.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
}

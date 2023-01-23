

import Foundation
public extension PlatformClient {
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
            case recurring

            case isTrialPlan = "is_trial_plan"

            case planGroup = "plan_group"

            case tagLines = "tag_lines"

            case currency

            case isActive = "is_active"

            case isVisible = "is_visible"

            case trialPeriod = "trial_period"

            case addons

            case tags

            case type

            case country

            case id = "_id"

            case name

            case description

            case amount

            case productSuiteId = "product_suite_id"

            case createdAt = "created_at"

            case modifiedAt = "modified_at"
        }

        public init(addons: [String]? = nil, amount: Int? = nil, country: String? = nil, createdAt: String? = nil, currency: String? = nil, description: String? = nil, isActive: Bool? = nil, isTrialPlan: Bool? = nil, isVisible: Bool? = nil, modifiedAt: String? = nil, name: String? = nil, planGroup: String? = nil, productSuiteId: String? = nil, recurring: InvoiceItemsPlanRecurring? = nil, tags: [String]? = nil, tagLines: [String]? = nil, trialPeriod: Int? = nil, type: String? = nil, id: String? = nil) {
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

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                recurring = try container.decode(InvoiceItemsPlanRecurring.self, forKey: .recurring)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isTrialPlan = try container.decode(Bool.self, forKey: .isTrialPlan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                planGroup = try container.decode(String.self, forKey: .planGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tagLines = try container.decode([String].self, forKey: .tagLines)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trialPeriod = try container.decode(Int.self, forKey: .trialPeriod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addons = try container.decode([String].self, forKey: .addons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productSuiteId = try container.decode(String.self, forKey: .productSuiteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedAt = try container.decode(String.self, forKey: .modifiedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
}

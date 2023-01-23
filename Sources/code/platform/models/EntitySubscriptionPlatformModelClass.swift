

import Foundation
public extension PlatformClient {
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

            case name

            case status

            case companyId = "company_id"

            case activatedOn = "activated_on"

            case cancelledOn = "cancelled_on"

            case trialDays = "trial_days"

            case trialPeriod = "trial_period"

            case metadata

            case lineItems = "line_items"
        }

        public init(activatedOn: String? = nil, cancelledOn: String? = nil, companyId: Int? = nil, lineItems: [SubscriptionCharge]? = nil, metadata: [String: Any]? = nil, name: String? = nil, status: String? = nil, trialDays: Int? = nil, trialPeriod: SubscriptionTrialPeriod? = nil, id: String? = nil) {
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

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                activatedOn = try container.decode(String.self, forKey: .activatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trialDays = try container.decode(Int.self, forKey: .trialDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trialPeriod = try container.decode(SubscriptionTrialPeriod.self, forKey: .trialPeriod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                metadata = try container.decode([String: Any].self, forKey: .metadata)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineItems = try container.decode([SubscriptionCharge].self, forKey: .lineItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
}

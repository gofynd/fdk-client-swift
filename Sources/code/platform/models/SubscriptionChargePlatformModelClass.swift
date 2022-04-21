

import Foundation
public extension PlatformClient {
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

            case name

            case term

            case pricingType = "pricing_type"

            case price

            case recurring

            case cappedAmount = "capped_amount"

            case activatedOn = "activated_on"

            case cancelledOn = "cancelled_on"

            case billingDate = "billing_date"

            case currentPeriod = "current_period"

            case status

            case isTest = "is_test"

            case metadata
        }

        public init(activatedOn: String? = nil, billingDate: String? = nil, cancelledOn: String? = nil, cappedAmount: Double? = nil, currentPeriod: CurrentPeriod? = nil, isTest: Bool? = nil, metadata: [String: Any]? = nil, name: String? = nil, price: EntityChargePrice? = nil, pricingType: String? = nil, recurring: EntityChargeRecurring? = nil, status: String? = nil, term: String? = nil, id: String? = nil) {
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
                term = try container.decode(String.self, forKey: .term)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricingType = try container.decode(String.self, forKey: .pricingType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(EntityChargePrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                recurring = try container.decode(EntityChargeRecurring.self, forKey: .recurring)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cappedAmount = try container.decode(Double.self, forKey: .cappedAmount)

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
                billingDate = try container.decode(String.self, forKey: .billingDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentPeriod = try container.decode(CurrentPeriod.self, forKey: .currentPeriod)

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
                isTest = try container.decode(Bool.self, forKey: .isTest)

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
}



import Foundation
public extension PlatformClient {
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
            case name

            case term

            case pricingType = "pricing_type"

            case price

            case recurring

            case cappedAmount = "capped_amount"

            case trialDays = "trial_days"

            case isTest = "is_test"

            case metadata
        }

        public init(cappedAmount: Double? = nil, isTest: Bool? = nil, metadata: [String: Any]? = nil, name: String, price: EntityChargePrice, pricingType: String, recurring: EntityChargeRecurring? = nil, term: String, trialDays: Int? = nil) {
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
            } catch {}

            do {
                cappedAmount = try container.decode(Double.self, forKey: .cappedAmount)

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
}

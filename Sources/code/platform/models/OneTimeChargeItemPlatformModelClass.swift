

import Foundation
public extension PlatformClient {
    /*
         Model: OneTimeChargeItem
         Used By: Billing
     */

    class OneTimeChargeItem: Codable {
        public var name: String

        public var term: String?

        public var pricingType: String

        public var price: EntityChargePrice

        public var cappedAmount: Double?

        public var isTest: Bool?

        public var metadata: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case term

            case pricingType = "pricing_type"

            case price

            case cappedAmount = "capped_amount"

            case isTest = "is_test"

            case metadata
        }

        public init(cappedAmount: Double? = nil, isTest: Bool? = nil, metadata: [String: Any]? = nil, name: String, price: EntityChargePrice, pricingType: String, term: String? = nil) {
            self.name = name

            self.term = term

            self.pricingType = pricingType

            self.price = price

            self.cappedAmount = cappedAmount

            self.isTest = isTest

            self.metadata = metadata
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                term = try container.decode(String.self, forKey: .term)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pricingType = try container.decode(String.self, forKey: .pricingType)

            price = try container.decode(EntityChargePrice.self, forKey: .price)

            do {
                cappedAmount = try container.decode(Double.self, forKey: .cappedAmount)

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

            try? container.encodeIfPresent(cappedAmount, forKey: .cappedAmount)

            try? container.encodeIfPresent(isTest, forKey: .isTest)

            try? container.encodeIfPresent(metadata, forKey: .metadata)
        }
    }
}

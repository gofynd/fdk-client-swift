

import Foundation
public extension PlatformClient {
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
            case name

            case trialDays = "trial_days"

            case lineItems = "line_items"

            case isTest = "is_test"

            case returnUrl = "return_url"
        }

        public init(isTest: Bool? = nil, lineItems: [ChargeLineItem], name: String, returnUrl: String, trialDays: Int? = nil) {
            self.name = name

            self.trialDays = trialDays

            self.lineItems = lineItems

            self.isTest = isTest

            self.returnUrl = returnUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                trialDays = try container.decode(Int.self, forKey: .trialDays)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lineItems = try container.decode([ChargeLineItem].self, forKey: .lineItems)

            do {
                isTest = try container.decode(Bool.self, forKey: .isTest)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
}

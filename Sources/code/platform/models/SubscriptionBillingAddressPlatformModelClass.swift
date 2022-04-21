

import Foundation
public extension PlatformClient {
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
            case country

            case state

            case city

            case line1

            case line2

            case postalCode = "postal_code"
        }

        public init(city: String? = nil, country: String? = nil, line1: String? = nil, line2: String? = nil, postalCode: String? = nil, state: String? = nil) {
            self.country = country

            self.state = state

            self.city = city

            self.line1 = line1

            self.line2 = line2

            self.postalCode = postalCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                line1 = try container.decode(String.self, forKey: .line1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                line2 = try container.decode(String.self, forKey: .line2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postalCode = try container.decode(String.self, forKey: .postalCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
}

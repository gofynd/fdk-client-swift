

import Foundation
public extension PublicClient.Partner {
    /*
         Model: Plans
         Used By: Partner
     */

    class Plans: Codable {
        public var additionalCharges: String?

        public var features: String?

        public var name: String?

        public var trialDays: Double?

        public var type: String?

        public var price: Price?

        public var recurring: Recurring?

        public enum CodingKeys: String, CodingKey {
            case additionalCharges = "additional_charges"

            case features

            case name

            case trialDays = "trial_days"

            case type

            case price

            case recurring
        }

        public init(additionalCharges: String? = nil, features: String? = nil, name: String? = nil, price: Price? = nil, recurring: Recurring? = nil, trialDays: Double? = nil, type: String? = nil) {
            self.additionalCharges = additionalCharges

            self.features = features

            self.name = name

            self.trialDays = trialDays

            self.type = type

            self.price = price

            self.recurring = recurring
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                additionalCharges = try container.decode(String.self, forKey: .additionalCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                features = try container.decode(String.self, forKey: .features)

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
                trialDays = try container.decode(Double.self, forKey: .trialDays)

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
                price = try container.decode(Price.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                recurring = try container.decode(Recurring.self, forKey: .recurring)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(additionalCharges, forKey: .additionalCharges)

            try? container.encodeIfPresent(features, forKey: .features)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(trialDays, forKey: .trialDays)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(recurring, forKey: .recurring)
        }
    }
}

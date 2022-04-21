

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonCartsDetail
         Used By: Analytics
     */

    class AbandonCartsDetail: Codable {
        public var propertiesCartId: String?

        public var contextTraitsFirstName: String?

        public var contextTraitsLastName: String?

        public var contextTraitsPhoneNumber: String?

        public var contextTraitsEmail: String?

        public var contextAppApplicationId: String?

        public var propertiesBreakupValuesRawTotal: String?

        public var receivedAt: ReceivedAt?

        public enum CodingKeys: String, CodingKey {
            case propertiesCartId = "properties_cart_id"

            case contextTraitsFirstName = "context_traits_first_name"

            case contextTraitsLastName = "context_traits_last_name"

            case contextTraitsPhoneNumber = "context_traits_phone_number"

            case contextTraitsEmail = "context_traits_email"

            case contextAppApplicationId = "context_app_application_id"

            case propertiesBreakupValuesRawTotal = "properties_breakup_values_raw_total"

            case receivedAt = "received_at"
        }

        public init(contextAppApplicationId: String? = nil, contextTraitsEmail: String? = nil, contextTraitsFirstName: String? = nil, contextTraitsLastName: String? = nil, contextTraitsPhoneNumber: String? = nil, propertiesBreakupValuesRawTotal: String? = nil, propertiesCartId: String? = nil, receivedAt: ReceivedAt? = nil) {
            self.propertiesCartId = propertiesCartId

            self.contextTraitsFirstName = contextTraitsFirstName

            self.contextTraitsLastName = contextTraitsLastName

            self.contextTraitsPhoneNumber = contextTraitsPhoneNumber

            self.contextTraitsEmail = contextTraitsEmail

            self.contextAppApplicationId = contextAppApplicationId

            self.propertiesBreakupValuesRawTotal = propertiesBreakupValuesRawTotal

            self.receivedAt = receivedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                propertiesCartId = try container.decode(String.self, forKey: .propertiesCartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsFirstName = try container.decode(String.self, forKey: .contextTraitsFirstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsLastName = try container.decode(String.self, forKey: .contextTraitsLastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsPhoneNumber = try container.decode(String.self, forKey: .contextTraitsPhoneNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextTraitsEmail = try container.decode(String.self, forKey: .contextTraitsEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contextAppApplicationId = try container.decode(String.self, forKey: .contextAppApplicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                propertiesBreakupValuesRawTotal = try container.decode(String.self, forKey: .propertiesBreakupValuesRawTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                receivedAt = try container.decode(ReceivedAt.self, forKey: .receivedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(propertiesCartId, forKey: .propertiesCartId)

            try? container.encodeIfPresent(contextTraitsFirstName, forKey: .contextTraitsFirstName)

            try? container.encodeIfPresent(contextTraitsLastName, forKey: .contextTraitsLastName)

            try? container.encodeIfPresent(contextTraitsPhoneNumber, forKey: .contextTraitsPhoneNumber)

            try? container.encodeIfPresent(contextTraitsEmail, forKey: .contextTraitsEmail)

            try? container.encodeIfPresent(contextAppApplicationId, forKey: .contextAppApplicationId)

            try? container.encodeIfPresent(propertiesBreakupValuesRawTotal, forKey: .propertiesBreakupValuesRawTotal)

            try? container.encodeIfPresent(receivedAt, forKey: .receivedAt)
        }
    }
}

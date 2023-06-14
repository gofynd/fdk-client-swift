

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var mobileNumber: String

        public var externalOrderId: String

        public var email: String

        public var amount: Double

        public var description: String?

        public var meta: CreatePaymentLinkMeta

        public enum CodingKeys: String, CodingKey {
            case mobileNumber = "mobile_number"

            case externalOrderId = "external_order_id"

            case email

            case amount

            case description

            case meta
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.mobileNumber = mobileNumber

            self.externalOrderId = externalOrderId

            self.email = email

            self.amount = amount

            self.description = description

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

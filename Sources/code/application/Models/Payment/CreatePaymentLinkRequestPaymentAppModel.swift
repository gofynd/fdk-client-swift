

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var meta: CreatePaymentLinkMeta

        public var email: String

        public var externalOrderId: String

        public var amount: Double

        public var mobileNumber: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case email

            case externalOrderId = "external_order_id"

            case amount

            case mobileNumber = "mobile_number"

            case description
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.meta = meta

            self.email = email

            self.externalOrderId = externalOrderId

            self.amount = amount

            self.mobileNumber = mobileNumber

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            email = try container.decode(String.self, forKey: .email)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encode(description, forKey: .description)
        }
    }
}

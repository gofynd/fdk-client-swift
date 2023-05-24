

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var externalOrderId: String

        public var mobileNumber: String

        public var description: String?

        public var meta: CreatePaymentLinkMeta

        public var amount: Double

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case externalOrderId = "external_order_id"

            case mobileNumber = "mobile_number"

            case description

            case meta

            case amount

            case email
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.externalOrderId = externalOrderId

            self.mobileNumber = mobileNumber

            self.description = description

            self.meta = meta

            self.amount = amount

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            amount = try container.decode(Double.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

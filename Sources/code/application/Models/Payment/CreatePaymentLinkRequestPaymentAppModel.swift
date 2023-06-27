

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var description: String?

        public var externalOrderId: String

        public var amount: Double

        public var email: String

        public var meta: CreatePaymentLinkMeta

        public var mobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case description

            case externalOrderId = "external_order_id"

            case amount

            case email

            case meta

            case mobileNumber = "mobile_number"
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.description = description

            self.externalOrderId = externalOrderId

            self.amount = amount

            self.email = email

            self.meta = meta

            self.mobileNumber = mobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
        }
    }
}

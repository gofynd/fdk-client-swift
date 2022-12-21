

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var amount: Double

        public var externalOrderId: String

        public var email: String

        public var meta: CreatePaymentLinkMeta

        public var mobileNumber: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case externalOrderId = "external_order_id"

            case email

            case meta

            case mobileNumber = "mobile_number"

            case description
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.amount = amount

            self.externalOrderId = externalOrderId

            self.email = email

            self.meta = meta

            self.mobileNumber = mobileNumber

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            email = try container.decode(String.self, forKey: .email)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

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

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encode(description, forKey: .description)
        }
    }
}

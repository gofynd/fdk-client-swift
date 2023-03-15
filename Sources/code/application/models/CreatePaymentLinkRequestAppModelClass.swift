

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var amount: Double

        public var email: String

        public var externalOrderId: String

        public var meta: CreatePaymentLinkMeta

        public var description: String?

        public var mobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case email

            case externalOrderId = "external_order_id"

            case meta

            case description

            case mobileNumber = "mobile_number"
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.amount = amount

            self.email = email

            self.externalOrderId = externalOrderId

            self.meta = meta

            self.description = description

            self.mobileNumber = mobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
        }
    }
}

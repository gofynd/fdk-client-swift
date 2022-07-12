

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var description: String?

        public var amount: Double

        public var meta: CreatePaymentLinkMeta

        public var email: String

        public var externalOrderId: String

        public var mobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case description

            case amount

            case meta

            case email

            case externalOrderId = "external_order_id"

            case mobileNumber = "mobile_number"
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.description = description

            self.amount = amount

            self.meta = meta

            self.email = email

            self.externalOrderId = externalOrderId

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

            amount = try container.decode(Double.self, forKey: .amount)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            email = try container.decode(String.self, forKey: .email)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
        }
    }
}

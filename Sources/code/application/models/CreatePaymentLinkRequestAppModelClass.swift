

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var externalOrderId: String

        public var description: String?

        public var mobileNumber: String

        public var meta: CreatePaymentLinkMeta

        public var amount: Double

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case externalOrderId = "external_order_id"

            case description

            case mobileNumber = "mobile_number"

            case meta

            case amount

            case email
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.externalOrderId = externalOrderId

            self.description = description

            self.mobileNumber = mobileNumber

            self.meta = meta

            self.amount = amount

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            amount = try container.decode(Double.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

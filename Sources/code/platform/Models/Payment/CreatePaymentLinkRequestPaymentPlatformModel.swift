

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var externalOrderId: String

        public var mobileNumber: String

        public var meta: CreatePaymentLinkMeta

        public var email: String

        public var amount: Double

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case externalOrderId = "external_order_id"

            case mobileNumber = "mobile_number"

            case meta

            case email

            case amount

            case description
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.externalOrderId = externalOrderId

            self.mobileNumber = mobileNumber

            self.meta = meta

            self.email = email

            self.amount = amount

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encode(description, forKey: .description)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var externalOrderId: String

        public var mobileNumber: String

        public var meta: CreatePaymentLinkMeta

        public var email: String

        public var amount: Double

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case externalOrderId = "external_order_id"

            case mobileNumber = "mobile_number"

            case meta

            case email

            case amount

            case description
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.externalOrderId = externalOrderId

            self.mobileNumber = mobileNumber

            self.meta = meta

            self.email = email

            self.amount = amount

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encode(description, forKey: .description)
        }
    }
}

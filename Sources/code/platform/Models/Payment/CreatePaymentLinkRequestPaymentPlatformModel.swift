

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var meta: CreatePaymentLinkMeta

        public var mobileNumber: String

        public var externalOrderId: String

        public var description: String?

        public var email: String

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case meta

            case mobileNumber = "mobile_number"

            case externalOrderId = "external_order_id"

            case description

            case email

            case amount
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.meta = meta

            self.mobileNumber = mobileNumber

            self.externalOrderId = externalOrderId

            self.description = description

            self.email = email

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var meta: CreatePaymentLinkMeta

        public var mobileNumber: String

        public var externalOrderId: String

        public var description: String?

        public var email: String

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case meta

            case mobileNumber = "mobile_number"

            case externalOrderId = "external_order_id"

            case description

            case email

            case amount
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.meta = meta

            self.mobileNumber = mobileNumber

            self.externalOrderId = externalOrderId

            self.description = description

            self.email = email

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}

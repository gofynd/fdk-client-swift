

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var email: String

        public var description: String?

        public var amount: Double

        public var mobileNumber: String

        public var meta: CreatePaymentLinkMeta

        public var externalOrderId: String

        public enum CodingKeys: String, CodingKey {
            case email

            case description

            case amount

            case mobileNumber = "mobile_number"

            case meta

            case externalOrderId = "external_order_id"
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.email = email

            self.description = description

            self.amount = amount

            self.mobileNumber = mobileNumber

            self.meta = meta

            self.externalOrderId = externalOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */

    class CreatePaymentLinkRequest: Codable {
        public var email: String

        public var description: String?

        public var amount: Double

        public var mobileNumber: String

        public var meta: CreatePaymentLinkMeta

        public var externalOrderId: String

        public enum CodingKeys: String, CodingKey {
            case email

            case description

            case amount

            case mobileNumber = "mobile_number"

            case meta

            case externalOrderId = "external_order_id"
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.email = email

            self.description = description

            self.amount = amount

            self.mobileNumber = mobileNumber

            self.meta = meta

            self.externalOrderId = externalOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
        }
    }
}

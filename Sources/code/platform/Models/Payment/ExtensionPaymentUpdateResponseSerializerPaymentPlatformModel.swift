

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateResponseSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateResponseSerializer: Codable {
        public var status: String

        public var gid: String

        public var totalAmount: Int

        public var platformTransactionDetails: [String: Any]

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case status

            case gid

            case totalAmount = "total_amount"

            case platformTransactionDetails = "platform_transaction_details"

            case currency
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.status = status

            self.gid = gid

            self.totalAmount = totalAmount

            self.platformTransactionDetails = platformTransactionDetails

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ExtensionPaymentUpdateResponseSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateResponseSerializer: Codable {
        public var status: String

        public var gid: String

        public var totalAmount: Int

        public var platformTransactionDetails: [String: Any]

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case status

            case gid

            case totalAmount = "total_amount"

            case platformTransactionDetails = "platform_transaction_details"

            case currency
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.status = status

            self.gid = gid

            self.totalAmount = totalAmount

            self.platformTransactionDetails = platformTransactionDetails

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

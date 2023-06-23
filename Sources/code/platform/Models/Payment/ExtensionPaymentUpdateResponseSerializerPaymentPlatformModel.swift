

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateResponseSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateResponseSerializer: Codable {
        public var platformTransactionDetails: [String: Any]

        public var totalAmount: Int

        public var currency: String

        public var status: String

        public var gid: String

        public enum CodingKeys: String, CodingKey {
            case platformTransactionDetails = "platform_transaction_details"

            case totalAmount = "total_amount"

            case currency

            case status

            case gid
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.platformTransactionDetails = platformTransactionDetails

            self.totalAmount = totalAmount

            self.currency = currency

            self.status = status

            self.gid = gid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ExtensionPaymentUpdateResponseSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateResponseSerializer: Codable {
        public var platformTransactionDetails: [String: Any]

        public var totalAmount: Int

        public var currency: String

        public var status: String

        public var gid: String

        public enum CodingKeys: String, CodingKey {
            case platformTransactionDetails = "platform_transaction_details"

            case totalAmount = "total_amount"

            case currency

            case status

            case gid
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.platformTransactionDetails = platformTransactionDetails

            self.totalAmount = totalAmount

            self.currency = currency

            self.status = status

            self.gid = gid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            gid = try container.decode(String.self, forKey: .gid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gid, forKey: .gid)
        }
    }
}

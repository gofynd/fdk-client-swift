

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateResponseSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateResponseSerializer: Codable {
        public var totalAmount: Int

        public var status: String

        public var platformTransactionDetails: [String: Any]

        public var currency: String

        public var gid: String

        public enum CodingKeys: String, CodingKey {
            case totalAmount = "total_amount"

            case status

            case platformTransactionDetails = "platform_transaction_details"

            case currency

            case gid
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.totalAmount = totalAmount

            self.status = status

            self.platformTransactionDetails = platformTransactionDetails

            self.currency = currency

            self.gid = gid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            status = try container.decode(String.self, forKey: .status)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            currency = try container.decode(String.self, forKey: .currency)

            gid = try container.decode(String.self, forKey: .gid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(currency, forKey: .currency)

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
        public var totalAmount: Int

        public var status: String

        public var platformTransactionDetails: [String: Any]

        public var currency: String

        public var gid: String

        public enum CodingKeys: String, CodingKey {
            case totalAmount = "total_amount"

            case status

            case platformTransactionDetails = "platform_transaction_details"

            case currency

            case gid
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.totalAmount = totalAmount

            self.status = status

            self.platformTransactionDetails = platformTransactionDetails

            self.currency = currency

            self.gid = gid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            status = try container.decode(String.self, forKey: .status)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            currency = try container.decode(String.self, forKey: .currency)

            gid = try container.decode(String.self, forKey: .gid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(gid, forKey: .gid)
        }
    }
}

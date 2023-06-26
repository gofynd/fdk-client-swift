

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: ExtensionPaymentUpdateResponseSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateResponseSerializer: Codable {
        public var gid: String

        public var totalAmount: Int

        public var currency: String

        public var platformTransactionDetails: [String: Any]

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case gid

            case totalAmount = "total_amount"

            case currency

            case platformTransactionDetails = "platform_transaction_details"

            case status
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.gid = gid

            self.totalAmount = totalAmount

            self.currency = currency

            self.platformTransactionDetails = platformTransactionDetails

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: ExtensionPaymentUpdateResponseSerializer
         Used By: Payment
     */

    class ExtensionPaymentUpdateResponseSerializer: Codable {
        public var gid: String

        public var totalAmount: Int

        public var currency: String

        public var platformTransactionDetails: [String: Any]

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case gid

            case totalAmount = "total_amount"

            case currency

            case platformTransactionDetails = "platform_transaction_details"

            case status
        }

        public init(currency: String, gid: String, platformTransactionDetails: [String: Any], status: String, totalAmount: Int) {
            self.gid = gid

            self.totalAmount = totalAmount

            self.currency = currency

            self.platformTransactionDetails = platformTransactionDetails

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            currency = try container.decode(String.self, forKey: .currency)

            platformTransactionDetails = try container.decode([String: Any].self, forKey: .platformTransactionDetails)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

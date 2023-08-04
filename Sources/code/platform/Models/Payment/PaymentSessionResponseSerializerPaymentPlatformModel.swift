

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentSessionResponseSerializer
         Used By: Payment
     */

    class PaymentSessionResponseSerializer: Codable {
        public var gid: String

        public var platformTransactionDetails: [[String: Any]]

        public var totalAmount: Int

        public var status: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case gid

            case platformTransactionDetails = "platform_transaction_details"

            case totalAmount = "total_amount"

            case status

            case currency
        }

        public init(currency: String, gid: String, platformTransactionDetails: [[String: Any]], status: String, totalAmount: Int) {
            self.gid = gid

            self.platformTransactionDetails = platformTransactionDetails

            self.totalAmount = totalAmount

            self.status = status

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            platformTransactionDetails = try container.decode([[String: Any]].self, forKey: .platformTransactionDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            status = try container.decode(String.self, forKey: .status)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentSessionResponseSerializer
         Used By: Payment
     */

    class PaymentSessionResponseSerializer: Codable {
        public var gid: String

        public var platformTransactionDetails: [[String: Any]]

        public var totalAmount: Int

        public var status: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case gid

            case platformTransactionDetails = "platform_transaction_details"

            case totalAmount = "total_amount"

            case status

            case currency
        }

        public init(currency: String, gid: String, platformTransactionDetails: [[String: Any]], status: String, totalAmount: Int) {
            self.gid = gid

            self.platformTransactionDetails = platformTransactionDetails

            self.totalAmount = totalAmount

            self.status = status

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gid = try container.decode(String.self, forKey: .gid)

            platformTransactionDetails = try container.decode([[String: Any]].self, forKey: .platformTransactionDetails)

            totalAmount = try container.decode(Int.self, forKey: .totalAmount)

            status = try container.decode(String.self, forKey: .status)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)

            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}

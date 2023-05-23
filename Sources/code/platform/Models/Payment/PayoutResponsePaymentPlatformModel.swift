

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var aggregator: String

        public var transferType: String

        public var bankDetails: [String: Any]

        public var isActive: Bool

        public var payouts: [String: Any]

        public var uniqueTransferNo: String

        public var created: Bool

        public var success: Bool

        public var paymentStatus: String

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case isActive = "is_active"

            case payouts

            case uniqueTransferNo = "unique_transfer_no"

            case created

            case success

            case paymentStatus = "payment_status"

            case users
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.transferType = transferType

            self.bankDetails = bankDetails

            self.isActive = isActive

            self.payouts = payouts

            self.uniqueTransferNo = uniqueTransferNo

            self.created = created

            self.success = success

            self.paymentStatus = paymentStatus

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var aggregator: String

        public var transferType: String

        public var bankDetails: [String: Any]

        public var isActive: Bool

        public var payouts: [String: Any]

        public var uniqueTransferNo: String

        public var created: Bool

        public var success: Bool

        public var paymentStatus: String

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case isActive = "is_active"

            case payouts

            case uniqueTransferNo = "unique_transfer_no"

            case created

            case success

            case paymentStatus = "payment_status"

            case users
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.transferType = transferType

            self.bankDetails = bankDetails

            self.isActive = isActive

            self.payouts = payouts

            self.uniqueTransferNo = uniqueTransferNo

            self.created = created

            self.success = success

            self.paymentStatus = paymentStatus

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

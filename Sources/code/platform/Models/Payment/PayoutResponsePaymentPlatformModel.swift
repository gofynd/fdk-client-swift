

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var users: [String: Any]

        public var bankDetails: [String: Any]

        public var transferType: String

        public var created: Bool

        public var isActive: Bool

        public var success: Bool

        public var aggregator: String

        public var uniqueTransferNo: String

        public var paymentStatus: String

        public var payouts: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case users

            case bankDetails = "bank_details"

            case transferType = "transfer_type"

            case created

            case isActive = "is_active"

            case success

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case paymentStatus = "payment_status"

            case payouts
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.users = users

            self.bankDetails = bankDetails

            self.transferType = transferType

            self.created = created

            self.isActive = isActive

            self.success = success

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.paymentStatus = paymentStatus

            self.payouts = payouts
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)

            created = try container.decode(Bool.self, forKey: .created)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            payouts = try container.decode([String: Any].self, forKey: .payouts)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(payouts, forKey: .payouts)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var users: [String: Any]

        public var bankDetails: [String: Any]

        public var transferType: String

        public var created: Bool

        public var isActive: Bool

        public var success: Bool

        public var aggregator: String

        public var uniqueTransferNo: String

        public var paymentStatus: String

        public var payouts: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case users

            case bankDetails = "bank_details"

            case transferType = "transfer_type"

            case created

            case isActive = "is_active"

            case success

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case paymentStatus = "payment_status"

            case payouts
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.users = users

            self.bankDetails = bankDetails

            self.transferType = transferType

            self.created = created

            self.isActive = isActive

            self.success = success

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.paymentStatus = paymentStatus

            self.payouts = payouts
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)

            created = try container.decode(Bool.self, forKey: .created)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            payouts = try container.decode([String: Any].self, forKey: .payouts)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(payouts, forKey: .payouts)
        }
    }
}

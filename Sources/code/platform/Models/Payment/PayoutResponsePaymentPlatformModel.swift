

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var success: Bool

        public var users: [String: Any]

        public var aggregator: String

        public var uniqueTransferNo: String

        public var bankDetails: [String: Any]

        public var transferType: String

        public var isActive: Bool

        public var payouts: [String: Any]

        public var created: Bool

        public var paymentStatus: String

        public enum CodingKeys: String, CodingKey {
            case success

            case users

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case bankDetails = "bank_details"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case payouts

            case created

            case paymentStatus = "payment_status"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.success = success

            self.users = users

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.bankDetails = bankDetails

            self.transferType = transferType

            self.isActive = isActive

            self.payouts = payouts

            self.created = created

            self.paymentStatus = paymentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var success: Bool

        public var users: [String: Any]

        public var aggregator: String

        public var uniqueTransferNo: String

        public var bankDetails: [String: Any]

        public var transferType: String

        public var isActive: Bool

        public var payouts: [String: Any]

        public var created: Bool

        public var paymentStatus: String

        public enum CodingKeys: String, CodingKey {
            case success

            case users

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case bankDetails = "bank_details"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case payouts

            case created

            case paymentStatus = "payment_status"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.success = success

            self.users = users

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.bankDetails = bankDetails

            self.transferType = transferType

            self.isActive = isActive

            self.payouts = payouts

            self.created = created

            self.paymentStatus = paymentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
        }
    }
}

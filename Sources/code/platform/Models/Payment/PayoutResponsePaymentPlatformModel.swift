

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var aggregator: String

        public var created: Bool

        public var paymentStatus: String

        public var transferType: String

        public var uniqueTransferNo: String

        public var users: [String: Any]

        public var payouts: [String: Any]

        public var isActive: Bool

        public var success: Bool

        public var bankDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case created

            case paymentStatus = "payment_status"

            case transferType = "transfer_type"

            case uniqueTransferNo = "unique_transfer_no"

            case users

            case payouts

            case isActive = "is_active"

            case success

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.created = created

            self.paymentStatus = paymentStatus

            self.transferType = transferType

            self.uniqueTransferNo = uniqueTransferNo

            self.users = users

            self.payouts = payouts

            self.isActive = isActive

            self.success = success

            self.bankDetails = bankDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            users = try container.decode([String: Any].self, forKey: .users)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
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

        public var created: Bool

        public var paymentStatus: String

        public var transferType: String

        public var uniqueTransferNo: String

        public var users: [String: Any]

        public var payouts: [String: Any]

        public var isActive: Bool

        public var success: Bool

        public var bankDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case created

            case paymentStatus = "payment_status"

            case transferType = "transfer_type"

            case uniqueTransferNo = "unique_transfer_no"

            case users

            case payouts

            case isActive = "is_active"

            case success

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.created = created

            self.paymentStatus = paymentStatus

            self.transferType = transferType

            self.uniqueTransferNo = uniqueTransferNo

            self.users = users

            self.payouts = payouts

            self.isActive = isActive

            self.success = success

            self.bankDetails = bankDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            users = try container.decode([String: Any].self, forKey: .users)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var paymentStatus: String

        public var created: Bool

        public var aggregator: String

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var success: Bool

        public var uniqueTransferNo: String

        public var transferType: String

        public var isActive: Bool

        public var bankDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case paymentStatus = "payment_status"

            case created

            case aggregator

            case payouts

            case users

            case success

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.paymentStatus = paymentStatus

            self.created = created

            self.aggregator = aggregator

            self.payouts = payouts

            self.users = users

            self.success = success

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType

            self.isActive = isActive

            self.bankDetails = bankDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            created = try container.decode(Bool.self, forKey: .created)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            success = try container.decode(Bool.self, forKey: .success)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

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
        public var paymentStatus: String

        public var created: Bool

        public var aggregator: String

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var success: Bool

        public var uniqueTransferNo: String

        public var transferType: String

        public var isActive: Bool

        public var bankDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case paymentStatus = "payment_status"

            case created

            case aggregator

            case payouts

            case users

            case success

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.paymentStatus = paymentStatus

            self.created = created

            self.aggregator = aggregator

            self.payouts = payouts

            self.users = users

            self.success = success

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType

            self.isActive = isActive

            self.bankDetails = bankDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            created = try container.decode(Bool.self, forKey: .created)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            success = try container.decode(Bool.self, forKey: .success)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var isActive: Bool

        public var aggregator: String

        public var users: [String: Any]

        public var created: Bool

        public var paymentStatus: String

        public var transferType: String

        public var payouts: [String: Any]

        public var success: Bool

        public var bankDetails: [String: Any]

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case aggregator

            case users

            case created

            case paymentStatus = "payment_status"

            case transferType = "transfer_type"

            case payouts

            case success

            case bankDetails = "bank_details"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.isActive = isActive

            self.aggregator = aggregator

            self.users = users

            self.created = created

            self.paymentStatus = paymentStatus

            self.transferType = transferType

            self.payouts = payouts

            self.success = success

            self.bankDetails = bankDetails

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            users = try container.decode([String: Any].self, forKey: .users)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            transferType = try container.decode(String.self, forKey: .transferType)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            success = try container.decode(Bool.self, forKey: .success)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var isActive: Bool

        public var aggregator: String

        public var users: [String: Any]

        public var created: Bool

        public var paymentStatus: String

        public var transferType: String

        public var payouts: [String: Any]

        public var success: Bool

        public var bankDetails: [String: Any]

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case aggregator

            case users

            case created

            case paymentStatus = "payment_status"

            case transferType = "transfer_type"

            case payouts

            case success

            case bankDetails = "bank_details"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.isActive = isActive

            self.aggregator = aggregator

            self.users = users

            self.created = created

            self.paymentStatus = paymentStatus

            self.transferType = transferType

            self.payouts = payouts

            self.success = success

            self.bankDetails = bankDetails

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            users = try container.decode([String: Any].self, forKey: .users)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            transferType = try container.decode(String.self, forKey: .transferType)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            success = try container.decode(Bool.self, forKey: .success)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

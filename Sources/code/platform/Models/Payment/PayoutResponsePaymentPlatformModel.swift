

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var bankDetails: [String: Any]

        public var aggregator: String

        public var created: Bool

        public var paymentStatus: String

        public var users: [String: Any]

        public var payouts: [String: Any]

        public var success: Bool

        public var uniqueTransferNo: String

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case aggregator

            case created

            case paymentStatus = "payment_status"

            case users

            case payouts

            case success

            case uniqueTransferNo = "unique_transfer_no"

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.aggregator = aggregator

            self.created = created

            self.paymentStatus = paymentStatus

            self.users = users

            self.payouts = payouts

            self.success = success

            self.uniqueTransferNo = uniqueTransferNo

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            users = try container.decode([String: Any].self, forKey: .users)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            success = try container.decode(Bool.self, forKey: .success)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var bankDetails: [String: Any]

        public var aggregator: String

        public var created: Bool

        public var paymentStatus: String

        public var users: [String: Any]

        public var payouts: [String: Any]

        public var success: Bool

        public var uniqueTransferNo: String

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case aggregator

            case created

            case paymentStatus = "payment_status"

            case users

            case payouts

            case success

            case uniqueTransferNo = "unique_transfer_no"

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.aggregator = aggregator

            self.created = created

            self.paymentStatus = paymentStatus

            self.users = users

            self.payouts = payouts

            self.success = success

            self.uniqueTransferNo = uniqueTransferNo

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            users = try container.decode([String: Any].self, forKey: .users)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            success = try container.decode(Bool.self, forKey: .success)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

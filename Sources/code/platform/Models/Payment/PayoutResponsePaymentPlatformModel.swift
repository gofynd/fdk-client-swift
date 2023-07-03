

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var users: [String: Any]

        public var aggregator: String

        public var paymentStatus: String

        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var isActive: Bool

        public var uniqueTransferNo: String

        public var transferType: String

        public var created: Bool

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case users

            case aggregator

            case paymentStatus = "payment_status"

            case bankDetails = "bank_details"

            case payouts

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"

            case created

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.users = users

            self.aggregator = aggregator

            self.paymentStatus = paymentStatus

            self.bankDetails = bankDetails

            self.payouts = payouts

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType

            self.created = created

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)
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

        public var aggregator: String

        public var paymentStatus: String

        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var isActive: Bool

        public var uniqueTransferNo: String

        public var transferType: String

        public var created: Bool

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case users

            case aggregator

            case paymentStatus = "payment_status"

            case bankDetails = "bank_details"

            case payouts

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"

            case created

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.users = users

            self.aggregator = aggregator

            self.paymentStatus = paymentStatus

            self.bankDetails = bankDetails

            self.payouts = payouts

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType

            self.created = created

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

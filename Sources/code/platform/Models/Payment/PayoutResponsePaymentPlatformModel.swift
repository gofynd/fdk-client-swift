

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var bankDetails: [String: Any]

        public var created: Bool

        public var users: [String: Any]

        public var isActive: Bool

        public var transferType: String

        public var paymentStatus: String

        public var payouts: [String: Any]

        public var aggregator: String

        public var uniqueTransferNo: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case created

            case users

            case isActive = "is_active"

            case transferType = "transfer_type"

            case paymentStatus = "payment_status"

            case payouts

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.created = created

            self.users = users

            self.isActive = isActive

            self.transferType = transferType

            self.paymentStatus = paymentStatus

            self.payouts = payouts

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            created = try container.decode(Bool.self, forKey: .created)

            users = try container.decode([String: Any].self, forKey: .users)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

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
        public var bankDetails: [String: Any]

        public var created: Bool

        public var users: [String: Any]

        public var isActive: Bool

        public var transferType: String

        public var paymentStatus: String

        public var payouts: [String: Any]

        public var aggregator: String

        public var uniqueTransferNo: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case created

            case users

            case isActive = "is_active"

            case transferType = "transfer_type"

            case paymentStatus = "payment_status"

            case payouts

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.created = created

            self.users = users

            self.isActive = isActive

            self.transferType = transferType

            self.paymentStatus = paymentStatus

            self.payouts = payouts

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            created = try container.decode(Bool.self, forKey: .created)

            users = try container.decode([String: Any].self, forKey: .users)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

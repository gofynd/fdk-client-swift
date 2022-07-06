

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var bankDetails: [String: Any]

        public var transferType: String

        public var paymentStatus: String

        public var isActive: Bool

        public var success: Bool

        public var payouts: [String: Any]

        public var aggregator: String

        public var created: Bool

        public var uniqueTransferNo: String

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case transferType = "transfer_type"

            case paymentStatus = "payment_status"

            case isActive = "is_active"

            case success

            case payouts

            case aggregator

            case created

            case uniqueTransferNo = "unique_transfer_no"

            case users
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.transferType = transferType

            self.paymentStatus = paymentStatus

            self.isActive = isActive

            self.success = success

            self.payouts = payouts

            self.aggregator = aggregator

            self.created = created

            self.uniqueTransferNo = uniqueTransferNo

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

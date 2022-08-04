

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var created: Bool

        public var success: Bool

        public var bankDetails: [String: Any]

        public var aggregator: String

        public var uniqueTransferNo: String

        public var users: [String: Any]

        public var payouts: [String: Any]

        public var isActive: Bool

        public var transferType: String

        public var paymentStatus: String

        public enum CodingKeys: String, CodingKey {
            case created

            case success

            case bankDetails = "bank_details"

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case users

            case payouts

            case isActive = "is_active"

            case transferType = "transfer_type"

            case paymentStatus = "payment_status"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.created = created

            self.success = success

            self.bankDetails = bankDetails

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.users = users

            self.payouts = payouts

            self.isActive = isActive

            self.transferType = transferType

            self.paymentStatus = paymentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            users = try container.decode([String: Any].self, forKey: .users)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var uniqueTransferNo: String

        public var aggregator: String

        public var transferType: String

        public var success: Bool

        public var isActive: Bool

        public var created: Bool

        public var users: [String: Any]

        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var paymentStatus: String

        public enum CodingKeys: String, CodingKey {
            case uniqueTransferNo = "unique_transfer_no"

            case aggregator

            case transferType = "transfer_type"

            case success

            case isActive = "is_active"

            case created

            case users

            case bankDetails = "bank_details"

            case payouts

            case paymentStatus = "payment_status"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.uniqueTransferNo = uniqueTransferNo

            self.aggregator = aggregator

            self.transferType = transferType

            self.success = success

            self.isActive = isActive

            self.created = created

            self.users = users

            self.bankDetails = bankDetails

            self.payouts = payouts

            self.paymentStatus = paymentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            success = try container.decode(Bool.self, forKey: .success)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            created = try container.decode(Bool.self, forKey: .created)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var transferType: String

        public var isActive: Bool

        public var users: [String: Any]

        public var uniqueTransferNo: String

        public var bankDetails: [String: Any]

        public var aggregator: String

        public var success: Bool

        public var payouts: [String: Any]

        public var created: Bool

        public var paymentStatus: String

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case isActive = "is_active"

            case users

            case uniqueTransferNo = "unique_transfer_no"

            case bankDetails = "bank_details"

            case aggregator

            case success

            case payouts

            case created

            case paymentStatus = "payment_status"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.transferType = transferType

            self.isActive = isActive

            self.users = users

            self.uniqueTransferNo = uniqueTransferNo

            self.bankDetails = bankDetails

            self.aggregator = aggregator

            self.success = success

            self.payouts = payouts

            self.created = created

            self.paymentStatus = paymentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            users = try container.decode([String: Any].self, forKey: .users)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var success: Bool

        public var created: Bool

        public var paymentStatus: String

        public var aggregator: String

        public var transferType: String

        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var uniqueTransferNo: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case created

            case paymentStatus = "payment_status"

            case aggregator

            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case payouts

            case users

            case uniqueTransferNo = "unique_transfer_no"

            case isActive = "is_active"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.success = success

            self.created = created

            self.paymentStatus = paymentStatus

            self.aggregator = aggregator

            self.transferType = transferType

            self.bankDetails = bankDetails

            self.payouts = payouts

            self.users = users

            self.uniqueTransferNo = uniqueTransferNo

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

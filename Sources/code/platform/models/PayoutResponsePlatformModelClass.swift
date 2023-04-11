

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var bankDetails: [String: Any]

        public var paymentStatus: String

        public var success: Bool

        public var uniqueTransferNo: String

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var transferType: String

        public var created: Bool

        public var aggregator: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case paymentStatus = "payment_status"

            case success

            case uniqueTransferNo = "unique_transfer_no"

            case payouts

            case users

            case transferType = "transfer_type"

            case created

            case aggregator

            case isActive = "is_active"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.paymentStatus = paymentStatus

            self.success = success

            self.uniqueTransferNo = uniqueTransferNo

            self.payouts = payouts

            self.users = users

            self.transferType = transferType

            self.created = created

            self.aggregator = aggregator

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            success = try container.decode(Bool.self, forKey: .success)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            transferType = try container.decode(String.self, forKey: .transferType)

            created = try container.decode(Bool.self, forKey: .created)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

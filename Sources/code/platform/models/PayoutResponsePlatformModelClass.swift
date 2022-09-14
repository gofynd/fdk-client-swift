

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var created: Bool

        public var transferType: String

        public var bankDetails: [String: Any]

        public var success: Bool

        public var paymentStatus: String

        public var payouts: [String: Any]

        public var uniqueTransferNo: String

        public var users: [String: Any]

        public var isActive: Bool

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case created

            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case success

            case paymentStatus = "payment_status"

            case payouts

            case uniqueTransferNo = "unique_transfer_no"

            case users

            case isActive = "is_active"

            case aggregator
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.created = created

            self.transferType = transferType

            self.bankDetails = bankDetails

            self.success = success

            self.paymentStatus = paymentStatus

            self.payouts = payouts

            self.uniqueTransferNo = uniqueTransferNo

            self.users = users

            self.isActive = isActive

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            created = try container.decode(Bool.self, forKey: .created)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            success = try container.decode(Bool.self, forKey: .success)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            users = try container.decode([String: Any].self, forKey: .users)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}

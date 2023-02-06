

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var transferType: String

        public var bankDetails: [String: Any]

        public var users: [String: Any]

        public var created: Bool

        public var payouts: [String: Any]

        public var success: Bool

        public var paymentStatus: String

        public var uniqueTransferNo: String

        public var isActive: Bool

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case users

            case created

            case payouts

            case success

            case paymentStatus = "payment_status"

            case uniqueTransferNo = "unique_transfer_no"

            case isActive = "is_active"

            case aggregator
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.transferType = transferType

            self.bankDetails = bankDetails

            self.users = users

            self.created = created

            self.payouts = payouts

            self.success = success

            self.paymentStatus = paymentStatus

            self.uniqueTransferNo = uniqueTransferNo

            self.isActive = isActive

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            users = try container.decode([String: Any].self, forKey: .users)

            created = try container.decode(Bool.self, forKey: .created)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            success = try container.decode(Bool.self, forKey: .success)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}

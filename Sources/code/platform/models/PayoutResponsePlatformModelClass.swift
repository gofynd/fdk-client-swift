

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var transferType: String

        public var bankDetails: [String: Any]

        public var success: Bool

        public var uniqueTransferNo: String

        public var aggregator: String

        public var created: Bool

        public var paymentStatus: String

        public var payouts: [String: Any]

        public var isActive: Bool

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case success

            case uniqueTransferNo = "unique_transfer_no"

            case aggregator

            case created

            case paymentStatus = "payment_status"

            case payouts

            case isActive = "is_active"

            case users
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.transferType = transferType

            self.bankDetails = bankDetails

            self.success = success

            self.uniqueTransferNo = uniqueTransferNo

            self.aggregator = aggregator

            self.created = created

            self.paymentStatus = paymentStatus

            self.payouts = payouts

            self.isActive = isActive

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            success = try container.decode(Bool.self, forKey: .success)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

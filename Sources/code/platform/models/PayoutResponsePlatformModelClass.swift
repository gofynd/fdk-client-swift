

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var aggregator: String

        public var isActive: Bool

        public var payouts: [String: Any]

        public var uniqueTransferNo: String

        public var paymentStatus: String

        public var transferType: String

        public var success: Bool

        public var created: Bool

        public var bankDetails: [String: Any]

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case isActive = "is_active"

            case payouts

            case uniqueTransferNo = "unique_transfer_no"

            case paymentStatus = "payment_status"

            case transferType = "transfer_type"

            case success

            case created

            case bankDetails = "bank_details"

            case users
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.isActive = isActive

            self.payouts = payouts

            self.uniqueTransferNo = uniqueTransferNo

            self.paymentStatus = paymentStatus

            self.transferType = transferType

            self.success = success

            self.created = created

            self.bankDetails = bankDetails

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            transferType = try container.decode(String.self, forKey: .transferType)

            success = try container.decode(Bool.self, forKey: .success)

            created = try container.decode(Bool.self, forKey: .created)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

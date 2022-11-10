

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var success: Bool

        public var isActive: Bool

        public var created: Bool

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var paymentStatus: String

        public var aggregator: String

        public var transferType: String

        public var bankDetails: [String: Any]

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case success

            case isActive = "is_active"

            case created

            case payouts

            case users

            case paymentStatus = "payment_status"

            case aggregator

            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.success = success

            self.isActive = isActive

            self.created = created

            self.payouts = payouts

            self.users = users

            self.paymentStatus = paymentStatus

            self.aggregator = aggregator

            self.transferType = transferType

            self.bankDetails = bankDetails

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            created = try container.decode(Bool.self, forKey: .created)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

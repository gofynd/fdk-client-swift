

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var paymentStatus: String

        public var success: Bool

        public var transferType: String

        public var aggregator: String

        public var users: [String: Any]

        public var payouts: [String: Any]

        public var created: Bool

        public var bankDetails: [String: Any]

        public var isActive: Bool

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case paymentStatus = "payment_status"

            case success

            case transferType = "transfer_type"

            case aggregator

            case users

            case payouts

            case created

            case bankDetails = "bank_details"

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.paymentStatus = paymentStatus

            self.success = success

            self.transferType = transferType

            self.aggregator = aggregator

            self.users = users

            self.payouts = payouts

            self.created = created

            self.bankDetails = bankDetails

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            success = try container.decode(Bool.self, forKey: .success)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            users = try container.decode([String: Any].self, forKey: .users)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            created = try container.decode(Bool.self, forKey: .created)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

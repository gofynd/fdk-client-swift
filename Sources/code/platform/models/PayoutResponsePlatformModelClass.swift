

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var payouts: [String: Any]

        public var isActive: Bool

        public var success: Bool

        public var aggregator: String

        public var transferType: String

        public var created: Bool

        public var users: [String: Any]

        public var paymentStatus: String

        public var bankDetails: [String: Any]

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case payouts

            case isActive = "is_active"

            case success

            case aggregator

            case transferType = "transfer_type"

            case created

            case users

            case paymentStatus = "payment_status"

            case bankDetails = "bank_details"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.payouts = payouts

            self.isActive = isActive

            self.success = success

            self.aggregator = aggregator

            self.transferType = transferType

            self.created = created

            self.users = users

            self.paymentStatus = paymentStatus

            self.bankDetails = bankDetails

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            created = try container.decode(Bool.self, forKey: .created)

            users = try container.decode([String: Any].self, forKey: .users)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

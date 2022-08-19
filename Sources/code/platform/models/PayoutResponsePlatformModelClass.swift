

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var users: [String: Any]

        public var bankDetails: [String: Any]

        public var created: Bool

        public var transferType: String

        public var payouts: [String: Any]

        public var paymentStatus: String

        public var success: Bool

        public var isActive: Bool

        public var aggregator: String

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case users

            case bankDetails = "bank_details"

            case created

            case transferType = "transfer_type"

            case payouts

            case paymentStatus = "payment_status"

            case success

            case isActive = "is_active"

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.users = users

            self.bankDetails = bankDetails

            self.created = created

            self.transferType = transferType

            self.payouts = payouts

            self.paymentStatus = paymentStatus

            self.success = success

            self.isActive = isActive

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            created = try container.decode(Bool.self, forKey: .created)

            transferType = try container.decode(String.self, forKey: .transferType)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            success = try container.decode(Bool.self, forKey: .success)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

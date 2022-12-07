

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var isActive: Bool

        public var paymentStatus: String

        public var aggregator: String

        public var uniqueTransferNo: String

        public var created: Bool

        public var users: [String: Any]

        public var payouts: [String: Any]

        public var success: Bool

        public var bankDetails: [String: Any]

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case paymentStatus = "payment_status"

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case created

            case users

            case payouts

            case success

            case bankDetails = "bank_details"

            case transferType = "transfer_type"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.isActive = isActive

            self.paymentStatus = paymentStatus

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.created = created

            self.users = users

            self.payouts = payouts

            self.success = success

            self.bankDetails = bankDetails

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            created = try container.decode(Bool.self, forKey: .created)

            users = try container.decode([String: Any].self, forKey: .users)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            success = try container.decode(Bool.self, forKey: .success)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

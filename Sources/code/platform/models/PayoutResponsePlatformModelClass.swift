

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var paymentStatus: String

        public var isActive: Bool

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var aggregator: String

        public var bankDetails: [String: Any]

        public var created: Bool

        public var success: Bool

        public var uniqueTransferNo: String

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case paymentStatus = "payment_status"

            case isActive = "is_active"

            case payouts

            case users

            case aggregator

            case bankDetails = "bank_details"

            case created

            case success

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.paymentStatus = paymentStatus

            self.isActive = isActive

            self.payouts = payouts

            self.users = users

            self.aggregator = aggregator

            self.bankDetails = bankDetails

            self.created = created

            self.success = success

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

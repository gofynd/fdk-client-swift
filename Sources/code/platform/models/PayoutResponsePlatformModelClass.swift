

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var isActive: Bool

        public var aggregator: String

        public var created: Bool

        public var paymentStatus: String

        public var success: Bool

        public var payouts: [String: Any]

        public var bankDetails: [String: Any]

        public var uniqueTransferNo: String

        public var users: [String: Any]

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case aggregator

            case created

            case paymentStatus = "payment_status"

            case success

            case payouts

            case bankDetails = "bank_details"

            case uniqueTransferNo = "unique_transfer_no"

            case users

            case transferType = "transfer_type"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.isActive = isActive

            self.aggregator = aggregator

            self.created = created

            self.paymentStatus = paymentStatus

            self.success = success

            self.payouts = payouts

            self.bankDetails = bankDetails

            self.uniqueTransferNo = uniqueTransferNo

            self.users = users

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            created = try container.decode(Bool.self, forKey: .created)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            success = try container.decode(Bool.self, forKey: .success)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            users = try container.decode([String: Any].self, forKey: .users)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var transferType: String

        public var aggregator: String

        public var users: [String: Any]

        public var isActive: Bool

        public var uniqueTransferNo: String

        public var paymentStatus: String

        public var created: Bool

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case payouts

            case transferType = "transfer_type"

            case aggregator

            case users

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case paymentStatus = "payment_status"

            case created

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.payouts = payouts

            self.transferType = transferType

            self.aggregator = aggregator

            self.users = users

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.paymentStatus = paymentStatus

            self.created = created

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            users = try container.decode([String: Any].self, forKey: .users)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

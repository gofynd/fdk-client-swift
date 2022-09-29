

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var bankDetails: [String: Any]

        public var paymentStatus: String

        public var isActive: Bool

        public var transferType: String

        public var uniqueTransferNo: String

        public var payouts: [String: Any]

        public var created: Bool

        public var users: [String: Any]

        public var aggregator: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case paymentStatus = "payment_status"

            case isActive = "is_active"

            case transferType = "transfer_type"

            case uniqueTransferNo = "unique_transfer_no"

            case payouts

            case created

            case users

            case aggregator

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.paymentStatus = paymentStatus

            self.isActive = isActive

            self.transferType = transferType

            self.uniqueTransferNo = uniqueTransferNo

            self.payouts = payouts

            self.created = created

            self.users = users

            self.aggregator = aggregator

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            created = try container.decode(Bool.self, forKey: .created)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

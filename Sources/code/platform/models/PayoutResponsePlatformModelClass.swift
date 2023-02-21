

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var isActive: Bool

        public var paymentStatus: String

        public var bankDetails: [String: Any]

        public var payouts: [String: Any]

        public var users: [String: Any]

        public var created: Bool

        public var transferType: String

        public var aggregator: String

        public var uniqueTransferNo: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case paymentStatus = "payment_status"

            case bankDetails = "bank_details"

            case payouts

            case users

            case created

            case transferType = "transfer_type"

            case aggregator

            case uniqueTransferNo = "unique_transfer_no"

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.isActive = isActive

            self.paymentStatus = paymentStatus

            self.bankDetails = bankDetails

            self.payouts = payouts

            self.users = users

            self.created = created

            self.transferType = transferType

            self.aggregator = aggregator

            self.uniqueTransferNo = uniqueTransferNo

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            users = try container.decode([String: Any].self, forKey: .users)

            created = try container.decode(Bool.self, forKey: .created)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

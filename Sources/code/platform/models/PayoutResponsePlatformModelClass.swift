

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var uniqueTransferNo: String

        public var transferType: String

        public var bankDetails: [String: Any]

        public var paymentStatus: String

        public var payouts: [String: Any]

        public var isActive: Bool

        public var created: Bool

        public var aggregator: String

        public var users: [String: Any]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case paymentStatus = "payment_status"

            case payouts

            case isActive = "is_active"

            case created

            case aggregator

            case users

            case success
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType

            self.bankDetails = bankDetails

            self.paymentStatus = paymentStatus

            self.payouts = payouts

            self.isActive = isActive

            self.created = created

            self.aggregator = aggregator

            self.users = users

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            created = try container.decode(Bool.self, forKey: .created)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            users = try container.decode([String: Any].self, forKey: .users)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

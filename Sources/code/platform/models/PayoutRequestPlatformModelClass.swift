

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var uniqueExternalId: String

        public var transferType: String

        public var bankDetails: PayoutBankDetails

        public var isActive: Bool

        public var aggregator: String

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case uniqueExternalId = "unique_external_id"

            case transferType = "transfer_type"

            case bankDetails = "bank_details"

            case isActive = "is_active"

            case aggregator

            case users
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.uniqueExternalId = uniqueExternalId

            self.transferType = transferType

            self.bankDetails = bankDetails

            self.isActive = isActive

            self.aggregator = aggregator

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            transferType = try container.decode(String.self, forKey: .transferType)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

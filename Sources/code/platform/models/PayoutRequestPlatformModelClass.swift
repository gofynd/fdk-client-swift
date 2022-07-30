

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var aggregator: String

        public var transferType: String

        public var isActive: Bool

        public var bankDetails: PayoutBankDetails

        public var uniqueExternalId: String

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case transferType = "transfer_type"

            case isActive = "is_active"

            case bankDetails = "bank_details"

            case uniqueExternalId = "unique_external_id"

            case users
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.transferType = transferType

            self.isActive = isActive

            self.bankDetails = bankDetails

            self.uniqueExternalId = uniqueExternalId

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var transferType: String

        public var aggregator: String

        public var users: [String: Any]

        public var bankDetails: PayoutBankDetails

        public var isActive: Bool

        public var uniqueExternalId: String

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case aggregator

            case users

            case bankDetails = "bank_details"

            case isActive = "is_active"

            case uniqueExternalId = "unique_external_id"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.transferType = transferType

            self.aggregator = aggregator

            self.users = users

            self.bankDetails = bankDetails

            self.isActive = isActive

            self.uniqueExternalId = uniqueExternalId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var bankDetails: PayoutBankDetails

        public var users: [String: Any]

        public var isActive: Bool

        public var aggregator: String

        public var transferType: String

        public var uniqueExternalId: String

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case users

            case isActive = "is_active"

            case aggregator

            case transferType = "transfer_type"

            case uniqueExternalId = "unique_external_id"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.users = users

            self.isActive = isActive

            self.aggregator = aggregator

            self.transferType = transferType

            self.uniqueExternalId = uniqueExternalId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            users = try container.decode([String: Any].self, forKey: .users)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }
}

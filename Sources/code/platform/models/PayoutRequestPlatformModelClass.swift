

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var aggregator: String

        public var isActive: Bool

        public var uniqueExternalId: String

        public var bankDetails: PayoutBankDetails

        public var users: [String: Any]

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case isActive = "is_active"

            case uniqueExternalId = "unique_external_id"

            case bankDetails = "bank_details"

            case users

            case transferType = "transfer_type"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.isActive = isActive

            self.uniqueExternalId = uniqueExternalId

            self.bankDetails = bankDetails

            self.users = users

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            users = try container.decode([String: Any].self, forKey: .users)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

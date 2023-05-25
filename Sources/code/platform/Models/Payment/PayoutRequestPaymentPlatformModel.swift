

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var isActive: Bool

        public var transferType: String

        public var users: [String: Any]

        public var uniqueExternalId: String

        public var aggregator: String

        public var bankDetails: PayoutBankDetails

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case transferType = "transfer_type"

            case users

            case uniqueExternalId = "unique_external_id"

            case aggregator

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.isActive = isActive

            self.transferType = transferType

            self.users = users

            self.uniqueExternalId = uniqueExternalId

            self.aggregator = aggregator

            self.bankDetails = bankDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            users = try container.decode([String: Any].self, forKey: .users)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var isActive: Bool

        public var transferType: String

        public var users: [String: Any]

        public var uniqueExternalId: String

        public var aggregator: String

        public var bankDetails: PayoutBankDetails

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case transferType = "transfer_type"

            case users

            case uniqueExternalId = "unique_external_id"

            case aggregator

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.isActive = isActive

            self.transferType = transferType

            self.users = users

            self.uniqueExternalId = uniqueExternalId

            self.aggregator = aggregator

            self.bankDetails = bankDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            users = try container.decode([String: Any].self, forKey: .users)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
        }
    }
}

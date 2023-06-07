

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var bankDetails: PayoutBankDetails

        public var uniqueExternalId: String

        public var aggregator: String

        public var isActive: Bool

        public var transferType: String

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case uniqueExternalId = "unique_external_id"

            case aggregator

            case isActive = "is_active"

            case transferType = "transfer_type"

            case users
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.uniqueExternalId = uniqueExternalId

            self.aggregator = aggregator

            self.isActive = isActive

            self.transferType = transferType

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var bankDetails: PayoutBankDetails

        public var uniqueExternalId: String

        public var aggregator: String

        public var isActive: Bool

        public var transferType: String

        public var users: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case bankDetails = "bank_details"

            case uniqueExternalId = "unique_external_id"

            case aggregator

            case isActive = "is_active"

            case transferType = "transfer_type"

            case users
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.bankDetails = bankDetails

            self.uniqueExternalId = uniqueExternalId

            self.aggregator = aggregator

            self.isActive = isActive

            self.transferType = transferType

            self.users = users
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            users = try container.decode([String: Any].self, forKey: .users)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(users, forKey: .users)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var users: [String: Any]

        public var bankDetails: PayoutBankDetails

        public var transferType: String

        public var isActive: Bool

        public var aggregator: String

        public var uniqueExternalId: String

        public enum CodingKeys: String, CodingKey {
            case users

            case bankDetails = "bank_details"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case aggregator

            case uniqueExternalId = "unique_external_id"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.users = users

            self.bankDetails = bankDetails

            self.transferType = transferType

            self.isActive = isActive

            self.aggregator = aggregator

            self.uniqueExternalId = uniqueExternalId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var users: [String: Any]

        public var bankDetails: PayoutBankDetails

        public var transferType: String

        public var isActive: Bool

        public var aggregator: String

        public var uniqueExternalId: String

        public enum CodingKeys: String, CodingKey {
            case users

            case bankDetails = "bank_details"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case aggregator

            case uniqueExternalId = "unique_external_id"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.users = users

            self.bankDetails = bankDetails

            self.transferType = transferType

            self.isActive = isActive

            self.aggregator = aggregator

            self.uniqueExternalId = uniqueExternalId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var transferType: String

        public var uniqueExternalId: String

        public var users: [String: Any]

        public var bankDetails: PayoutBankDetails

        public var aggregator: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case uniqueExternalId = "unique_external_id"

            case users

            case bankDetails = "bank_details"

            case aggregator

            case isActive = "is_active"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.transferType = transferType

            self.uniqueExternalId = uniqueExternalId

            self.users = users

            self.bankDetails = bankDetails

            self.aggregator = aggregator

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var transferType: String

        public var uniqueExternalId: String

        public var users: [String: Any]

        public var bankDetails: PayoutBankDetails

        public var aggregator: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case uniqueExternalId = "unique_external_id"

            case users

            case bankDetails = "bank_details"

            case aggregator

            case isActive = "is_active"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.transferType = transferType

            self.uniqueExternalId = uniqueExternalId

            self.users = users

            self.bankDetails = bankDetails

            self.aggregator = aggregator

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
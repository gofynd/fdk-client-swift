

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var isDefault: Bool

        public var uniqueTransferNo: [String: Any]

        public var transferType: String

        public var isActive: Bool

        public var payoutsAggregators: [[String: Any]]

        public var moreAttributes: [String: Any]

        public var customers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"

            case customers
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.isDefault = isDefault

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            customers = try container.decode([String: Any].self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var isDefault: Bool

        public var uniqueTransferNo: [String: Any]

        public var transferType: String

        public var isActive: Bool

        public var payoutsAggregators: [[String: Any]]

        public var moreAttributes: [String: Any]

        public var customers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"

            case customers
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.isDefault = isDefault

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            customers = try container.decode([String: Any].self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var uniqueTransferNo: [String: Any]

        public var moreAttributes: [String: Any]

        public var transferType: String

        public var isDefault: Bool

        public var isActive: Bool

        public var payoutsAggregators: [[String: Any]]

        public var customers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case transferType = "transfer_type"

            case isDefault = "is_default"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case customers
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.transferType = transferType

            self.isDefault = isDefault

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            transferType = try container.decode(String.self, forKey: .transferType)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            customers = try container.decode([String: Any].self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

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
        public var uniqueTransferNo: [String: Any]

        public var moreAttributes: [String: Any]

        public var transferType: String

        public var isDefault: Bool

        public var isActive: Bool

        public var payoutsAggregators: [[String: Any]]

        public var customers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case transferType = "transfer_type"

            case isDefault = "is_default"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case customers
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.transferType = transferType

            self.isDefault = isDefault

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            transferType = try container.decode(String.self, forKey: .transferType)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            customers = try container.decode([String: Any].self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(customers, forKey: .customers)
        }
    }
}

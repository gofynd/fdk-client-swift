

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var moreAttributes: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var isActive: Bool

        public var uniqueTransferNo: [String: Any]

        public var isDefault: Bool

        public var transferType: String

        public var customers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case moreAttributes = "more_attributes"

            case payoutsAggregators = "payouts_aggregators"

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case isDefault = "is_default"

            case transferType = "transfer_type"

            case customers
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.moreAttributes = moreAttributes

            self.payoutsAggregators = payoutsAggregators

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.isDefault = isDefault

            self.transferType = transferType

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode([String: Any].self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

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
        public var moreAttributes: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var isActive: Bool

        public var uniqueTransferNo: [String: Any]

        public var isDefault: Bool

        public var transferType: String

        public var customers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case moreAttributes = "more_attributes"

            case payoutsAggregators = "payouts_aggregators"

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case isDefault = "is_default"

            case transferType = "transfer_type"

            case customers
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.moreAttributes = moreAttributes

            self.payoutsAggregators = payoutsAggregators

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.isDefault = isDefault

            self.transferType = transferType

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode([String: Any].self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)
        }
    }
}

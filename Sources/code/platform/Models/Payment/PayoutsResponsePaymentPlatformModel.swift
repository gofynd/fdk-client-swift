

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var payoutsAggregators: [[String: Any]]

        public var transferType: String

        public var customers: [String: Any]

        public var uniqueTransferNo: [String: Any]

        public var moreAttributes: [String: Any]

        public var isDefault: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case customers

            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case isDefault = "is_default"

            case isActive = "is_active"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.isDefault = isDefault

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode([String: Any].self, forKey: .customers)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var payoutsAggregators: [[String: Any]]

        public var transferType: String

        public var customers: [String: Any]

        public var uniqueTransferNo: [String: Any]

        public var moreAttributes: [String: Any]

        public var isDefault: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case customers

            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case isDefault = "is_default"

            case isActive = "is_active"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.isDefault = isDefault

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode([String: Any].self, forKey: .customers)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

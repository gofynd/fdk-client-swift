

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var uniqueTransferNo: [String: Any]

        public var moreAttributes: [String: Any]

        public var isDefault: Bool

        public var customers: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case isDefault = "is_default"

            case customers

            case payoutsAggregators = "payouts_aggregators"

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.isDefault = isDefault

            self.customers = customers

            self.payoutsAggregators = payoutsAggregators

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            customers = try container.decode([String: Any].self, forKey: .customers)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
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

        public var isDefault: Bool

        public var customers: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case isDefault = "is_default"

            case customers

            case payoutsAggregators = "payouts_aggregators"

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.isDefault = isDefault

            self.customers = customers

            self.payoutsAggregators = payoutsAggregators

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            customers = try container.decode([String: Any].self, forKey: .customers)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var transferType: String

        public var isActive: Bool

        public var payoutsAggregators: [[String: Any]]

        public var isDefault: Bool

        public var moreAttributes: [String: Any]

        public var customers: [String: Any]

        public var uniqueTransferNo: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case isDefault = "is_default"

            case moreAttributes = "more_attributes"

            case customers

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.transferType = transferType

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.isDefault = isDefault

            self.moreAttributes = moreAttributes

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            customers = try container.decode([String: Any].self, forKey: .customers)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var transferType: String

        public var isActive: Bool

        public var payoutsAggregators: [[String: Any]]

        public var isDefault: Bool

        public var moreAttributes: [String: Any]

        public var customers: [String: Any]

        public var uniqueTransferNo: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case isDefault = "is_default"

            case moreAttributes = "more_attributes"

            case customers

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.transferType = transferType

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.isDefault = isDefault

            self.moreAttributes = moreAttributes

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            customers = try container.decode([String: Any].self, forKey: .customers)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

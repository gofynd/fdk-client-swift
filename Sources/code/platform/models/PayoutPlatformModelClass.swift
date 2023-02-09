

import Foundation
public extension PlatformClient {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var customers: [String: Any]

        public var isActive: Bool

        public var moreAttributes: [String: Any]

        public var isDefault: Bool

        public var payoutsAggregators: [[String: Any]]

        public var uniqueTransferNo: [String: Any]

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case customers

            case isActive = "is_active"

            case moreAttributes = "more_attributes"

            case isDefault = "is_default"

            case payoutsAggregators = "payouts_aggregators"

            case uniqueTransferNo = "unique_transfer_no"

            case transferType = "transfer_type"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.customers = customers

            self.isActive = isActive

            self.moreAttributes = moreAttributes

            self.isDefault = isDefault

            self.payoutsAggregators = payoutsAggregators

            self.uniqueTransferNo = uniqueTransferNo

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customers = try container.decode([String: Any].self, forKey: .customers)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

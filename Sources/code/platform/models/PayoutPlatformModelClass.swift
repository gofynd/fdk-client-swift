

import Foundation
public extension PlatformClient {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var isActive: Bool

        public var transferType: String

        public var payoutsAggregators: [[String: Any]]

        public var customers: [String: Any]

        public var moreAttributes: [String: Any]

        public var uniqueTransferNo: [String: Any]

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case transferType = "transfer_type"

            case payoutsAggregators = "payouts_aggregators"

            case customers

            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"

            case isDefault = "is_default"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.isActive = isActive

            self.transferType = transferType

            self.payoutsAggregators = payoutsAggregators

            self.customers = customers

            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            customers = try container.decode([String: Any].self, forKey: .customers)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}

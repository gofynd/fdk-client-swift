

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var isDefault: Bool

        public var isActive: Bool

        public var transferType: String

        public var customers: [String: Any]

        public var moreAttributes: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var uniqueTransferNo: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case isActive = "is_active"

            case transferType = "transfer_type"

            case customers

            case moreAttributes = "more_attributes"

            case payoutsAggregators = "payouts_aggregators"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.isDefault = isDefault

            self.isActive = isActive

            self.transferType = transferType

            self.customers = customers

            self.moreAttributes = moreAttributes

            self.payoutsAggregators = payoutsAggregators

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode([String: Any].self, forKey: .customers)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

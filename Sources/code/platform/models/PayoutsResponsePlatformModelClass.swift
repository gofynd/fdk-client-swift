

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var uniqueTransferNo: [String: Any]

        public var customers: [String: Any]

        public var isActive: Bool

        public var transferType: String

        public var isDefault: Bool

        public var moreAttributes: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case uniqueTransferNo = "unique_transfer_no"

            case customers

            case isActive = "is_active"

            case transferType = "transfer_type"

            case isDefault = "is_default"

            case moreAttributes = "more_attributes"

            case payoutsAggregators = "payouts_aggregators"
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.uniqueTransferNo = uniqueTransferNo

            self.customers = customers

            self.isActive = isActive

            self.transferType = transferType

            self.isDefault = isDefault

            self.moreAttributes = moreAttributes

            self.payoutsAggregators = payoutsAggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            customers = try container.decode([String: Any].self, forKey: .customers)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
        }
    }
}

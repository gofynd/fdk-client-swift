

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var moreAttributes: PayoutMoreAttributes

        public var uniqueTransferNo: String

        public var isDefault: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var customers: PayoutCustomer

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"

            case isDefault = "is_default"

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case customers

            case isActive = "is_active"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo

            self.isDefault = isDefault

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.customers = customers

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var moreAttributes: PayoutMoreAttributes

        public var uniqueTransferNo: String

        public var isDefault: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var customers: PayoutCustomer

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"

            case isDefault = "is_default"

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case customers

            case isActive = "is_active"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo

            self.isDefault = isDefault

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.customers = customers

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

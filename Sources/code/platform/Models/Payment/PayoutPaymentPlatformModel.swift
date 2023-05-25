

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var isDefault: Bool

        public var isActive: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var moreAttributes: PayoutMoreAttributes

        public var uniqueTransferNo: String

        public var customers: PayoutCustomer

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"

            case customers
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isDefault = isDefault

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(customers, forKey: .customers)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var isDefault: Bool

        public var isActive: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var moreAttributes: PayoutMoreAttributes

        public var uniqueTransferNo: String

        public var customers: PayoutCustomer

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case isActive = "is_active"

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"

            case customers
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isDefault = isDefault

            self.isActive = isActive

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo

            self.customers = customers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(customers, forKey: .customers)
        }
    }
}

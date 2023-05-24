

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var customers: PayoutCustomer

        public var payoutsAggregators: [PayoutAggregator]?

        public var isDefault: Bool

        public var uniqueTransferNo: String

        public var moreAttributes: PayoutMoreAttributes

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case customers

            case payoutsAggregators = "payouts_aggregators"

            case isDefault = "is_default"

            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.customers = customers

            self.payoutsAggregators = payoutsAggregators

            self.isDefault = isDefault

            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var customers: PayoutCustomer

        public var payoutsAggregators: [PayoutAggregator]?

        public var isDefault: Bool

        public var uniqueTransferNo: String

        public var moreAttributes: PayoutMoreAttributes

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case customers

            case payoutsAggregators = "payouts_aggregators"

            case isDefault = "is_default"

            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.customers = customers

            self.payoutsAggregators = payoutsAggregators

            self.isDefault = isDefault

            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

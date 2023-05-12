

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var payoutsAggregators: [PayoutAggregator]?

        public var uniqueTransferNo: String

        public var isDefault: Bool

        public var moreAttributes: PayoutMoreAttributes

        public var customers: PayoutCustomer

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case payoutsAggregators = "payouts_aggregators"

            case uniqueTransferNo = "unique_transfer_no"

            case isDefault = "is_default"

            case moreAttributes = "more_attributes"

            case customers

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.payoutsAggregators = payoutsAggregators

            self.uniqueTransferNo = uniqueTransferNo

            self.isDefault = isDefault

            self.moreAttributes = moreAttributes

            self.customers = customers

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)

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
        public var payoutsAggregators: [PayoutAggregator]?

        public var uniqueTransferNo: String

        public var isDefault: Bool

        public var moreAttributes: PayoutMoreAttributes

        public var customers: PayoutCustomer

        public var isActive: Bool

        public var transferType: String

        public enum CodingKeys: String, CodingKey {
            case payoutsAggregators = "payouts_aggregators"

            case uniqueTransferNo = "unique_transfer_no"

            case isDefault = "is_default"

            case moreAttributes = "more_attributes"

            case customers

            case isActive = "is_active"

            case transferType = "transfer_type"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.payoutsAggregators = payoutsAggregators

            self.uniqueTransferNo = uniqueTransferNo

            self.isDefault = isDefault

            self.moreAttributes = moreAttributes

            self.customers = customers

            self.isActive = isActive

            self.transferType = transferType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferType = try container.decode(String.self, forKey: .transferType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferType, forKey: .transferType)
        }
    }
}

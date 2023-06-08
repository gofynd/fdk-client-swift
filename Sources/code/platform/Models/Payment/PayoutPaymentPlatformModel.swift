

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var isActive: Bool

        public var uniqueTransferNo: String

        public var moreAttributes: PayoutMoreAttributes

        public var customers: PayoutCustomer

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case customers

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case isDefault = "is_default"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.customers = customers

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var isActive: Bool

        public var uniqueTransferNo: String

        public var moreAttributes: PayoutMoreAttributes

        public var customers: PayoutCustomer

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"

            case moreAttributes = "more_attributes"

            case customers

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case isDefault = "is_default"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo

            self.moreAttributes = moreAttributes

            self.customers = customers

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}

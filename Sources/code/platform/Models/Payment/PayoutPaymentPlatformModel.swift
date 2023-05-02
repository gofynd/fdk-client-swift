

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var transferType: String

        public var isActive: Bool

        public var customers: PayoutCustomer

        public var uniqueTransferNo: String

        public var payoutsAggregators: [PayoutAggregator]?

        public var moreAttributes: PayoutMoreAttributes

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case isActive = "is_active"

            case customers

            case uniqueTransferNo = "unique_transfer_no"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"

            case isDefault = "is_default"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.transferType = transferType

            self.isActive = isActive

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

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
        public var transferType: String

        public var isActive: Bool

        public var customers: PayoutCustomer

        public var uniqueTransferNo: String

        public var payoutsAggregators: [PayoutAggregator]?

        public var moreAttributes: PayoutMoreAttributes

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case transferType = "transfer_type"

            case isActive = "is_active"

            case customers

            case uniqueTransferNo = "unique_transfer_no"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"

            case isDefault = "is_default"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.transferType = transferType

            self.isActive = isActive

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}

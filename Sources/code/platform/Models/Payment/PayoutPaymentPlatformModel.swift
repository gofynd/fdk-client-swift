

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var customers: PayoutCustomer

        public var transferType: String

        public var isActive: Bool

        public var isDefault: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var moreAttributes: PayoutMoreAttributes

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case customers

            case transferType = "transfer_type"

            case isActive = "is_active"

            case isDefault = "is_default"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.customers = customers

            self.transferType = transferType

            self.isActive = isActive

            self.isDefault = isDefault

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
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

        public var transferType: String

        public var isActive: Bool

        public var isDefault: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var moreAttributes: PayoutMoreAttributes

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case customers

            case transferType = "transfer_type"

            case isActive = "is_active"

            case isDefault = "is_default"

            case payoutsAggregators = "payouts_aggregators"

            case moreAttributes = "more_attributes"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.customers = customers

            self.transferType = transferType

            self.isActive = isActive

            self.isDefault = isDefault

            self.payoutsAggregators = payoutsAggregators

            self.moreAttributes = moreAttributes

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

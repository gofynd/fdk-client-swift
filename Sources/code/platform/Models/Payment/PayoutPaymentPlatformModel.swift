

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var isDefault: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var customers: PayoutCustomer

        public var moreAttributes: PayoutMoreAttributes

        public var isActive: Bool

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case customers

            case moreAttributes = "more_attributes"

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isDefault = isDefault

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.customers = customers

            self.moreAttributes = moreAttributes

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

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
        public var isDefault: Bool

        public var payoutsAggregators: [PayoutAggregator]?

        public var transferType: String

        public var customers: PayoutCustomer

        public var moreAttributes: PayoutMoreAttributes

        public var isActive: Bool

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case customers

            case moreAttributes = "more_attributes"

            case isActive = "is_active"

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isDefault = isDefault

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.customers = customers

            self.moreAttributes = moreAttributes

            self.isActive = isActive

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}

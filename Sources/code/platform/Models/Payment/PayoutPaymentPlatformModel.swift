

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: Payout
         Used By: Payment
     */

    class Payout: Codable {
        public var isActive: Bool

        public var moreAttributes: PayoutMoreAttributes

        public var payoutsAggregators: [PayoutAggregator]?

        public var isDefault: Bool

        public var transferType: String

        public var customers: PayoutCustomer

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case moreAttributes = "more_attributes"

            case payoutsAggregators = "payouts_aggregators"

            case isDefault = "is_default"

            case transferType = "transfer_type"

            case customers

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isActive = isActive

            self.moreAttributes = moreAttributes

            self.payoutsAggregators = payoutsAggregators

            self.isDefault = isDefault

            self.transferType = transferType

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

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
        public var isActive: Bool

        public var moreAttributes: PayoutMoreAttributes

        public var payoutsAggregators: [PayoutAggregator]?

        public var isDefault: Bool

        public var transferType: String

        public var customers: PayoutCustomer

        public var uniqueTransferNo: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case moreAttributes = "more_attributes"

            case payoutsAggregators = "payouts_aggregators"

            case isDefault = "is_default"

            case transferType = "transfer_type"

            case customers

            case uniqueTransferNo = "unique_transfer_no"
        }

        public init(customers: PayoutCustomer, isActive: Bool, isDefault: Bool, moreAttributes: PayoutMoreAttributes, payoutsAggregators: [PayoutAggregator]? = nil, transferType: String, uniqueTransferNo: String) {
            self.isActive = isActive

            self.moreAttributes = moreAttributes

            self.payoutsAggregators = payoutsAggregators

            self.isDefault = isDefault

            self.transferType = transferType

            self.customers = customers

            self.uniqueTransferNo = uniqueTransferNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            moreAttributes = try container.decode(PayoutMoreAttributes.self, forKey: .moreAttributes)

            do {
                payoutsAggregators = try container.decode([PayoutAggregator].self, forKey: .payoutsAggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            transferType = try container.decode(String.self, forKey: .transferType)

            customers = try container.decode(PayoutCustomer.self, forKey: .customers)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(customers, forKey: .customers)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
        }
    }
}



import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutAggregator
         Used By: Payment
     */

    class PayoutAggregator: Codable {
        public var aggregatorFundId: Int?

        public var aggregatorId: Int?

        public var payoutDetailsId: Int?

        public enum CodingKeys: String, CodingKey {
            case aggregatorFundId = "aggregator_fund_id"

            case aggregatorId = "aggregator_id"

            case payoutDetailsId = "payout_details_id"
        }

        public init(aggregatorFundId: Int? = nil, aggregatorId: Int? = nil, payoutDetailsId: Int? = nil) {
            self.aggregatorFundId = aggregatorFundId

            self.aggregatorId = aggregatorId

            self.payoutDetailsId = payoutDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorFundId = try container.decode(Int.self, forKey: .aggregatorFundId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payoutDetailsId = try container.decode(Int.self, forKey: .payoutDetailsId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorFundId, forKey: .aggregatorFundId)

            try? container.encode(aggregatorId, forKey: .aggregatorId)

            try? container.encode(payoutDetailsId, forKey: .payoutDetailsId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutAggregator
         Used By: Payment
     */

    class PayoutAggregator: Codable {
        public var aggregatorFundId: Int?

        public var aggregatorId: Int?

        public var payoutDetailsId: Int?

        public enum CodingKeys: String, CodingKey {
            case aggregatorFundId = "aggregator_fund_id"

            case aggregatorId = "aggregator_id"

            case payoutDetailsId = "payout_details_id"
        }

        public init(aggregatorFundId: Int? = nil, aggregatorId: Int? = nil, payoutDetailsId: Int? = nil) {
            self.aggregatorFundId = aggregatorFundId

            self.aggregatorId = aggregatorId

            self.payoutDetailsId = payoutDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorFundId = try container.decode(Int.self, forKey: .aggregatorFundId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payoutDetailsId = try container.decode(Int.self, forKey: .payoutDetailsId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorFundId, forKey: .aggregatorFundId)

            try? container.encode(aggregatorId, forKey: .aggregatorId)

            try? container.encode(payoutDetailsId, forKey: .payoutDetailsId)
        }
    }
}

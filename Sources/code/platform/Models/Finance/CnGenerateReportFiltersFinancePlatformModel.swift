

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnGenerateReportFilters
         Used By: Finance
     */

    class CnGenerateReportFilters: Codable {
        public var staffId: [String]?

        public var storeId: [Int]?

        public var orderingChannel: [String]?

        public var channelOfIssuance: [String]?

        public var typesOfTransaction: [String]?

        public var utilisation: [String]?

        public enum CodingKeys: String, CodingKey {
            case staffId = "staff_id"

            case storeId = "store_id"

            case orderingChannel = "ordering_channel"

            case channelOfIssuance = "channel_of_issuance"

            case typesOfTransaction = "types_of_transaction"

            case utilisation
        }

        public init(channelOfIssuance: [String]? = nil, orderingChannel: [String]? = nil, staffId: [String]? = nil, storeId: [Int]? = nil, typesOfTransaction: [String]? = nil, utilisation: [String]? = nil) {
            self.staffId = staffId

            self.storeId = storeId

            self.orderingChannel = orderingChannel

            self.channelOfIssuance = channelOfIssuance

            self.typesOfTransaction = typesOfTransaction

            self.utilisation = utilisation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                staffId = try container.decode([String].self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode([Int].self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannel = try container.decode([String].self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelOfIssuance = try container.decode([String].self, forKey: .channelOfIssuance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                typesOfTransaction = try container.decode([String].self, forKey: .typesOfTransaction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                utilisation = try container.decode([String].self, forKey: .utilisation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staffId, forKey: .staffId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(channelOfIssuance, forKey: .channelOfIssuance)

            try? container.encodeIfPresent(typesOfTransaction, forKey: .typesOfTransaction)

            try? container.encodeIfPresent(utilisation, forKey: .utilisation)
        }
    }
}


import Foundation
public extension PlatformClient {
    /*
         Model: ManifestFilter
         Used By: Order
     */

    class ManifestFilter: Codable {
        public var dpIds: String?

        public var storeName: String?

        public var dpName: String?

        public var dateRange: DateRange?

        public var salesChannelName: String?

        public var lane: String?

        public var salesChannels: String?

        public var stores: String?

        public enum CodingKeys: String, CodingKey {
            case dpIds = "dp_ids"

            case storeName = "store_name"

            case dpName = "dp_name"

            case dateRange = "date_range"

            case salesChannelName = "sales_channel_name"

            case lane

            case salesChannels = "sales_channels"

            case stores
        }

        public init(dateRange: DateRange? = nil, dpIds: String? = nil, dpName: String? = nil, lane: String? = nil, salesChannels: String? = nil, salesChannelName: String? = nil, stores: String? = nil, storeName: String? = nil) {
            self.dpIds = dpIds

            self.storeName = storeName

            self.dpName = dpName

            self.dateRange = dateRange

            self.salesChannelName = salesChannelName

            self.lane = lane

            self.salesChannels = salesChannels

            self.stores = stores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpIds = try container.decode(String.self, forKey: .dpIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpName = try container.decode(String.self, forKey: .dpName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                salesChannelName = try container.decode(String.self, forKey: .salesChannelName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                salesChannels = try container.decode(String.self, forKey: .salesChannels)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode(String.self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(salesChannelName, forKey: .salesChannelName)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(salesChannels, forKey: .salesChannels)

            try? container.encodeIfPresent(stores, forKey: .stores)
        }
    }
}

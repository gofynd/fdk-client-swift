

import Foundation
public extension PlatformClient {
    /*
         Model: ManifestFilter
         Used By: Order
     */

    class ManifestFilter: Codable {
        public var dateRange: DateRange?

        public var storeName: String?

        public var salesChannelName: String?

        public var stores: String?

        public var salesChannels: String?

        public var lane: String?

        public var dpName: String?

        public var dpIds: String?

        public enum CodingKeys: String, CodingKey {
            case dateRange = "date_range"

            case storeName = "store_name"

            case salesChannelName = "sales_channel_name"

            case stores

            case salesChannels = "sales_channels"

            case lane

            case dpName = "dp_name"

            case dpIds = "dp_ids"
        }

        public init(dateRange: DateRange? = nil, dpIds: String? = nil, dpName: String? = nil, lane: String? = nil, salesChannels: String? = nil, salesChannelName: String? = nil, stores: String? = nil, storeName: String? = nil) {
            self.dateRange = dateRange

            self.storeName = storeName

            self.salesChannelName = salesChannelName

            self.stores = stores

            self.salesChannels = salesChannels

            self.lane = lane

            self.dpName = dpName

            self.dpIds = dpIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

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
                salesChannelName = try container.decode(String.self, forKey: .salesChannelName)

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

            do {
                salesChannels = try container.decode(String.self, forKey: .salesChannels)

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
                dpName = try container.decode(String.self, forKey: .dpName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpIds = try container.decode(String.self, forKey: .dpIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(salesChannelName, forKey: .salesChannelName)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(salesChannels, forKey: .salesChannels)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
        }
    }
}


import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var lane: String

        public var dateRange: DateRange?

        public var dpIds: Int

        public var storeName: String

        public var logo: String?

        public var dpName: String

        public var stores: Int

        public enum CodingKeys: String, CodingKey {
            case lane

            case dateRange = "date_range"

            case dpIds = "dp_ids"

            case storeName = "store_name"

            case logo

            case dpName = "dp_name"

            case stores
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.lane = lane

            self.dateRange = dateRange

            self.dpIds = dpIds

            self.storeName = storeName

            self.logo = logo

            self.dpName = dpName

            self.stores = stores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            storeName = try container.decode(String.self, forKey: .storeName)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            stores = try container.decode(Int.self, forKey: .stores)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(stores, forKey: .stores)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var lane: String

        public var dateRange: DateRange?

        public var dpIds: Int

        public var storeName: String

        public var logo: String?

        public var dpName: String

        public var stores: Int

        public enum CodingKeys: String, CodingKey {
            case lane

            case dateRange = "date_range"

            case dpIds = "dp_ids"

            case storeName = "store_name"

            case logo

            case dpName = "dp_name"

            case stores
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.lane = lane

            self.dateRange = dateRange

            self.dpIds = dpIds

            self.storeName = storeName

            self.logo = logo

            self.dpName = dpName

            self.stores = stores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            storeName = try container.decode(String.self, forKey: .storeName)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            stores = try container.decode(Int.self, forKey: .stores)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(stores, forKey: .stores)
        }
    }
}

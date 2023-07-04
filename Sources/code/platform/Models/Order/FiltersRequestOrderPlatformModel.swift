

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var storeName: String

        public var stores: Int

        public var lane: String

        public var dateRange: DateRange?

        public var dpIds: Int

        public var logo: String?

        public var dpName: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case stores

            case lane

            case dateRange = "date_range"

            case dpIds = "dp_ids"

            case logo

            case dpName = "dp_name"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.storeName = storeName

            self.stores = stores

            self.lane = lane

            self.dateRange = dateRange

            self.dpIds = dpIds

            self.logo = logo

            self.dpName = dpName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            stores = try container.decode(Int.self, forKey: .stores)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var storeName: String

        public var stores: Int

        public var lane: String

        public var dateRange: DateRange?

        public var dpIds: Int

        public var logo: String?

        public var dpName: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case stores

            case lane

            case dateRange = "date_range"

            case dpIds = "dp_ids"

            case logo

            case dpName = "dp_name"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.storeName = storeName

            self.stores = stores

            self.lane = lane

            self.dateRange = dateRange

            self.dpIds = dpIds

            self.logo = logo

            self.dpName = dpName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            stores = try container.decode(Int.self, forKey: .stores)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)
        }
    }
}

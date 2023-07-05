

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var lane: String

        public var logo: String?

        public var dpIds: Int

        public var stores: Int

        public var dateRange: DateRange?

        public var storeName: String

        public var dpName: String

        public enum CodingKeys: String, CodingKey {
            case lane

            case logo

            case dpIds = "dp_ids"

            case stores

            case dateRange = "date_range"

            case storeName = "store_name"

            case dpName = "dp_name"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.lane = lane

            self.logo = logo

            self.dpIds = dpIds

            self.stores = stores

            self.dateRange = dateRange

            self.storeName = storeName

            self.dpName = dpName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            stores = try container.decode(Int.self, forKey: .stores)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeName = try container.decode(String.self, forKey: .storeName)

            dpName = try container.decode(String.self, forKey: .dpName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

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
        public var lane: String

        public var logo: String?

        public var dpIds: Int

        public var stores: Int

        public var dateRange: DateRange?

        public var storeName: String

        public var dpName: String

        public enum CodingKeys: String, CodingKey {
            case lane

            case logo

            case dpIds = "dp_ids"

            case stores

            case dateRange = "date_range"

            case storeName = "store_name"

            case dpName = "dp_name"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.lane = lane

            self.logo = logo

            self.dpIds = dpIds

            self.stores = stores

            self.dateRange = dateRange

            self.storeName = storeName

            self.dpName = dpName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            stores = try container.decode(Int.self, forKey: .stores)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeName = try container.decode(String.self, forKey: .storeName)

            dpName = try container.decode(String.self, forKey: .dpName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(dpName, forKey: .dpName)
        }
    }
}

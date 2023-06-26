

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var lane: String

        public var stores: Int

        public var logo: String?

        public var dpName: String

        public var dpIds: Int

        public var storeName: String

        public var dateRange: DateRange?

        public enum CodingKeys: String, CodingKey {
            case lane

            case stores

            case logo

            case dpName = "dp_name"

            case dpIds = "dp_ids"

            case storeName = "store_name"

            case dateRange = "date_range"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.lane = lane

            self.stores = stores

            self.logo = logo

            self.dpName = dpName

            self.dpIds = dpIds

            self.storeName = storeName

            self.dateRange = dateRange
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lane = try container.decode(String.self, forKey: .lane)

            stores = try container.decode(Int.self, forKey: .stores)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            storeName = try container.decode(String.self, forKey: .storeName)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)
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

        public var stores: Int

        public var logo: String?

        public var dpName: String

        public var dpIds: Int

        public var storeName: String

        public var dateRange: DateRange?

        public enum CodingKeys: String, CodingKey {
            case lane

            case stores

            case logo

            case dpName = "dp_name"

            case dpIds = "dp_ids"

            case storeName = "store_name"

            case dateRange = "date_range"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.lane = lane

            self.stores = stores

            self.logo = logo

            self.dpName = dpName

            self.dpIds = dpIds

            self.storeName = storeName

            self.dateRange = dateRange
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lane = try container.decode(String.self, forKey: .lane)

            stores = try container.decode(Int.self, forKey: .stores)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            storeName = try container.decode(String.self, forKey: .storeName)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)
        }
    }
}

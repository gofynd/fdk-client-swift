

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var stores: Int

        public var lane: String

        public var dpIds: Int

        public var dpName: String

        public var logo: String?

        public var storeName: String

        public var dateRange: DateRange?

        public enum CodingKeys: String, CodingKey {
            case stores

            case lane

            case dpIds = "dp_ids"

            case dpName = "dp_name"

            case logo

            case storeName = "store_name"

            case dateRange = "date_range"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.stores = stores

            self.lane = lane

            self.dpIds = dpIds

            self.dpName = dpName

            self.logo = logo

            self.storeName = storeName

            self.dateRange = dateRange
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stores = try container.decode(Int.self, forKey: .stores)

            lane = try container.decode(String.self, forKey: .lane)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            dpName = try container.decode(String.self, forKey: .dpName)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(logo, forKey: .logo)

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
        public var stores: Int

        public var lane: String

        public var dpIds: Int

        public var dpName: String

        public var logo: String?

        public var storeName: String

        public var dateRange: DateRange?

        public enum CodingKeys: String, CodingKey {
            case stores

            case lane

            case dpIds = "dp_ids"

            case dpName = "dp_name"

            case logo

            case storeName = "store_name"

            case dateRange = "date_range"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.stores = stores

            self.lane = lane

            self.dpIds = dpIds

            self.dpName = dpName

            self.logo = logo

            self.storeName = storeName

            self.dateRange = dateRange
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stores = try container.decode(Int.self, forKey: .stores)

            lane = try container.decode(String.self, forKey: .lane)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            dpName = try container.decode(String.self, forKey: .dpName)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)
        }
    }
}

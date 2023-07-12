

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var dpIds: Int

        public var dateRange: DateRange?

        public var dpName: String

        public var storeName: String

        public var lane: String

        public var stores: Int

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case dpIds = "dp_ids"

            case dateRange = "date_range"

            case dpName = "dp_name"

            case storeName = "store_name"

            case lane

            case stores

            case logo
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.dpIds = dpIds

            self.dateRange = dateRange

            self.dpName = dpName

            self.storeName = storeName

            self.lane = lane

            self.stores = stores

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            storeName = try container.decode(String.self, forKey: .storeName)

            lane = try container.decode(String.self, forKey: .lane)

            stores = try container.decode(Int.self, forKey: .stores)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FiltersRequest
         Used By: Order
     */

    class FiltersRequest: Codable {
        public var dpIds: Int

        public var dateRange: DateRange?

        public var dpName: String

        public var storeName: String

        public var lane: String

        public var stores: Int

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case dpIds = "dp_ids"

            case dateRange = "date_range"

            case dpName = "dp_name"

            case storeName = "store_name"

            case lane

            case stores

            case logo
        }

        public init(dateRange: DateRange? = nil, dpIds: Int, dpName: String, lane: String, logo: String? = nil, stores: Int, storeName: String) {
            self.dpIds = dpIds

            self.dateRange = dateRange

            self.dpName = dpName

            self.storeName = storeName

            self.lane = lane

            self.stores = stores

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dpIds = try container.decode(Int.self, forKey: .dpIds)

            do {
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpName = try container.decode(String.self, forKey: .dpName)

            storeName = try container.decode(String.self, forKey: .storeName)

            lane = try container.decode(String.self, forKey: .lane)

            stores = try container.decode(Int.self, forKey: .stores)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

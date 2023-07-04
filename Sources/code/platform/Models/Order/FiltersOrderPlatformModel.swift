

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Filters
         Used By: Order
     */

    class Filters: Codable {
        public var storeName: String?

        public var fromDate: String?

        public var selectedShipments: String?

        public var stores: Int?

        public var toDate: String?

        public var lane: String?

        public var dateRange: DateRange?

        public var dpIds: Int?

        public var logo: String?

        public var dpName: String?

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case fromDate = "from_date"

            case selectedShipments = "selected_shipments"

            case stores

            case toDate = "to_date"

            case lane

            case dateRange = "date_range"

            case dpIds = "dp_ids"

            case logo

            case dpName = "dp_name"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int? = nil, dpName: String? = nil, fromDate: String? = nil, lane: String? = nil, logo: String? = nil, selectedShipments: String? = nil, stores: Int? = nil, storeName: String? = nil, toDate: String? = nil) {
            self.storeName = storeName

            self.fromDate = fromDate

            self.selectedShipments = selectedShipments

            self.stores = stores

            self.toDate = toDate

            self.lane = lane

            self.dateRange = dateRange

            self.dpIds = dpIds

            self.logo = logo

            self.dpName = dpName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedShipments = try container.decode(String.self, forKey: .selectedShipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode(Int.self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

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
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpIds = try container.decode(Int.self, forKey: .dpIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(selectedShipments, forKey: .selectedShipments)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

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
         Model: Filters
         Used By: Order
     */

    class Filters: Codable {
        public var storeName: String?

        public var fromDate: String?

        public var selectedShipments: String?

        public var stores: Int?

        public var toDate: String?

        public var lane: String?

        public var dateRange: DateRange?

        public var dpIds: Int?

        public var logo: String?

        public var dpName: String?

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case fromDate = "from_date"

            case selectedShipments = "selected_shipments"

            case stores

            case toDate = "to_date"

            case lane

            case dateRange = "date_range"

            case dpIds = "dp_ids"

            case logo

            case dpName = "dp_name"
        }

        public init(dateRange: DateRange? = nil, dpIds: Int? = nil, dpName: String? = nil, fromDate: String? = nil, lane: String? = nil, logo: String? = nil, selectedShipments: String? = nil, stores: Int? = nil, storeName: String? = nil, toDate: String? = nil) {
            self.storeName = storeName

            self.fromDate = fromDate

            self.selectedShipments = selectedShipments

            self.stores = stores

            self.toDate = toDate

            self.lane = lane

            self.dateRange = dateRange

            self.dpIds = dpIds

            self.logo = logo

            self.dpName = dpName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedShipments = try container.decode(String.self, forKey: .selectedShipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode(Int.self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

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
                dateRange = try container.decode(DateRange.self, forKey: .dateRange)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpIds = try container.decode(Int.self, forKey: .dpIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(selectedShipments, forKey: .selectedShipments)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(dateRange, forKey: .dateRange)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)
        }
    }
}

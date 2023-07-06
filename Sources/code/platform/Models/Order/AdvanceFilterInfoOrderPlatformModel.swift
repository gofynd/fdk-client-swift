

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AdvanceFilterInfo
         Used By: Order
     */

    class AdvanceFilterInfo: Codable {
        public var actionCentre: [FiltersInfo]?

        public var filters: [FiltersInfo]?

        public var appliedFilters: [String: Any]?

        public var processed: [FiltersInfo]?

        public var page: [String: Any]?

        public var unfulfilled: [FiltersInfo]?

        public var returned: [FiltersInfo]?

        public enum CodingKeys: String, CodingKey {
            case actionCentre = "action_centre"

            case filters

            case appliedFilters = "applied_filters"

            case processed

            case page

            case unfulfilled

            case returned
        }

        public init(actionCentre: [FiltersInfo]? = nil, appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, page: [String: Any]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            self.actionCentre = actionCentre

            self.filters = filters

            self.appliedFilters = appliedFilters

            self.processed = processed

            self.page = page

            self.unfulfilled = unfulfilled

            self.returned = returned
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([FiltersInfo].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processed = try container.decode([FiltersInfo].self, forKey: .processed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode([String: Any].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unfulfilled = try container.decode([FiltersInfo].self, forKey: .unfulfilled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returned = try container.decode([FiltersInfo].self, forKey: .returned)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionCentre, forKey: .actionCentre)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)

            try? container.encodeIfPresent(processed, forKey: .processed)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(unfulfilled, forKey: .unfulfilled)

            try? container.encodeIfPresent(returned, forKey: .returned)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AdvanceFilterInfo
         Used By: Order
     */

    class AdvanceFilterInfo: Codable {
        public var actionCentre: [FiltersInfo]?

        public var filters: [FiltersInfo]?

        public var appliedFilters: [String: Any]?

        public var processed: [FiltersInfo]?

        public var page: [String: Any]?

        public var unfulfilled: [FiltersInfo]?

        public var returned: [FiltersInfo]?

        public enum CodingKeys: String, CodingKey {
            case actionCentre = "action_centre"

            case filters

            case appliedFilters = "applied_filters"

            case processed

            case page

            case unfulfilled

            case returned
        }

        public init(actionCentre: [FiltersInfo]? = nil, appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, page: [String: Any]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            self.actionCentre = actionCentre

            self.filters = filters

            self.appliedFilters = appliedFilters

            self.processed = processed

            self.page = page

            self.unfulfilled = unfulfilled

            self.returned = returned
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([FiltersInfo].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processed = try container.decode([FiltersInfo].self, forKey: .processed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode([String: Any].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unfulfilled = try container.decode([FiltersInfo].self, forKey: .unfulfilled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returned = try container.decode([FiltersInfo].self, forKey: .returned)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actionCentre, forKey: .actionCentre)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)

            try? container.encodeIfPresent(processed, forKey: .processed)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(unfulfilled, forKey: .unfulfilled)

            try? container.encodeIfPresent(returned, forKey: .returned)
        }
    }
}



import Foundation

public extension PlatformClient.Order {
    /*
         Model: AdvanceFilterInfo
         Used By: Order
     */

    class AdvanceFilterInfo: Codable {
        public var page: [String: Any]?

        public var filters: [FiltersInfo]?

        public var returned: [FiltersInfo]?

        public var unfulfilled: [FiltersInfo]?

        public var actionCentre: [FiltersInfo]?

        public var processed: [FiltersInfo]?

        public var appliedFilters: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case page

            case filters

            case returned

            case unfulfilled

            case actionCentre = "action_centre"

            case processed

            case appliedFilters = "applied_filters"
        }

        public init(actionCentre: [FiltersInfo]? = nil, appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, page: [String: Any]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            self.page = page

            self.filters = filters

            self.returned = returned

            self.unfulfilled = unfulfilled

            self.actionCentre = actionCentre

            self.processed = processed

            self.appliedFilters = appliedFilters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode([String: Any].self, forKey: .page)

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
                returned = try container.decode([FiltersInfo].self, forKey: .returned)

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
                actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)

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
                appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(unfulfilled, forKey: .unfulfilled)

            try? container.encodeIfPresent(actionCentre, forKey: .actionCentre)

            try? container.encodeIfPresent(processed, forKey: .processed)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AdvanceFilterInfo
         Used By: Order
     */

    class AdvanceFilterInfo: Codable {
        public var page: [String: Any]?

        public var filters: [FiltersInfo]?

        public var returned: [FiltersInfo]?

        public var unfulfilled: [FiltersInfo]?

        public var actionCentre: [FiltersInfo]?

        public var processed: [FiltersInfo]?

        public var appliedFilters: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case page

            case filters

            case returned

            case unfulfilled

            case actionCentre = "action_centre"

            case processed

            case appliedFilters = "applied_filters"
        }

        public init(actionCentre: [FiltersInfo]? = nil, appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, page: [String: Any]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            self.page = page

            self.filters = filters

            self.returned = returned

            self.unfulfilled = unfulfilled

            self.actionCentre = actionCentre

            self.processed = processed

            self.appliedFilters = appliedFilters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode([String: Any].self, forKey: .page)

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
                returned = try container.decode([FiltersInfo].self, forKey: .returned)

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
                actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)

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
                appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(unfulfilled, forKey: .unfulfilled)

            try? container.encodeIfPresent(actionCentre, forKey: .actionCentre)

            try? container.encodeIfPresent(processed, forKey: .processed)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)
        }
    }
}

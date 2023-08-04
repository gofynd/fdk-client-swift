

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GenerateReportCustomerCnResponseData
         Used By: Finance
     */

    class GenerateReportCustomerCnResponseData: Codable {
        public var items: [CnGenerateReportItems]?

        public var rowHeaderDisplayOrder: [String: Any]?

        public var endDate: String?

        public var page: Page?

        public var headers: [String]?

        public var primaryHeaders: [String]?

        public var allowedFilters: [String]?

        public var startDate: String?

        public var itemCount: Int?

        public enum CodingKeys: String, CodingKey {
            case items

            case rowHeaderDisplayOrder = "row_header_display_order"

            case endDate = "end_date"

            case page

            case headers

            case primaryHeaders = "primary_headers"

            case allowedFilters = "allowed_filters"

            case startDate = "start_date"

            case itemCount = "item_count"
        }

        public init(allowedFilters: [String]? = nil, endDate: String? = nil, headers: [String]? = nil, items: [CnGenerateReportItems]? = nil, itemCount: Int? = nil, page: Page? = nil, primaryHeaders: [String]? = nil, rowHeaderDisplayOrder: [String: Any]? = nil, startDate: String? = nil) {
            self.items = items

            self.rowHeaderDisplayOrder = rowHeaderDisplayOrder

            self.endDate = endDate

            self.page = page

            self.headers = headers

            self.primaryHeaders = primaryHeaders

            self.allowedFilters = allowedFilters

            self.startDate = startDate

            self.itemCount = itemCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CnGenerateReportItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rowHeaderDisplayOrder = try container.decode([String: Any].self, forKey: .rowHeaderDisplayOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endDate = try container.decode(String.self, forKey: .endDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode([String].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryHeaders = try container.decode([String].self, forKey: .primaryHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowedFilters = try container.decode([String].self, forKey: .allowedFilters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCount = try container.decode(Int.self, forKey: .itemCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(rowHeaderDisplayOrder, forKey: .rowHeaderDisplayOrder)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(primaryHeaders, forKey: .primaryHeaders)

            try? container.encodeIfPresent(allowedFilters, forKey: .allowedFilters)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(itemCount, forKey: .itemCount)
        }
    }
}

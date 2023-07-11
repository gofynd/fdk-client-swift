

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DownloadReportItems
         Used By: Finance
     */

    class DownloadReportItems: Codable {
        public var startDate: String?

        public var filters: GenerateReportFilters?

        public var meta: GenerateReportMeta?

        public var typeOfRequest: String?

        public var endDate: String?

        public var reportId: String?

        public enum CodingKeys: String, CodingKey {
            case startDate = "start_date"

            case filters

            case meta

            case typeOfRequest = "type_of_request"

            case endDate = "end_date"

            case reportId = "report_id"
        }

        public init(endDate: String? = nil, filters: GenerateReportFilters? = nil, meta: GenerateReportMeta? = nil, reportId: String? = nil, startDate: String? = nil, typeOfRequest: String? = nil) {
            self.startDate = startDate

            self.filters = filters

            self.meta = meta

            self.typeOfRequest = typeOfRequest

            self.endDate = endDate

            self.reportId = reportId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(GenerateReportFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(GenerateReportMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                typeOfRequest = try container.decode(String.self, forKey: .typeOfRequest)

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
                reportId = try container.decode(String.self, forKey: .reportId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(typeOfRequest, forKey: .typeOfRequest)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(reportId, forKey: .reportId)
        }
    }
}

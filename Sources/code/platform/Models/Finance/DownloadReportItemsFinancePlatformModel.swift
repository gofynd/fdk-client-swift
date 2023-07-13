

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DownloadReportItems
         Used By: Finance
     */

    class DownloadReportItems: Codable {
        public var endDate: String?

        public var startDate: String?

        public var filters: GenerateReportFilters?

        public var meta: GenerateReportMeta?

        public var reportId: String?

        public var typeOfRequest: String?

        public enum CodingKeys: String, CodingKey {
            case endDate = "end_date"

            case startDate = "start_date"

            case filters

            case meta

            case reportId = "report_id"

            case typeOfRequest = "type_of_request"
        }

        public init(endDate: String? = nil, filters: GenerateReportFilters? = nil, meta: GenerateReportMeta? = nil, reportId: String? = nil, startDate: String? = nil, typeOfRequest: String? = nil) {
            self.endDate = endDate

            self.startDate = startDate

            self.filters = filters

            self.meta = meta

            self.reportId = reportId

            self.typeOfRequest = typeOfRequest
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                endDate = try container.decode(String.self, forKey: .endDate)

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
                reportId = try container.decode(String.self, forKey: .reportId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(reportId, forKey: .reportId)

            try? container.encodeIfPresent(typeOfRequest, forKey: .typeOfRequest)
        }
    }
}

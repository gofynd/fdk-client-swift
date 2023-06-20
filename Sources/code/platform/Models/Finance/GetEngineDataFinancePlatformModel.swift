

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetEngineData
         Used By: Finance
     */

    class GetEngineData: Codable {
        public var tableName: String?

        public var project: [String]?

        public var filters: GetEngineFilters?

        public enum CodingKeys: String, CodingKey {
            case tableName = "table_name"

            case project

            case filters
        }

        public init(filters: GetEngineFilters? = nil, project: [String]? = nil, tableName: String? = nil) {
            self.tableName = tableName

            self.project = project

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tableName = try container.decode(String.self, forKey: .tableName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                project = try container.decode([String].self, forKey: .project)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(GetEngineFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tableName, forKey: .tableName)

            try? container.encodeIfPresent(project, forKey: .project)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}

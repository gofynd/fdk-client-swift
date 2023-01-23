

import Foundation
public extension PlatformClient {
    /*
         Model: GetLogsListReq
         Used By: Analytics
     */

    class GetLogsListReq: Codable {
        public var marketplaceName: String?

        public var startDate: String?

        public var companyId: String?

        public var endDate: String?

        public enum CodingKeys: String, CodingKey {
            case marketplaceName = "marketplace_name"

            case startDate = "start_date"

            case companyId = "company_id"

            case endDate = "end_date"
        }

        public init(companyId: String? = nil, endDate: String? = nil, marketplaceName: String? = nil, startDate: String? = nil) {
            self.marketplaceName = marketplaceName

            self.startDate = startDate

            self.companyId = companyId

            self.endDate = endDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketplaceName = try container.decode(String.self, forKey: .marketplaceName)

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
                companyId = try container.decode(String.self, forKey: .companyId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceName, forKey: .marketplaceName)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}

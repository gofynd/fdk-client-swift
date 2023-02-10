

import Foundation
public extension PlatformClient {
    /*
         Model: HolidayDateSerializer
         Used By: CompanyProfile
     */

    class HolidayDateSerializer: Codable {
        public var startDate: String

        public var endDate: String

        public enum CodingKeys: String, CodingKey {
            case startDate = "start_date"

            case endDate = "end_date"
        }

        public init(endDate: String, startDate: String) {
            self.startDate = startDate

            self.endDate = endDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            startDate = try container.decode(String.self, forKey: .startDate)

            endDate = try container.decode(String.self, forKey: .endDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}

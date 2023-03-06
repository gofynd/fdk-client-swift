

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: HolidayDateSerializer
         Used By: CompanyProfile
     */

    class HolidayDateSerializer: Codable {
        public var endDate: String

        public var startDate: String

        public enum CodingKeys: String, CodingKey {
            case endDate = "end_date"

            case startDate = "start_date"
        }

        public init(endDate: String, startDate: String) {
            self.endDate = endDate

            self.startDate = startDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            endDate = try container.decode(String.self, forKey: .endDate)

            startDate = try container.decode(String.self, forKey: .startDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(startDate, forKey: .startDate)
        }
    }
}

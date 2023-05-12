

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: HolidaySchemaSerializer
         Used By: CompanyProfile
     */

    class HolidaySchemaSerializer: Codable {
        public var holidayType: String

        public var date: HolidayDateSerializer

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case holidayType = "holiday_type"

            case date

            case title
        }

        public init(date: HolidayDateSerializer, holidayType: String, title: String) {
            self.holidayType = holidayType

            self.date = date

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            holidayType = try container.decode(String.self, forKey: .holidayType)

            date = try container.decode(HolidayDateSerializer.self, forKey: .date)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(holidayType, forKey: .holidayType)

            try? container.encodeIfPresent(date, forKey: .date)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}

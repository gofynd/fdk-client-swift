

import Foundation
public extension PlatformClient {
    /*
         Model: HolidaySchemaSerializer
         Used By: CompanyProfile
     */

    class HolidaySchemaSerializer: Codable {
        public var title: String

        public var holidayType: String

        public var date: HolidayDateSerializer

        public enum CodingKeys: String, CodingKey {
            case title

            case holidayType = "holiday_type"

            case date
        }

        public init(date: HolidayDateSerializer, holidayType: String, title: String) {
            self.title = title

            self.holidayType = holidayType

            self.date = date
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            holidayType = try container.decode(String.self, forKey: .holidayType)

            date = try container.decode(HolidayDateSerializer.self, forKey: .date)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(holidayType, forKey: .holidayType)

            try? container.encodeIfPresent(date, forKey: .date)
        }
    }
}

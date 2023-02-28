

import Foundation
public extension PlatformClient {
    /*
         Model: HolidaySchemaSerializer
         Used By: CompanyProfile
     */

    class HolidaySchemaSerializer: Codable {
        public var holidayType: String

        public var title: String

        public var date: HolidayDateSerializer

        public enum CodingKeys: String, CodingKey {
            case holidayType = "holiday_type"

            case title

            case date
        }

        public init(date: HolidayDateSerializer, holidayType: String, title: String) {
            self.holidayType = holidayType

            self.title = title

            self.date = date
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            holidayType = try container.decode(String.self, forKey: .holidayType)

            title = try container.decode(String.self, forKey: .title)

            date = try container.decode(HolidayDateSerializer.self, forKey: .date)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(holidayType, forKey: .holidayType)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(date, forKey: .date)
        }
    }
}

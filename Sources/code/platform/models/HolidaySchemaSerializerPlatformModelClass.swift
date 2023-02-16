

import Foundation
public extension PlatformClient {
    /*
         Model: HolidaySchemaSerializer
         Used By: CompanyProfile
     */

    class HolidaySchemaSerializer: Codable {
        public var title: String

        public var date: HolidayDateSerializer

        public var holidayType: String

        public enum CodingKeys: String, CodingKey {
            case title

            case date

            case holidayType = "holiday_type"
        }

        public init(date: HolidayDateSerializer, holidayType: String, title: String) {
            self.title = title

            self.date = date

            self.holidayType = holidayType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            date = try container.decode(HolidayDateSerializer.self, forKey: .date)

            holidayType = try container.decode(String.self, forKey: .holidayType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(date, forKey: .date)

            try? container.encodeIfPresent(holidayType, forKey: .holidayType)
        }
    }
}

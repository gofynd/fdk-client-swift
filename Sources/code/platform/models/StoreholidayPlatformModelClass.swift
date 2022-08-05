

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday
         Used By: CompanyProfile
     */

    class Storeholiday: Codable {
        public var name: String

        public var type: String

        public var year: Int

        public var slug: String

        public var startDate: String

        public var endDate: String

        public enum CodingKeys: String, CodingKey {
            case name

            case type

            case year

            case slug

            case startDate = "start_date"

            case endDate = "end_date"
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.name = name

            self.type = type

            self.year = year

            self.slug = slug

            self.startDate = startDate

            self.endDate = endDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            year = try container.decode(Int.self, forKey: .year)

            slug = try container.decode(String.self, forKey: .slug)

            startDate = try container.decode(String.self, forKey: .startDate)

            endDate = try container.decode(String.self, forKey: .endDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday
         Used By: CompanyProfile
     */

    class Storeholiday: Codable {
        public var startDate: String

        public var year: Int

        public var type: String

        public var slug: String

        public var name: String

        public var endDate: String

        public enum CodingKeys: String, CodingKey {
            case startDate = "start_date"

            case year

            case type

            case slug

            case name

            case endDate = "end_date"
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.startDate = startDate

            self.year = year

            self.type = type

            self.slug = slug

            self.name = name

            self.endDate = endDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            startDate = try container.decode(String.self, forKey: .startDate)

            year = try container.decode(Int.self, forKey: .year)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            endDate = try container.decode(String.self, forKey: .endDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}

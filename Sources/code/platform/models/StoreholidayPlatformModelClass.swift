

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday
         Used By: CompanyProfile
     */

    class Storeholiday: Codable {
        public var type: String

        public var name: String

        public var startDate: String

        public var year: Int

        public var endDate: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case type

            case name

            case startDate = "start_date"

            case year

            case endDate = "end_date"

            case slug
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.type = type

            self.name = name

            self.startDate = startDate

            self.year = year

            self.endDate = endDate

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            startDate = try container.decode(String.self, forKey: .startDate)

            year = try container.decode(Int.self, forKey: .year)

            endDate = try container.decode(String.self, forKey: .endDate)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

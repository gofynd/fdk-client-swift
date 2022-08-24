

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday
         Used By: CompanyProfile
     */

    class Storeholiday: Codable {
        public var type: String

        public var startDate: String

        public var name: String

        public var slug: String

        public var endDate: String

        public var year: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case startDate = "start_date"

            case name

            case slug

            case endDate = "end_date"

            case year
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.type = type

            self.startDate = startDate

            self.name = name

            self.slug = slug

            self.endDate = endDate

            self.year = year
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            startDate = try container.decode(String.self, forKey: .startDate)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            endDate = try container.decode(String.self, forKey: .endDate)

            year = try container.decode(Int.self, forKey: .year)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(year, forKey: .year)
        }
    }
}

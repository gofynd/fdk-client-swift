

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday
         Used By: CompanyProfile
     */

    class Storeholiday: Codable {
        public var slug: String

        public var type: String

        public var endDate: String

        public var name: String

        public var startDate: String

        public var year: Int

        public enum CodingKeys: String, CodingKey {
            case slug

            case type

            case endDate = "end_date"

            case name

            case startDate = "start_date"

            case year
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.slug = slug

            self.type = type

            self.endDate = endDate

            self.name = name

            self.startDate = startDate

            self.year = year
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            type = try container.decode(String.self, forKey: .type)

            endDate = try container.decode(String.self, forKey: .endDate)

            name = try container.decode(String.self, forKey: .name)

            startDate = try container.decode(String.self, forKey: .startDate)

            year = try container.decode(Int.self, forKey: .year)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(year, forKey: .year)
        }
    }
}

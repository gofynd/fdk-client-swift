

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday1
         Used By: CompanyProfile
     */

    class Storeholiday1: Codable {
        public var year: Int

        public var endDate: String

        public var startDate: String

        public var name: String

        public var type: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case year

            case endDate = "end_date"

            case startDate = "start_date"

            case name

            case type

            case slug
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.year = year

            self.endDate = endDate

            self.startDate = startDate

            self.name = name

            self.type = type

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            year = try container.decode(Int.self, forKey: .year)

            endDate = try container.decode(String.self, forKey: .endDate)

            startDate = try container.decode(String.self, forKey: .startDate)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

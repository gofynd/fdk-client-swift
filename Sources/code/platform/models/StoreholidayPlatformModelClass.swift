

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday
         Used By: CompanyProfile
     */

    class Storeholiday: Codable {
        public var endDate: String

        public var year: Int

        public var name: String

        public var slug: String

        public var startDate: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case endDate = "end_date"

            case year

            case name

            case slug

            case startDate = "start_date"

            case type
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.endDate = endDate

            self.year = year

            self.name = name

            self.slug = slug

            self.startDate = startDate

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            endDate = try container.decode(String.self, forKey: .endDate)

            year = try container.decode(Int.self, forKey: .year)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            startDate = try container.decode(String.self, forKey: .startDate)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

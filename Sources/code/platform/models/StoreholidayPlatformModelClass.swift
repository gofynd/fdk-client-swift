

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday
         Used By: CompanyProfile
     */

    class Storeholiday: Codable {
        public var endDate: String

        public var name: String

        public var year: Int

        public var startDate: String

        public var slug: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case endDate = "end_date"

            case name

            case year

            case startDate = "start_date"

            case slug

            case type
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.endDate = endDate

            self.name = name

            self.year = year

            self.startDate = startDate

            self.slug = slug

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            endDate = try container.decode(String.self, forKey: .endDate)

            name = try container.decode(String.self, forKey: .name)

            year = try container.decode(Int.self, forKey: .year)

            startDate = try container.decode(String.self, forKey: .startDate)

            slug = try container.decode(String.self, forKey: .slug)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

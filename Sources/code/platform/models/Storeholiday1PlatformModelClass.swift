

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday1
         Used By: CompanyProfile
     */

    class Storeholiday1: Codable {
        public var name: String

        public var startDate: String

        public var endDate: String

        public var type: String

        public var slug: String

        public var year: Int

        public enum CodingKeys: String, CodingKey {
            case name

            case startDate = "start_date"

            case endDate = "end_date"

            case type

            case slug

            case year
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.name = name

            self.startDate = startDate

            self.endDate = endDate

            self.type = type

            self.slug = slug

            self.year = year
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            startDate = try container.decode(String.self, forKey: .startDate)

            endDate = try container.decode(String.self, forKey: .endDate)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)

            year = try container.decode(Int.self, forKey: .year)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(year, forKey: .year)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday1
         Used By: CompanyProfile
     */

    class Storeholiday1: Codable {
        public var name: String

        public var type: String

        public var slug: String

        public var endDate: String

        public var year: Int

        public var startDate: String

        public enum CodingKeys: String, CodingKey {
            case name

            case type

            case slug

            case endDate = "end_date"

            case year

            case startDate = "start_date"
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.name = name

            self.type = type

            self.slug = slug

            self.endDate = endDate

            self.year = year

            self.startDate = startDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)

            endDate = try container.decode(String.self, forKey: .endDate)

            year = try container.decode(Int.self, forKey: .year)

            startDate = try container.decode(String.self, forKey: .startDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(startDate, forKey: .startDate)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday1
         Used By: CompanyProfile
     */

    class Storeholiday1: Codable {
        public var slug: String

        public var name: String

        public var type: String

        public var endDate: String

        public var year: Int

        public var startDate: String

        public enum CodingKeys: String, CodingKey {
            case slug

            case name

            case type

            case endDate = "end_date"

            case year

            case startDate = "start_date"
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.slug = slug

            self.name = name

            self.type = type

            self.endDate = endDate

            self.year = year

            self.startDate = startDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            endDate = try container.decode(String.self, forKey: .endDate)

            year = try container.decode(Int.self, forKey: .year)

            startDate = try container.decode(String.self, forKey: .startDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(startDate, forKey: .startDate)
        }
    }
}

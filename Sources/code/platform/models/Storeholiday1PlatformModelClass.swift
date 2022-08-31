

import Foundation
public extension PlatformClient {
    /*
         Model: Storeholiday1
         Used By: CompanyProfile
     */

    class Storeholiday1: Codable {
        public var startDate: String

        public var year: Int

        public var endDate: String

        public var name: String

        public var slug: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case startDate = "start_date"

            case year

            case endDate = "end_date"

            case name

            case slug

            case type
        }

        public init(endDate: String, name: String, slug: String, startDate: String, type: String, year: Int) {
            self.startDate = startDate

            self.year = year

            self.endDate = endDate

            self.name = name

            self.slug = slug

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            startDate = try container.decode(String.self, forKey: .startDate)

            year = try container.decode(Int.self, forKey: .year)

            endDate = try container.decode(String.self, forKey: .endDate)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(year, forKey: .year)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}



import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ApplicationItemMOQ
         Used By: Catalog
     */

    class ApplicationItemMOQ: Codable {
        public var maximum: Int?

        public var minimum: Int?

        public var incrementUnit: Int?

        public enum CodingKeys: String, CodingKey {
            case maximum

            case minimum

            case incrementUnit = "increment_unit"
        }

        public init(incrementUnit: Int? = nil, maximum: Int? = nil, minimum: Int? = nil) {
            self.maximum = maximum

            self.minimum = minimum

            self.incrementUnit = incrementUnit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maximum = try container.decode(Int.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minimum = try container.decode(Int.self, forKey: .minimum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                incrementUnit = try container.decode(Int.self, forKey: .incrementUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maximum, forKey: .maximum)

            try? container.encodeIfPresent(minimum, forKey: .minimum)

            try? container.encodeIfPresent(incrementUnit, forKey: .incrementUnit)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ApplicationItemMOQ
         Used By: Catalog
     */

    class ApplicationItemMOQ: Codable {
        public var maximum: Int?

        public var minimum: Int?

        public var incrementUnit: Int?

        public enum CodingKeys: String, CodingKey {
            case maximum

            case minimum

            case incrementUnit = "increment_unit"
        }

        public init(incrementUnit: Int? = nil, maximum: Int? = nil, minimum: Int? = nil) {
            self.maximum = maximum

            self.minimum = minimum

            self.incrementUnit = incrementUnit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maximum = try container.decode(Int.self, forKey: .maximum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minimum = try container.decode(Int.self, forKey: .minimum)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                incrementUnit = try container.decode(Int.self, forKey: .incrementUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maximum, forKey: .maximum)

            try? container.encodeIfPresent(minimum, forKey: .minimum)

            try? container.encodeIfPresent(incrementUnit, forKey: .incrementUnit)
        }
    }
}

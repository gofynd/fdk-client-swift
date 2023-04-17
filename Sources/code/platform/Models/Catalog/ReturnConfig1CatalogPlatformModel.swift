

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ReturnConfig1
         Used By: Catalog
     */

    class ReturnConfig1: Codable {
        public var unit: String?

        public var time: Int?

        public var returnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case unit

            case time

            case returnable
        }

        public init(returnable: Bool? = nil, time: Int? = nil, unit: String? = nil) {
            self.unit = unit

            self.time = time

            self.returnable = returnable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                time = try container.decode(Int.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnable = try container.decode(Bool.self, forKey: .returnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(returnable, forKey: .returnable)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ReturnConfig1
         Used By: Catalog
     */

    class ReturnConfig1: Codable {
        public var unit: String?

        public var time: Int?

        public var returnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case unit

            case time

            case returnable
        }

        public init(returnable: Bool? = nil, time: Int? = nil, unit: String? = nil) {
            self.unit = unit

            self.time = time

            self.returnable = returnable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                time = try container.decode(Int.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnable = try container.decode(Bool.self, forKey: .returnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(returnable, forKey: .returnable)
        }
    }
}



import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ZoneMappingType
         Used By: Serviceability
     */

    class ZoneMappingType: Codable {
        public var state: [String]?

        public var pincode: [String]?

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case state

            case pincode

            case country
        }

        public init(country: String, pincode: [String]? = nil, state: [String]? = nil) {
            self.state = state

            self.pincode = pincode

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode([String].self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode([String].self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ZoneMappingType
         Used By: Serviceability
     */

    class ZoneMappingType: Codable {
        public var state: [String]?

        public var pincode: [String]?

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case state

            case pincode

            case country
        }

        public init(country: String, pincode: [String]? = nil, state: [String]? = nil) {
            self.state = state

            self.pincode = pincode

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode([String].self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode([String].self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
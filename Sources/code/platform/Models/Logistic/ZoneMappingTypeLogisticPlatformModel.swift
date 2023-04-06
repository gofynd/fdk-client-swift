

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ZoneMappingType
         Used By: Logistic
     */

    class ZoneMappingType: Codable {
        public var pincode: [String]?

        public var country: String

        public var state: [String]?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case country

            case state
        }

        public init(country: String, pincode: [String]? = nil, state: [String]? = nil) {
            self.pincode = pincode

            self.country = country

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode([String].self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                state = try container.decode([String].self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ZoneMappingType
         Used By: Logistic
     */

    class ZoneMappingType: Codable {
        public var pincode: [String]?

        public var country: String

        public var state: [String]?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case country

            case state
        }

        public init(country: String, pincode: [String]? = nil, state: [String]? = nil) {
            self.pincode = pincode

            self.country = country

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode([String].self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                state = try container.decode([String].self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

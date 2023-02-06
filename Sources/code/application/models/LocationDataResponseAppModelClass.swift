

import Foundation
public extension ApplicationClient {
    /*
         Model: LocationDataResponse
         Used By: Logistic
     */
    class LocationDataResponse: Codable {
        public var name: String?

        public var city: String?

        public var country: String?

        public var location: LocationDetailResponse?

        public enum CodingKeys: String, CodingKey {
            case name

            case city

            case country

            case location
        }

        public init(city: String? = nil, country: String? = nil, location: LocationDetailResponse? = nil, name: String? = nil) {
            self.name = name

            self.city = city

            self.country = country

            self.location = location
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                location = try container.decode(LocationDetailResponse.self, forKey: .location)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(location, forKey: .location)
        }
    }
}

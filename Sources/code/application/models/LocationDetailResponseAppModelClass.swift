

import Foundation
public extension ApplicationClient {
    /*
         Model: LocationDetailResponse
         Used By: Logistic
     */
    class LocationDetailResponse: Codable {
        public var longitude: String?

        public var latitude: String?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case latitude
        }

        public init(latitude: String? = nil, longitude: String? = nil) {
            self.longitude = longitude

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                longitude = try container.decode(String.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latitude = try container.decode(String.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}

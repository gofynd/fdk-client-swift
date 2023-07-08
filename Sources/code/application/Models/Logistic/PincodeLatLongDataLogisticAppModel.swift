

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeLatLongData
         Used By: Logistic
     */
    class PincodeLatLongData: Codable {
        public var type: String?

        public var coordinates: [String]?

        public enum CodingKeys: String, CodingKey {
            case type

            case coordinates
        }

        public init(coordinates: [String]? = nil, type: String? = nil) {
            self.type = type

            self.coordinates = coordinates
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coordinates = try container.decode([String].self, forKey: .coordinates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(coordinates, forKey: .coordinates)
        }
    }
}



import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeMetaResponse
         Used By: Logistic
     */
    class PincodeMetaResponse: Codable {
        public var internalZoneId: Int?

        public var zone: String?

        public enum CodingKeys: String, CodingKey {
            case internalZoneId = "internal_zone_id"

            case zone
        }

        public init(internalZoneId: Int? = nil, zone: String? = nil) {
            self.internalZoneId = internalZoneId

            self.zone = zone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                internalZoneId = try container.decode(Int.self, forKey: .internalZoneId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                zone = try container.decode(String.self, forKey: .zone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(internalZoneId, forKey: .internalZoneId)

            try? container.encodeIfPresent(zone, forKey: .zone)
        }
    }
}

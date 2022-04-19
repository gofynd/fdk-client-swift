import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ZoneUpdateRequest
         Used By: Serviceability
     */

    class ZoneUpdateRequest: Codable {
        public var data: UpdateZoneData

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case data

            case identifier
        }

        public init(data: UpdateZoneData, identifier: String) {
            self.data = data

            self.identifier = identifier
        }

        public func duplicate() -> ZoneUpdateRequest {
            let dict = self.dictionary!
            let copy = ZoneUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(UpdateZoneData.self, forKey: .data)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

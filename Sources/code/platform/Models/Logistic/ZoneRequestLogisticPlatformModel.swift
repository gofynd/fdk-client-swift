

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ZoneRequest
         Used By: Logistic
     */

    class ZoneRequest: Codable {
        public var data: CreateZoneData

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case data

            case identifier
        }

        public init(data: CreateZoneData, identifier: String) {
            self.data = data

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(CreateZoneData.self, forKey: .data)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ZoneRequest
         Used By: Logistic
     */

    class ZoneRequest: Codable {
        public var data: CreateZoneData

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case data

            case identifier
        }

        public init(data: CreateZoneData, identifier: String) {
            self.data = data

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(CreateZoneData.self, forKey: .data)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}



import Foundation
public extension PlatformClient {
    /*
         Model: DomainStatusResponse
         Used By: Configuration
     */

    class DomainStatusResponse: Codable {
        public var connected: Bool?

        public var status: [DomainStatus]?

        public enum CodingKeys: String, CodingKey {
            case connected

            case status
        }

        public init(connected: Bool? = nil, status: [DomainStatus]? = nil) {
            self.connected = connected

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                connected = try container.decode(Bool.self, forKey: .connected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode([DomainStatus].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(connected, forKey: .connected)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

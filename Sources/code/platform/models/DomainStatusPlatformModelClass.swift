

import Foundation
public extension PlatformClient {
    /*
         Model: DomainStatus
         Used By: Configuration
     */

    class DomainStatus: Codable {
        public var display: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case display

            case status
        }

        public init(display: String? = nil, status: Bool? = nil) {
            self.display = display

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

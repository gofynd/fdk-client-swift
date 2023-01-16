

import Foundation
public extension ApplicationClient {
    /*
         Model: EpaylaterBannerData
         Used By: Payment
     */
    class EpaylaterBannerData: Codable {
        public var display: Bool

        public var status: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case status

            case message
        }

        public init(display: Bool, message: String? = nil, status: String? = nil) {
            self.display = display

            self.status = status

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            display = try container.decode(Bool.self, forKey: .display)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

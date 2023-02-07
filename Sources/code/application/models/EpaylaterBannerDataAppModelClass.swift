

import Foundation
public extension ApplicationClient {
    /*
         Model: EpaylaterBannerData
         Used By: Payment
     */
    class EpaylaterBannerData: Codable {
        public var message: String?

        public var display: Bool

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case display

            case status
        }

        public init(display: Bool, message: String? = nil, status: String? = nil) {
            self.message = message

            self.display = display

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(Bool.self, forKey: .display)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

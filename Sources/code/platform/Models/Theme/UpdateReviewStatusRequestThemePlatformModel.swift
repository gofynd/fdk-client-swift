

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: UpdateReviewStatusRequest
         Used By: Theme
     */

    class UpdateReviewStatusRequest: Codable {
        public var status: String

        public enum CodingKeys: String, CodingKey {
            case status
        }

        public init(status: String) {
            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: UpdateReviewStatusRequest
         Used By: Theme
     */

    class UpdateReviewStatusRequest: Codable {
        public var status: String

        public enum CodingKeys: String, CodingKey {
            case status
        }

        public init(status: String) {
            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
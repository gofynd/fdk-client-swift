

import Foundation
public extension ApplicationClient {
    /*
         Model: Device
         Used By: Configuration
     */
    class Device: Codable {
        public var build: Int?

        public var model: String?

        public var os: OS

        public enum CodingKeys: String, CodingKey {
            case build

            case model

            case os
        }

        public init(build: Int? = nil, model: String? = nil, os: OS) {
            self.build = build

            self.model = model

            self.os = os
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                build = try container.decode(Int.self, forKey: .build)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                model = try container.decode(String.self, forKey: .model)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            os = try container.decode(OS.self, forKey: .os)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(build, forKey: .build)

            try? container.encodeIfPresent(model, forKey: .model)

            try? container.encodeIfPresent(os, forKey: .os)
        }
    }
}

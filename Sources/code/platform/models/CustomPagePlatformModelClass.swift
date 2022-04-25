

import Foundation
public extension PlatformClient {
    /*
         Model: CustomPage
         Used By: Content
     */

    class CustomPage: Codable {
        public var data: CustomPageSchema?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: CustomPageSchema? = nil) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(CustomPageSchema.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}



import Foundation
public extension ApplicationClient {
    /*
         Model: ReturnMetaData
         Used By: Order
     */
    class ReturnMetaData: Codable {
        public var images: [ReturnMetaDataImages]?

        public enum CodingKeys: String, CodingKey {
            case images
        }

        public init(images: [ReturnMetaDataImages]? = nil) {
            self.images = images
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                images = try container.decode([ReturnMetaDataImages].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(images, forKey: .images)
        }
    }
}
